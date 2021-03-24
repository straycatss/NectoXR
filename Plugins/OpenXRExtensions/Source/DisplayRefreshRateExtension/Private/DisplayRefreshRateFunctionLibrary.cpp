#include "DisplayRefreshRateFunctionLibrary.h"
#include "Modules/ModuleManager.h"
#include "DisplayRefreshRateExtension.h"

UDisplayRefreshRateFunctionLibrary::UDisplayRefreshRateFunctionLibrary(const FObjectInitializer& ObjectInitializer)
	: Super(ObjectInitializer)
{
}

void UDisplayRefreshRateFunctionLibrary::SetRefreshRate(float RefreshRate)
{
	if(auto module = UDisplayRefreshRateFunctionLibrary::GetRefreshRateModule()){
		module->SetRefreshRate(RefreshRate);
	}
}

float UDisplayRefreshRateFunctionLibrary::GetRefreshRate()
{
	if(auto module = UDisplayRefreshRateFunctionLibrary::GetRefreshRateModule()){
		return module->GetRefreshRate();
	}
	return 0;
}

TArray<float> UDisplayRefreshRateFunctionLibrary::EnumerateRefreshRates()
{
	if(auto module = UDisplayRefreshRateFunctionLibrary::GetRefreshRateModule()){
		return module->EnumerateRefreshRates();
	}
	return TArray<float>();
}

FDisplayRefreshRateExtensionModule* UDisplayRefreshRateFunctionLibrary::GetRefreshRateModule(){
	IModuleInterface* module = FModuleManager::Get().GetModule("DisplayRefreshRateExtension");
	if (module) {
		return static_cast<FDisplayRefreshRateExtensionModule*>(module);
	}
	UE_LOG(LogHMD, Warning, TEXT("Could not find the DisplayRefreshRateExtension module"));
	return nullptr;
}
