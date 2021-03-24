// Copyright 1998-2016 Epic Games, Inc. All Rights Reserved.

#pragma once

#include "IOpenXRExtensionPlugin.h"
#include "Modules/ModuleManager.h"

//Forwards
class FOpenXRHMD;


class FDisplayRefreshRateExtensionModule : 
	public IOpenXRExtensionPlugin, 
	public IModuleInterface
{
public:
	FDisplayRefreshRateExtensionModule();

	/** IModuleInterface implementation */
	virtual void StartupModule() override;
	virtual void ShutdownModule() override;
	
	bool GetRequiredExtensions(TArray<const ANSICHAR*>& OutExtensions);

	FOpenXRHMD* GetOpenXRHMD() const;

	float GetRefreshRate();
	void SetRefreshRate(float RefreshRate);
	TArray<float> EnumerateRefreshRates();
};