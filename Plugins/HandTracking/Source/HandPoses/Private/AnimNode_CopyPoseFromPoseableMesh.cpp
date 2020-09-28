// Copyright Epic Games, Inc. All Rights Reserved.

#include "AnimNode_CopyPoseFromPoseableMesh.h"
#include "Animation/AnimInstanceProxy.h"
#include "Animation/AnimTrace.h"

/////////////////////////////////////////////////////
// FAnimNode_CopyPoseFromPoseableMesh

FAnimNode_CopyPoseFromPoseableMesh::FAnimNode_CopyPoseFromPoseableMesh()
	: SourceMeshComponent(nullptr)
{
}

void FAnimNode_CopyPoseFromPoseableMesh::Initialize_AnyThread(const FAnimationInitializeContext& Context)
{
	DECLARE_SCOPE_HIERARCHICAL_COUNTER_ANIMNODE(Initialize_AnyThread)
	FAnimNode_Base::Initialize_AnyThread(Context);

	// Initial update of the node, so we dont have a frame-delay on setup
	GetEvaluateGraphExposedInputs().Execute(Context);
	RefreshMeshComponent(Context.AnimInstanceProxy->GetSkelMeshComponent());
}

void FAnimNode_CopyPoseFromPoseableMesh::CacheBones_AnyThread(const FAnimationCacheBonesContext& Context)
{
	DECLARE_SCOPE_HIERARCHICAL_COUNTER_ANIMNODE(CacheBones_AnyThread)

}

void FAnimNode_CopyPoseFromPoseableMesh::RefreshMeshComponent(USkinnedMeshComponent* TargetMeshComponent)
{
	auto ResetMeshComponent = [this](USkinnedMeshComponent* InMeshComponent, USkinnedMeshComponent* InTargetMeshComponent)
	{
		USkinnedMeshComponent* CurrentMeshComponent = CurrentlyUsedSourceMeshComponent.Get();
		// if current mesh exists, but not same as input mesh
		if (CurrentMeshComponent)
		{
			// if component has been changed, reinitialize
			if (CurrentMeshComponent != InMeshComponent)
			{
				ReinitializeMeshComponent(InMeshComponent, InTargetMeshComponent);
			}
			// if component is still same but mesh has been changed, we have to reinitialize
			else if (CurrentMeshComponent->SkeletalMesh != CurrentlyUsedSourceMesh.Get())
			{
				ReinitializeMeshComponent(InMeshComponent, InTargetMeshComponent);
			}
			else if (InTargetMeshComponent)
			{
				// see if target mesh has changed
				if (InTargetMeshComponent->SkeletalMesh != CurrentlyUsedTargetMesh.Get())
				{
					ReinitializeMeshComponent(InMeshComponent, InTargetMeshComponent);
				}
			}
			else if (CurrentTargetToSourceBoneNamemap.Num() != TargetToSourceBoneNameMap.Num()) {
				ReinitializeMeshComponent(InMeshComponent, InTargetMeshComponent);
			}
		}
		// if not valid, but input mesh is
		else if (!CurrentMeshComponent && InMeshComponent)
		{
			ReinitializeMeshComponent(InMeshComponent, InTargetMeshComponent);
		}
	};

	if(SourceMeshComponent.IsValid())
	{
		ResetMeshComponent(SourceMeshComponent.Get(), TargetMeshComponent);
	}
	else
	{
		CurrentlyUsedSourceMeshComponent.Reset();
	}
}

