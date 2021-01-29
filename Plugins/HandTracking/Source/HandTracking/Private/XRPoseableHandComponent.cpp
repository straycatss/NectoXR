// Fill out your copyright notice in the Description page of Project Settings.


#include "XRPoseableHandComponent.h"
#include "IXRTrackingSystem.h"
#include "XRMotionControllerBase.h"
#include "XRTrackingSystemBase.h"
#include "HeadMountedDisplayFunctionLibrary.h"

UXRPoseableHandComponent::UXRPoseableHandComponent(const FObjectInitializer& ObjectInitializer)
	: Super(ObjectInitializer)
{
	PrimaryComponentTick.bCanEverTick = true;
	PrimaryComponentTick.bStartWithTickEnabled = true;
	PrimaryComponentTick.TickGroup = TG_PrePhysics;
	PrimaryComponentTick.bTickEvenWhenPaused = true;
}


void UXRPoseableHandComponent::TickComponent(float DeltaTime, enum ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	Super::TickComponent(DeltaTime, TickType, ThisTickFunction);

	if (IsInGameThread())
	{
		// Cache state from the game thread for use on the render thread
		const AActor* MyOwner = GetOwner();
		bHasAuthority = MyOwner->HasLocalNetOwner();
	}

	if (bHasAuthority)
	{
		bool bHidden = false;
		UpdateBonePose();
	}
}


void UXRPoseableHandComponent::SetMotionControllerSource(UMotionControllerComponent* MotionController)
{
	MotionControllerSource = MotionController;
}

EControllerHand UXRPoseableHandComponent::TrackedControllerType() const
{
	if (MotionControllerSource) {
		EControllerHand Hand;
		FXRMotionControllerBase::GetHandEnumForSourceName(MotionControllerSource->MotionSource, Hand);
		return Hand;
	}
	return EControllerHand::AnyHand;
}

void UXRPoseableHandComponent::UpdateBonePose()
{
	if (MotionControllerSource) {
		FXRMotionControllerData MotionControllerData;
		EControllerHand Hand = TrackedControllerType();
		if (Hand == EControllerHand::Left || Hand == EControllerHand::Right) {
			UHeadMountedDisplayFunctionLibrary::GetMotionControllerData(this->GetWorld(), Hand, MotionControllerData);
			
			for (auto rotation : MotionControllerData.HandKeyRotations) {
				UE_LOG(LogTemp, Log, TEXT("Hand: %s Rotation: %s"), *MotionControllerSource->MotionSource.ToString(), *rotation.ToString());
			}
		}
	}

	//// Set Root Bone Rotation
	//FQuat RootBoneRotation = UOculusInputFunctionLibrary::GetBoneRotation(SkeletonType, EBone::Wrist_Root);
	//RootBoneRotation *= HandRootFixupRotation;
	//RootBoneRotation.Normalize();
	//BoneSpaceTransforms[0].SetRotation(RootBoneRotation);

	//// Set Remaining Bone Rotations
	//for (uint32 BoneIndex = 1; BoneIndex < (uint32)SkeletalMesh->RefSkeleton.GetNum(); BoneIndex++)
	//{
	//	FQuat BoneRotation = UOculusInputFunctionLibrary::GetBoneRotation(SkeletonType, (EBone)BoneIndex);
	//	BoneSpaceTransforms[BoneIndex].SetRotation(BoneRotation);
	//}
	//
	MarkRefreshTransformDirty();
}