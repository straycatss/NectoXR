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
	 * Set the HMD refresh rate.
	 *
	 * @param RefreshRate		Refresh rate in Hz
	 */
	UFUNCTION(BlueprintCallable, Category = "XR|HeadMountedDisplay")
	static void SetRefreshRate(float RefreshRate);

	/**
	 * Get the current HMD refresh rate.
	 */
	UFUNCTION(BlueprintCallable, Category = "XR|HeadMountedDisplay")
	static float GetRefreshRate();

	/**
	 * List all supported refresh rates for the HMD
	 */
	UFUNCTION(BlueprintCallable, Category = "XR|HeadMountedDisplay")
	static TArray<float> EnumerateRefreshRates();

private:
	static FDisplayRefreshRateExtensionModule* GetRefreshRateModule();
};
