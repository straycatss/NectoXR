// Copyright Epic Games, Inc. All Rights Reserved.

#pragma once

#include "CoreMinimal.h"
#include "UObject/ObjectMacros.h"
#include "Kismet/BlueprintFunctionLibrary.h"
#include "ColorSpaceFunctionLibrary.generated.h"

//Forwards
class FColorSpaceExtensionModule;

UCLASS()
class COLORSPACEEXTENSION_API UColorSpaceFunctionLibrary : public UBlueprintFunctionLibrary
{
	GENERATED_UCLASS_BODY()

public:
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

private:
	static FColorSpaceExtensionModule* GetColorSpaceModule();
};
