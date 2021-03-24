#include "DisplayRefreshRateExtension.h"

#ifdef XR_NO_PROTOTYPES
#undef XR_NO_PROTOTYPES
#include <openxr/openxr.h>
#define XR_NO_PROTOTYPES
#else
#include <openxr/openxr.h>
#endif

#include "OpenXRCore.h"
#include <OpenXRHMD/Private/OpenXRHMD.h>

#define LOCTEXT_NAMESPACE "FColorScaleExtensionModule"


FDisplayRefreshRateExtensionModule::FDisplayRefreshRateExtensionModule()
{
}

void FDisplayRefreshRateExtensionModule::StartupModule()
{
	// Register extension with OpenXR
	RegisterOpenXRExtensionModularFeature();
}

void FDisplayRefreshRateExtensionModule::ShutdownModule()
{
	// This function may be called during shutdown to clean up your module.  For modules that support dynamic reloading,
	// we call this function before unloading the module.
}

bool FDisplayRefreshRateExtensionModule::GetRequiredExtensions(TArray<const ANSICHAR*>& OutExtensions)
{
	OutExtensions.Add(XR_FB_DISPLAY_REFRESH_RATE_EXTENSION_NAME);
	return true;
}

FOpenXRHMD* FDisplayRefreshRateExtensionModule::GetOpenXRHMD() const
{
	static FName SystemName(TEXT("OpenXR"));
	if (GEngine->XRSystem.IsValid() && (GEngine->XRSystem->GetSystemName() == SystemName))
	{
		return static_cast<FOpenXRHMD*>(GEngine->XRSystem.Get());
	}
	return nullptr;	
}

float FDisplayRefreshRateExtensionModule::GetRefreshRate()
{
	float RefreshRate = 0.0f;
	if (XrSession Session = GetOpenXRHMD()->GetSession()) {
		XR_ENSURE(xrGetDisplayRefreshRateFB(Session, &RefreshRate));
	}
	return RefreshRate;
}

void FDisplayRefreshRateExtensionModule::SetRefreshRate(float RefreshRate)
{
	if (XrSession Session = GetOpenXRHMD()->GetSession()) {
		XR_ENSURE(xrRequestDisplayRefreshRateFB(Session, RefreshRate));
	}
}

TArray<float> FDisplayRefreshRateExtensionModule::EnumerateRefreshRates()
{
	TArray<float> displayRefreshRates;
	if (XrSession Session = GetOpenXRHMD()->GetSession()) {
		// Get num display refresh rates available
		uint32_t displayRefreshRateCount = 0;
		XR_ENSURE(xrEnumerateDisplayRefreshRatesFB(Session, 0, &displayRefreshRateCount, nullptr));

		// Set size of display refresh rates buffer to num display refresh rates
		displayRefreshRates.SetNum(displayRefreshRateCount);

		// Get display refresh rates buffer
		XR_ENSURE(xrEnumerateDisplayRefreshRatesFB(Session, displayRefreshRateCount, &displayRefreshRateCount, displayRefreshRates.GetData()));
	}
	return displayRefreshRates;
}

#undef LOCTEXT_NAMESPACE
	
IMPLEMENT_MODULE(FDisplayRefreshRateExtensionModule, DisplayRefreshRateExtension)