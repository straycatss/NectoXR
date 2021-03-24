// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "CoreMinimal.h"
#include "UObject/ObjectMacros.h"
#include "Kismet/BlueprintFunctionLibrary.h"
#include "IIdentifiableXRDevice.h"
#include "HMDColorFunctionLibrary.generated.h"

UCLASS()
class COLORSCALEEXTENSION_API UHMDColorFunctionLibrary : public UBlueprintFunctionLibrary
{
	GENERATED_UCLASS_BODY()

	/**
	 * Multiply the post-compositor frame against a color and add a bias.
	 * LayerColor = LayerColor * ColorScale + ColorBias
	 *
	 * @param ColorScale		(in) Color to multiply the compositor layer by
	 * @param ColorBias			(in) Color to offset the compositor layer by
	 */
	UFUNCTION(BlueprintCallable, Category = "XR|HeadMountedDisplay")
	static void SetColorScaleAndBias(FLinearColor ColorScale, FLinearColor ColorBias);
};
