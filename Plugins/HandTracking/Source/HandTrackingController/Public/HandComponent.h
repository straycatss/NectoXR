#pragma once
#include "CoreMinimal.h"

#ifdef HAND_TRACKING_SUPPORTED
#include "OculusHandComponent.h"
#endif
#include "HandComponent.generated.h"

UCLASS(Blueprintable, meta = (BlueprintSpawnableComponent), ClassGroup = OculusHand)
class UHandComponent : public UOculusHandComponent {
	GENERATED_BODY()
};
