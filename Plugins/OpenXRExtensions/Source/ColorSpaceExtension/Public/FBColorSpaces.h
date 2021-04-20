#pragma once

#include "CoreMinimal.h"

UENUM(BlueprintType)
enum class FXrColorSpaceFB :uint8 {
	COLOR_SPACE_UNMANAGED = 0  UMETA(DisplayName = "Unmanaged color"),
	COLOR_SPACE_REC2020 = 1  UMETA(DisplayName = "REC 2020 D65 white point"),
	COLOR_SPACE_REC709 = 2  UMETA(DisplayName = "REC709 (similar to sRGB)"),
	COLOR_SPACE_RIFT_CV1 = 3  UMETA(DisplayName = "Rift CV1"),
	COLOR_SPACE_RIFT_S = 4  UMETA(DisplayName = "Rift S"),
	COLOR_SPACE_QUEST = 5  UMETA(DisplayName = "Quest"),
	COLOR_SPACE_P3 = 6  UMETA(DisplayName = "DCI-P3 D65 white point"),
	COLOR_SPACE_ADOBE_RGB = 7  UMETA(DisplayName = "Adobe")
};
