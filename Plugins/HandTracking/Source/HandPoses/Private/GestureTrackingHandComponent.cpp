// Fill out your copyright notice in the Description page of Project Settings.


#include "GestureTrackingHandComponent.h"
#include "AssetRegistryModule.h"

void UGestureTrackingHandComponent::BeginPlay()
{
	Super::BeginPlay();

	if (!RuntimeSkeletalMesh && !SkeletalMesh) {

		//Making base runtime mesh public
		RuntimeSkeletalMesh = NewObject<USkeletalMesh>(this, TEXT("OculusHandMesh"));

		if (UOculusInputFunctionLibrary::GetHandSkeletalMesh(RuntimeSkeletalMesh, SkeletonType, MeshType))
		{
			SetSkeletalMesh(RuntimeSkeletalMesh);
			if (MaterialOverride)
			{
				SetMaterial(0, MaterialOverride);
			}
			//bSkeletalMeshInitialized = true;

			//// Initialize physics capsules on the runtime mesh
			//if (bInitializePhysics)
			//{
			//	CollisionCapsules = UOculusInputFunctionLibrary::InitializeHandPhysics(SkeletonType, this);
			//}
		}
	}
}

void UGestureTrackingHandComponent::TickComponent(float DeltaTime, enum ELevelTick TickType, FActorComponentTickFunction* ThisTickFunction)
{
	UOculusHandComponent::TickComponent(DeltaTime, TickType, ThisTickFunction);
}

void UGestureTrackingHandComponent::DumpHandRuntimeSkeletalMesh(USkeletalMesh* lefthand, USkeletalMesh* righthand){

	if (!lefthand || !righthand)
		return;

	FString PackageName = TEXT("/HandTracking/Meshes/Hands");
	FString LeftMeshName = TEXT("LeftHand");
	FString RightMeshName = TEXT("RightHand");

	UPackage* Package = CreatePackage(NULL, *PackageName);

	USkeletalMesh* NewLeftMesh = DuplicateObject(lefthand, Package, *LeftMeshName);
	USkeletalMesh* NewRightMesh = DuplicateObject(righthand, Package, *RightMeshName);
	NewLeftMesh->SetFlags(EObjectFlags::RF_Public | EObjectFlags::RF_Standalone);
	NewRightMesh->SetFlags(EObjectFlags::RF_Public | EObjectFlags::RF_Standalone);
	
	NewLeftMesh->Skeleton->SetFlags(EObjectFlags::RF_Public | EObjectFlags::RF_Standalone);
	NewRightMesh->TagSubobjects(EObjectFlags::RF_Public | EObjectFlags::RF_Standalone);

	if (NewLeftMesh != NULL)
	{
		NewLeftMesh->MarkPackageDirty();
		FAssetRegistryModule::AssetCreated(NewLeftMesh);
	}
	if (NewRightMesh != NULL)
	{
		NewRightMesh->MarkPackageDirty();
		FAssetRegistryModule::AssetCreated(NewRightMesh);
	}
	FString PackageFileName = FPackageName::LongPackageNameToFilename(PackageName, FPackageName::GetAssetPackageExtension());

	FSavePackageResultStruct result = UPackage::Save(Package, NewLeftMesh->Skeleton, EObjectFlags::RF_Public | EObjectFlags::RF_Standalone, *PackageFileName, GError, nullptr, false, true, SAVE_None);
	result = UPackage::Save(Package, NewLeftMesh, EObjectFlags::RF_Public | EObjectFlags::RF_Standalone, *PackageFileName, GError, nullptr, false, true, SAVE_None);
	if (result.Result != ESavePackageResult::Success) {
		UE_LOG(LogTemp, Error, TEXT("Failed to save left hand mesh package"));
	}

	result = UPackage::Save(Package, NewRightMesh, EObjectFlags::RF_Public | EObjectFlags::RF_Standalone, *PackageFileName, GError, nullptr, false, true, SAVE_None);
	result = UPackage::Save(Package, NewRightMesh->Skeleton, EObjectFlags::RF_Public | EObjectFlags::RF_Standalone, *PackageFileName, GError, nullptr, false, true, SAVE_None);
	if (result.Result != ESavePackageResult::Success) {
		UE_LOG(LogTemp, Error, TEXT("Failed to save right hand mesh package"));
	}

	Package->FullyLoad();
}