void FAnimNode_CopyPoseFromPoseableMesh::PreUpdate(const UAnimInstance* InAnimInstance)
{
	QUICK_SCOPE_CYCLE_COUNTER(FAnimNode_CopyPoseFromPoseableMesh_PreUpdate);

	USkinnedMeshComponent* CurrentMeshComponent = CurrentlyUsedSourceMeshComponent.IsValid() ? CurrentlyUsedSourceMeshComponent.Get() : nullptr;

	if (CurrentMeshComponent && CurrentMeshComponent->SkeletalMesh && CurrentMeshComponent->IsRegistered())
	{
		//// If our source is running under master-pose, then get bone data from there
		//if(USkeletalMeshComponent* MasterPoseComponent = Cast<USkeletalMeshComponent>(CurrentMeshComponent->MasterPoseComponent.Get()))
		//{
		//	CurrentMeshComponent = MasterPoseComponent;
		//}

		// re-check mesh component validity as it may have changed to master
		if(CurrentMeshComponent->SkeletalMesh && CurrentMeshComponent->IsRegistered())
		{
			const bool bUROInSync = CurrentMeshComponent->ShouldUseUpdateRateOptimizations() && CurrentMeshComponent->AnimUpdateRateParams != nullptr && CurrentMeshComponent->AnimUpdateRateParams == InAnimInstance->GetSkelMeshComponent()->AnimUpdateRateParams;
			const bool bUsingExternalInterpolation = CurrentMeshComponent->IsUsingExternalInterpolation();
			const TArray<FTransform>& CachedComponentSpaceTransforms = CurrentMeshComponent->GetComponentSpaceTransforms();
			const bool bArraySizesMatch = CachedComponentSpaceTransforms.Num() == CurrentMeshComponent->GetComponentSpaceTransforms().Num();

			// Copy source array from the appropriate location
			SourceMeshTransformArray.Reset();
			SourceMeshTransformArray.Append((bUROInSync || bUsingExternalInterpolation) && bArraySizesMatch ? CachedComponentSpaceTransforms : CurrentMeshComponent->GetComponentSpaceTransforms());

			// Ref skeleton is need for parent index lookups later, so store it now
			CurrentlyUsedMesh = CurrentMeshComponent->SkeletalMesh;
		}
		else
		{
			CurrentlyUsedMesh.Reset();
		}
	}
}

void FAnimNode_CopyPoseFromPoseableMesh::Update_AnyThread(const FAnimationUpdateContext& Context)
{
	DECLARE_SCOPE_HIERARCHICAL_COUNTER_ANIMNODE(Update_AnyThread)
	// This introduces a frame of latency in setting the pin-driven source component,
	// but we cannot do the work to extract transforms on a worker thread as it is not thread safe.
	GetEvaluateGraphExposedInputs().Execute(Context);
	RefreshMeshComponent(Context.AnimInstanceProxy->GetSkelMeshComponent());

	TRACE_ANIM_NODE_VALUE(Context, TEXT("Component"), *GetNameSafe(CurrentlyUsedSourceMeshComponent.IsValid() ? CurrentlyUsedSourceMeshComponent.Get() : nullptr));
	TRACE_ANIM_NODE_VALUE(Context, TEXT("Mesh"), *GetNameSafe(CurrentlyUsedSourceMeshComponent.IsValid() ? CurrentlyUsedSourceMeshComponent.Get()->SkeletalMesh : nullptr));
}

void FAnimNode_CopyPoseFromPoseableMesh::Evaluate_AnyThread(FPoseContext& Output)
{
	DECLARE_SCOPE_HIERARCHICAL_COUNTER_ANIMNODE(Evaluate_AnyThread)
	FCompactPose& OutPose = Output.Pose;
	OutPose.ResetToRefPose();
	USkeletalMesh* CurrentMesh = CurrentlyUsedMesh.IsValid() ? CurrentlyUsedMesh.Get() : nullptr;
	if(SourceMeshTransformArray.Num() > 0 && CurrentMesh)
	{
		const FBoneContainer& RequiredBones = OutPose.GetBoneContainer();

		for(FCompactPoseBoneIndex PoseBoneIndex : OutPose.ForEachBoneIndex())
		{
			const int32 SkeletonBoneIndex = RequiredBones.GetSkeletonIndex(PoseBoneIndex);
			const int32 MeshBoneIndex = RequiredBones.GetSkeletonToPoseBoneIndexArray()[SkeletonBoneIndex];
			const int32* Value = BoneMapToSource.Find(MeshBoneIndex);
			if(Value && SourceMeshTransformArray.IsValidIndex(*Value))
			{
				const int32 SourceBoneIndex = *Value;
				const int32 ParentIndex = CurrentMesh->RefSkeleton.GetParentIndex(SourceBoneIndex);
				const FCompactPoseBoneIndex MyParentIndex = RequiredBones.GetParentBoneIndex(PoseBoneIndex);
				// only apply if I also have parent, otherwise, it should apply the space bases
				if (SourceMeshTransformArray.IsValidIndex(ParentIndex) && MyParentIndex != INDEX_NONE)
				{
					const FTransform& ParentTransform = SourceMeshTransformArray[ParentIndex];
					const FTransform& ChildTransform = SourceMeshTransformArray[SourceBoneIndex];
					OutPose[PoseBoneIndex] = ChildTransform.GetRelativeTransform(ParentTransform);
				}
				else
				{
					OutPose[PoseBoneIndex] = SourceMeshTransformArray[SourceBoneIndex];
				}
			}
		}
	}
}

