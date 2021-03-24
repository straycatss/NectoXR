#include "HMDColorFunctionLibrary.h"
#include "Modules/ModuleManager.h"
#include "HeadMountedDisplayTypes.h"
#include "ColorScaleExtension.h"

UHMDColorFunctionLibrary::UHMDColorFunctionLibrary(const FObjectInitializer& ObjectInitializer)
	: Super(ObjectInitializer)
{
}

void UHMDColorFunctionLibrary::SetColorScaleAndBias(FLinearColor ColorScale, FLinearColor ColorBias)
{
	IModuleInterface* module = FModuleManager::Get().GetModule("ColorScaleExtension");
	if (module) {
		FColorScaleExtensionModule* colorscale_module = static_cast<FColorScaleExtensionModule*>(module);
		colorscale_module->SetColorScaleAndBias(ColorScale, ColorBias);
	}
	else {
		UE_LOG(LogHMD, Warning, TEXT("Could not find the FColorScaleExtensionModule module"));
	}
}
