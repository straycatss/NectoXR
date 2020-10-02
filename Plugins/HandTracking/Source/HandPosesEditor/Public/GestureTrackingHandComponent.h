// Fill out your copyright notice in the Description page of Project Settings.

#pragma once

#include "CoreMinimal.h"
#include "OculusHandComponent.h"
#include "RBF/RBFSolver.h"
#include "GestureTrackingHandComponent.generated.h"

/**
 * 
 */
UCLASS(Blueprintable, meta = (BlueprintSpawnableComponent), ClassGroup = OculusHand)
class HANDPOSESEDITOR_API UGestureTrackingHandComponent : public UOculusHandComponent
{
	GENERATED_BODY()
public:
	virtual void BeginPlay() override;
	virtual void TickComponent(float DeltaTime, enum ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction) override;

	UFUNCTION(BlueprintCallable, Category = "HandProperties")
	static void DumpHandRuntimeSkeletalMesh(USkeletalMesh* lefthand, USkeletalMesh* righthand);
	 
	UPROPERTY(EditDefaultsOnly, BlueprintReadWrite, Category = "HandProperties")
	USkeletalMesh* RuntimeSkeletalMesh;
private:
};