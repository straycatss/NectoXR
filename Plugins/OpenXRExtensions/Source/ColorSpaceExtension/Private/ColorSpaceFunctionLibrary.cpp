#include "ColorSpaceFunctionLibrary.h"
#include "Modules/ModuleManager.h"
#include "ColorSpaceExtension.h"
#include "..\Public\ColorSpaceFunctionLibrary.h"


UColorSpaceFunctionLibrary::UColorSpaceFunctionLibrary(const FObjectInitializer& ObjectInitializer)
	: Super(ObjectInitializer)
{
}

void UColorSpaceFunctionLibrary::SetColorSpace(const FXrColorSpaceFB ColorSpace)
{
	if(auto module = UColorSpaceFunctionLibrary::GetColorSpaceModule()){
		module->SetColorSpace(ColorSpace);
	}
}

FXrColorSpaceFB UColorSpaceFunctionLibrary::GetNativeColorSpace()
{
	if (auto module = UColorSpaceFunctionLibrary::GetColorSpaceModule()) {
		return module->StartupColorSpace;
	}
	return FXrColorSpaceFB::COLOR_SPACE_UNMANAGED;
}

TArray<FXrColorSpaceFB> UColorSpaceFunctionLibrary::EnumerateColorSpaces()
{
	if(auto module = UColorSpaceFunctionLibrary::GetColorSpaceModule()){
		return module->EnumerateColorSpaces();
	}
	return TArray<FXrColorSpaceFB>();
}

FColorSpaceExtensionModule* UColorSpaceFunctionLibrary::GetColorSpaceModule(){
	IModuleInterface* module = FModuleManager::Get().GetModule("ColorSpaceExtension");
	if (module) {
		return static_cast<FColorSpaceExtensionModule*>(module);
	}
	UE_LOG(LogHMD, Warning, TEXT("Could not find the ColorSpaceExtension module"));
	return nullptr;
}
