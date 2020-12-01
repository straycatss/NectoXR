// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "CoreMinimal.h"
#include "UObject/ObjectMacros.h"
#include "Animation/AnimNodeBase.h"
#include "Components/PoseableMeshComponent.h"
#include "AnimNode_CopyPoseFromPoseableMesh.generated.h"

class USkeletalMeshComponent;
struct FAnimInstanceProxy;

/**
 *	Simple controller to copy a bone's transform to another one.
 */

USTRUCT(BlueprintInternalUseOnly)
struct HANDPOSES_API FAnimNode_CopyPoseFromPoseableMesh : public FAnimNode_Base
{
	GENERATED_USTRUCT_BODY()

	/*  This is used by default if it's valid */
	UPROPERTY(BlueprintReadWrite, transient, Category=Copy, meta=(PinShownByDefault))
	TWeakObjectPtr<USkinnedMeshComponent> SourceMeshComponent;

	UPROPERTY(BlueprintReadWrite, EditAnywhere, Category = Copy, meta = (PinShownByDefault))
	mutable TMap<FName, FName> TargetToSourceBoneNameMap;

	UPROPERTY(BlueprintReadWrite, EditAnywhere, Category = Copy, meta = (PinShownByDefault))
	bool CopyTranslation = true;

	UPROPERTY(BlueprintReadWrite, EditAnywhere, Category = Copy, meta = (PinShownByDefault))
	bool CopyRotation = true;

	UPROPERTY(BlueprintReadWrite, EditAnywhere, Category = Copy, meta = (PinShownByDefault))
	bool CopyScale = true;

	FAnimNode_CopyPoseFromPoseableMesh();

	// FAnimNode_Base interface
	virtual void Initialize_AnyThread(const FAnimationInitializeContext& Context) override;
	virtual void CacheBones_AnyThread(const FAnimationCacheBonesContext& Context) override;
	virtual void Update_AnyThread(const FAnimationUpdateContext& Context) override;
	virtual void Evaluate_AnyThread(FPoseContext& Output) override;
	virtual void GatherDebugData(FNodeDebugData& DebugData) override;
	virtual bool HasPreUpdate() const override { return true; }
	virtual void PreUpdate(const UAnimInstance* InAnimInstance) override;
	// End of FAnimNode_Base interface

private:
	// this is source mesh references, so that we could compare and see if it has changed
	TWeakObjectPtr<USkinnedMeshComponent>	CurrentlyUsedSourceMeshComponent;
	TWeakObjectPtr<USkeletalMesh>			CurrentlyUsedSourceMesh;
	TWeakObjectPtr<USkeletalMesh>			CurrentlyUsedMesh;

	// target mesh 
	TWeakObjectPtr<USkeletalMesh>			CurrentlyUsedTargetMesh;
	// cache of target space bases to source space bases
	TMap<int32, int32> BoneMapToSource;
	TMap<FName, SmartName::UID_Type> CurveNameToUIDMap;

	// Cached bonename map
	TMap<FName, FName> CurrentTargetToSourceBoneNamemap;

	// Cached transforms, copied on the game thread
	TArray<FTransform> SourceMeshTransformArray;

	// Cached curves, copied on the game thread
	TMap<FName, float> SourceCurveList;

	// reinitialize mesh component 
	void ReinitializeMeshComponent(USkinnedMeshComponent* NewSourceMeshComponent, USkinnedMeshComponent* TargetMeshComponent);
	void RefreshMeshComponent(USkinnedMeshComponent* TargetMeshComponent);
};
