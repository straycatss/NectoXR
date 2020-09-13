#pragma once
#include "CoreMinimal.h"

#ifdef HAND_TRACKING_SUPPORTED
#include "OculusHandComponent.h"
#else
#include "FakeHandComponent.h"
#endif
#include "HandComponent.generated.h"

UCLASS(Blueprintable, meta = (BlueprintSpawnableComponent), ClassGroup = OculusHand)
class UHandComponent : public HandShim {
	GENERATED_BODY()
};

#ifdef HAND_TRACKING_SUPPORTED
class HandShim : public UHandComponent {
#else
class HandShim : public UFakeHandComponent {
#endif
};
