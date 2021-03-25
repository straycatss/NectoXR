// Copyright 1998-2016 Epic Games, Inc. All Rights Reserved.

#pragma once

#include "IOpenXRExtensionPlugin.h"
#include "Modules/ModuleManager.h"

//Forwards
class FOpenXRHMD;

UENUM(BlueprintType)
enum class FXrColorSpaceFB :uint8 {
	COLOR_SPACE_UNMANAGED = 0  UMETA(DisplayName = "Unmanaged color"),
	COLOR_SPACE_REC2020 = 1  UMETA(DisplayName = "REC2020 D65 white point"),
	COLOR_SPACE_REC709 = 2  UMETA(DisplayName = "REC709 (similar to sRGB)"),
	COLOR_SPACE_RIFT_CV1 = 3  UMETA(DisplayName = "Rift CV1"),
	COLOR_SPACE_RIFT_S = 4  UMETA(DisplayName = "Rift S"),
	COLOR_SPACE_QUEST = 5  UMETA(DisplayName = "Quest1 and Quest2"),
	COLOR_SPACE_P3 = 6  UMETA(DisplayName = "DCI-P3 D65 white point"),
	COLOR_SPACE_ADOBE_RGB = 7  UMETA(DisplayName = "Adobe")
};


class FColorSpaceExtensionModule : 
	public IOpenXRExtensionPlugin, 
	public IModuleInterface
{
public:
	FColorSpaceExtensionModule();

	/** IModuleInterface implementation */
	virtual void StartupModule() override;
	virtual void ShutdownModule() override;

	virtual const void* OnCreateSession(XrInstance InInstance, XrSystemId InSystem, const void* InNext);
	virtual const void* OnGetSystem(XrInstance InInstance, const void* InNext) override;
	bool GetRequiredExtensions(TArray<const ANSICHAR*>& OutExtensions);
	FOpenXRHMD* GetOpenXRHMD() const;

	void SetColorSpace(const FXrColorSpaceFB ColorSpace);
	TArray<FXrColorSpaceFB> EnumerateColorSpaces();

	FXrColorSpaceFB StartupColorSpace;
private:
	// Extension functions
	PFN_xrEnumerateColorSpacesFB xrEnumerateColorSpacesFB = nullptr;
	PFN_xrSetColorSpaceFB xrSetColorSpaceFB = nullptr;
};
