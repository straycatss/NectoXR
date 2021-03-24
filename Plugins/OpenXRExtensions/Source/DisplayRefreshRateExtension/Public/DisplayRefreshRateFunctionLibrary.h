// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "CoreMinimal.h"
#include "UObject/ObjectMacros.h"
#include "Kismet/BlueprintFunctionLibrary.h"
#include "IIdentifiableXRDevice.h"
#include "DisplayRefreshRateFunctionLibrary.generated.h"

//Forwards
class FDisplayRefreshRateExtensionModule;

UCLASS()
class DISPLAYREFRESHRATEEXTENSION_API UDisplayRefreshRateFunctionLibrary : public UBlueprintFunctionLibrary
{
	GENERATED_UCLASS_BODY()

public:
	/**
	 * Multiply the post-compositor frame against a color and add a bias.
	 * LayerColor = LayerColor * ColorScale + ColorBias
	 *
	 * @param ColorScale		(in) Color to multiply the compositor layer by
	 * @param ColorBias			(in) Color to offset the compositor layer by
	 */
	UFUNCTION(BlueprintCallable, Category = "XR|HeadMountedDisplay")
	static void SetRefreshRate(float RefreshRate);

	UFUNCTION(BlueprintCallable, Category = "XR|HeadMountedDisplay")
	static float GetRefreshRate();

	UFUNCTION(BlueprintCallable, Category = "XR|HeadMountedDisplay")
	static TArray<float> EnumerateRefreshRates();

private:
	static FDisplayRefreshRateExtensionModule* GetRefreshRateModule();
};