void FAnimNode_CopyPoseFromPoseableMesh::GatherDebugData(FNodeDebugData& DebugData)
{
	DECLARE_SCOPE_HIERARCHICAL_COUNTER_ANIMNODE(GatherDebugData)
	FString DebugLine = DebugData.GetNodeName(this);

	DebugLine += FString::Printf(TEXT("('%s')"), *GetNameSafe(CurrentlyUsedSourceMeshComponent.IsValid() ? CurrentlyUsedSourceMeshComponent.Get()->SkeletalMesh : nullptr));
	
	USkinnedMeshComponent* CurrentMeshComponent = CurrentlyUsedSourceMeshComponent.IsValid() ? CurrentlyUsedSourceMeshComponent.Get() : nullptr;
	if (CurrentMeshComponent) {
		FString FingerData = TEXT("Hand rotations: ");
		for (size_t index = 0; index < CurrentMeshComponent->GetComponentSpaceTransforms().Num(); ++index) {
			//FingerData += FString::Printf(TEXT("  %s\n"), *CurrentMeshComponent->GetComponentSpaceTransforms()[index].GetRotation().ToString());
		}
		DebugData.AddDebugItem(FingerData, true);
	}
}

void FAnimNode_CopyPoseFromPoseableMesh::ReinitializeMeshComponent(USkinnedMeshComponent* NewSourceMeshComponent, USkinnedMeshComponent* TargetMeshComponent)
{
	CurrentlyUsedSourceMeshComponent.Reset();
	// reset source mesh
	CurrentlyUsedSourceMesh.Reset();
	CurrentlyUsedTargetMesh.Reset();
	BoneMapToSource.Reset();
	CurveNameToUIDMap.Reset();
	CurrentTargetToSourceBoneNamemap = TargetToSourceBoneNameMap;

	if (TargetMeshComponent && NewSourceMeshComponent && NewSourceMeshComponent->SkeletalMesh && !NewSourceMeshComponent->IsPendingKill())
	{
		USkeletalMesh* SourceSkelMesh = NewSourceMeshComponent->SkeletalMesh;
		USkeletalMesh* TargetSkelMesh = TargetMeshComponent->SkeletalMesh;
		
		if (SourceSkelMesh && !SourceSkelMesh->IsPendingKill() && !SourceSkelMesh->HasAnyFlags(RF_NeedPostLoad) &&
			TargetSkelMesh && !TargetSkelMesh->IsPendingKill() && !TargetSkelMesh->HasAnyFlags(RF_NeedPostLoad))
		{
			CurrentlyUsedSourceMeshComponent = NewSourceMeshComponent;
			CurrentlyUsedSourceMesh = SourceSkelMesh;
			CurrentlyUsedTargetMesh = TargetSkelMesh;

			if (SourceSkelMesh == TargetSkelMesh)
			{
				for(int32 ComponentSpaceBoneId = 0; ComponentSpaceBoneId < SourceSkelMesh->RefSkeleton.GetNum(); ++ComponentSpaceBoneId)
				{
					BoneMapToSource.Add(ComponentSpaceBoneId, ComponentSpaceBoneId);
				}
			}
			else
			{
				for (int32 ComponentSpaceBoneId=0; ComponentSpaceBoneId<TargetSkelMesh->RefSkeleton.GetNum(); ++ComponentSpaceBoneId)
				{
					FName BoneName_Target = TargetSkelMesh->RefSkeleton.GetBoneName(ComponentSpaceBoneId);
					FName* BoneName_Source = CurrentTargetToSourceBoneNamemap.Find(BoneName_Target);
					FName BoneName = (BoneName_Source) ? *BoneName_Source : BoneName_Target;
					int32 refboneindex = SourceSkelMesh->RefSkeleton.FindBoneIndex(BoneName);

					BoneMapToSource.Add(ComponentSpaceBoneId, refboneindex);
				}
			}
		}
	}
}
