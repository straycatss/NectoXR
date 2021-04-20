#include "OpenXRExtensionsFunctionLibrary.h"
#include "Modules/ModuleManager.h"
#include "DisplayRefreshRateExtension.h"
#include "ColorScaleExtension.h"
#include "ColorSpaceExtension.h"

UOpenXRExtensionsFunctionLibrary::UOpenXRExtensionsFunctionLibrary(const FObjectInitializer& ObjectInitializer)
	: Super(ObjectInitializer)
{
}

void UOpenXRExtensionsFunctionLibrary::SetColorScaleAndBias(FLinearColor ColorScale, FLinearColor ColorBias)
{
	if (auto module = UOpenXRExtensionsFunctionLibrary::GetColorScaleModule()) {
		module->SetColorScaleAndBias(ColorScale, ColorBias);
	}
}

void UOpenXRExtensionsFunctionLibrary::SetColorSpace(const FXrColorSpaceFB ColorSpace)
{
	if(auto module = UOpenXRExtensionsFunctionLibrary::GetColorSpaceModule()){
		module->SetColorSpace(ColorSpace);
	}
}

FXrColorSpaceFB UOpenXRExtensionsFunctionLibrary::GetNativeColorSpace()
{
	if (auto module = UOpenXRExtensionsFunctionLibrary::GetColorSpaceModule()) {
		return module->StartupColorSpace;
	}
	return FXrColorSpaceFB::COLOR_SPACE_UNMANAGED;
}

TArray<FXrColorSpaceFB> UOpenXRExtensionsFunctionLibrary::EnumerateColorSpaces()
{
	if(auto module = UOpenXRExtensionsFunctionLibrary::GetColorSpaceModule()){
		return module->EnumerateColorSpaces();
	}
	return TArray<FXrColorSpaceFB>();
}

void UOpenXRExtensionsFunctionLibrary::SetRefreshRate(float RefreshRate)
{
	if(auto module = UOpenXRExtensionsFunctionLibrary::GetRefreshRateModule()){
		module->SetRefreshRate(RefreshRate);
	}
}

float UOpenXRExtensionsFunctionLibrary::GetRefreshRate()
{
	if(auto module = UOpenXRExtensionsFunctionLibrary::GetRefreshRateModule()){
		return module->GetRefreshRate();
	}
	return 0;
}

TArray<float> UOpenXRExtensionsFunctionLibrary::EnumerateRefreshRates()
{
	if(auto module = UOpenXRExtensionsFunctionLibrary::GetRefreshRateModule()){
		return module->EnumerateRefreshRates();
	}
	return TArray<float>();
}

FDisplayRefreshRateExtensionModule* UOpenXRExtensionsFunctionLibrary::GetRefreshRateModule(){
	IModuleInterface* module = FModuleManager::Get().GetModule("DisplayRefreshRateExtension");
	if (module) {
		return static_cast<FDisplayRefreshRateExtensionModule*>(module);
	}
	UE_LOG(LogHMD, Warning, TEXT("Could not find the DisplayRefreshRateExtension module"));
	return nullptr;
}

FColorSpaceExtensionModule* UOpenXRExtensionsFunctionLibrary::GetColorSpaceModule(){
	IModuleInterface* module = FModuleManager::Get().GetModule("ColorSpaceExtension");
	if (module) {
		return static_cast<FColorSpaceExtensionModule*>(module);
	}
	UE_LOG(LogHMD, Warning, TEXT("Could not find the ColorSpaceExtension module"));
	return nullptr;
}

FColorScaleExtensionModule* UOpenXRExtensionsFunctionLibrary::GetColorScaleModule(){
	IModuleInterface* module = FModuleManager::Get().GetModule("ColorScaleExtension");
	if (module) {
		return static_cast<FColorScaleExtensionModule*>(module);
	}
	UE_LOG(LogHMD, Warning, TEXT("Could not find the ColorScaleExtension module"));
	return nullptr;
}
