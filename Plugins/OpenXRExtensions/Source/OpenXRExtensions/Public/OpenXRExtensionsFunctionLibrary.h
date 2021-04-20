// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "CoreMinimal.h"
#include "UObject/ObjectMacros.h"
#include "Kismet/BlueprintFunctionLibrary.h"
#include "FBColorSpaces.h"
#include "OpenXRExtensionsFunctionLibrary.generated.h"

//Forwards
class FDisplayRefreshRateExtensionModule;
class FColorScaleExtensionModule;
class FColorSpaceExtensionModule;


UCLASS()
class OPENXREXTENSIONS_API UOpenXRExtensionsFunctionLibrary : public UBlueprintFunctionLibrary
{
	GENERATED_UCLASS_BODY()

public:

	// Color scale functions
	//----------------------

	/**
	 * Multiply the post-compositor frame against a color and add a bias.
	 * LayerColor = LayerColor * ColorScale + ColorBias
	 *
	 * @param ColorScale		(in) Color to multiply the compositor layer by
	 * @param ColorBias			(in) Color to offset the compositor layer by
	 */
	UFUNCTION(BlueprintCallable, Category = "XR|HeadMountedDisplay")
	static void SetColorScaleAndBias(FLinearColor ColorScale, FLinearColor ColorBias);


	// Color space functions
	// ---------------------

	/**
	 * Set the HMD color space.
	 *
	 * @param ColorSpace		Color space to switch to
	 */
	UFUNCTION(BlueprintCallable, Category = "XR|HeadMountedDisplay")
	static void SetColorSpace(const FXrColorSpaceFB ColorSpace);

	/**
	 * Get the native color space of the HMD.
	 *
	 * @param RefreshRate		Refresh rate in Hz
	 */
	UFUNCTION(BlueprintCallable, Category = "XR|HeadMountedDisplay")
	static FXrColorSpaceFB GetNativeColorSpace();

	/**
	 * List all supported color spaces for the HMD
	 */
	UFUNCTION(BlueprintCallable, Category = "XR|HeadMountedDisplay")
	static TArray<FXrColorSpaceFB> EnumerateColorSpaces();


	// Display refresh rate functions

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
	static FColorSpaceExtensionModule* GetColorSpaceModule();
	static FColorScaleExtensionModule* GetColorScaleModule();
};
