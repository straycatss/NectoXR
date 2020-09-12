#pragma once

#include "CoreMinimal.h"

UENUM(BlueprintType)
enum class EOculusHandType : uint8
{
	None,
	HandLeft,
	HandRight,
};

UENUM(BlueprintType)
enum class ETrackingConfidence : uint8
{
	Low,
	High
};

/**
* EBone is enum representing the Bone Ids that come from the Oculus Runtime.
*/
UENUM(BlueprintType)
enum class EBone : uint8
{
	Wrist_Root UMETA(DisplayName = "Wrist Root"),
	Hand_Start = Wrist_Root UMETA(DisplayName = "Hand Start"),
	Forearm_Stub UMETA(DisplayName = "Forearm Stub"),
	Thumb_0 UMETA(DisplayName = "Thumb0"),
	Thumb_1 UMETA(DisplayName = "Thumb1"),
	Thumb_2 UMETA(DisplayName = "Thumb2"),
	Thumb_3 UMETA(DisplayName = "Thumb3"),
	Index_1 UMETA(DisplayName = "Index1"),
	Index_2 UMETA(DisplayName = "Index2"),
	Index_3 UMETA(DisplayName = "Index3"),
	Middle_1 UMETA(DisplayName = "Middle1"),
	Middle_2 UMETA(DisplayName = "Middle2"),
	Middle_3 UMETA(DisplayName = "Middle3"),
	Ring_1 UMETA(DisplayName = "Ring1"),
	Ring_2 UMETA(DisplayName = "Ring2"),
	Ring_3 UMETA(DisplayName = "Ring3"),
	Pinky_0 UMETA(DisplayName = "Pinky0"),
	Pinky_1 UMETA(DisplayName = "Pinky1"),
	Pinky_2 UMETA(DisplayName = "Pinky2"),
	Pinky_3 UMETA(DisplayName = "Pinky3"),
	Thumb_Tip UMETA(DisplayName = "Thumb Tip"),
	Max_Skinnable = Thumb_Tip UMETA(DisplayName = "Max Skinnable"),
	Index_Tip UMETA(DisplayName = "Index Tip"),
	Middle_Tip UMETA(DisplayName = "Middle Tip"),
	Ring_Tip UMETA(DisplayName = "Ring Tip"),
	Pinky_Tip UMETA(DisplayName = "Pinky Tip"),
	Hand_End UMETA(DisplayName = "Hand End"),
	Bone_Max = Hand_End UMETA(DisplayName = "Hand Max"),
	Invalid UMETA(DisplayName = "Invalid")
};

/**
* FOculusCapsuleCollider is a struct that contains information on the physics/collider capsules created by the runtime for hands.
*
* @var Capsule		The UCapsuleComponent that is the collision capsule on the bone. Use this to register for overlap/collision events
* @var BoneIndex	The Bone that this collision capsule is parented to. Corresponds to the EBone enum.
*
*/
USTRUCT(BlueprintType)
struct OCULUSINPUT_API FOculusCapsuleCollider
{
	GENERATED_BODY()

public:
	UPROPERTY(BlueprintReadOnly, Category = "OculusLibrary|HandTracking")
		UCapsuleComponent* Capsule;

	UPROPERTY(BlueprintReadOnly, Category = "OculusLibrary|HandTracking")
		EBone BoneId;
};
