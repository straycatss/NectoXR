// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "Components/PoseableMeshComponent.h"
#include "MotionControllerComponent.h"
#include "InputCoreTypes.h"

#include "XRPoseableHandComponent.generated.h"

/**
 * 
 */
UCLASS(Blueprintable, meta = (BlueprintSpawnableComponent))
class HANDTRACKING_API UXRPoseableHandComponent : public UPoseableMeshComponent
{
	GENERATED_BODY()

public:
	UXRPoseableHandComponent(const FObjectInitializer& ObjectInitializer);
	virtual void TickComponent(float DeltaTime, enum ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

	UFUNCTION(BlueprintCallable, BlueprintSetter)
	void SetMotionControllerSource(UMotionControllerComponent* MotionController);

	UFUNCTION(BlueprintCallable)
	EControllerHand TrackedControllerType() const;

private:
	/** Whether or not this component has authority within the frame */
	bool bHasAuthority;

	void UpdateBonePose();

	UMotionControllerComponent* MotionControllerSource;
};
