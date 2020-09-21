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

void UGestureTrackingHandComponent::DumpHandRuntimeSkeletalMesh(USkeletalMesh* skeleton){

	USkeletalMesh* skelmesh = (skeleton) ? skeleton : RuntimeSkeletalMesh;

	FString PackageName = TEXT("/Game/RuntimeMeshes");
	FString MeshName = TEXT("DumpedHandMesh");
	UPackage* Package = CreatePackage(NULL, *PackageName);

	USkeletalMesh* NewAsset = DuplicateObject(skelmesh, Package, *MeshName);
		
	if (skelmesh != NULL)
	{
		//skelmesh->Rename(*MeshName, Package, REN_Test);
		NewAsset->MarkPackageDirty();
	}
	FString PackageFileName = FPackageName::LongPackageNameToFilename(PackageName, FPackageName::GetAssetPackageExtension());

	UPackage::SavePackage(Package, NewAsset, EObjectFlags::RF_Public | EObjectFlags::RF_Standalone, *PackageFileName, GError, nullptr, false, true, SAVE_None);
	UPackage::SavePackage(Package, skelmesh, EObjectFlags::RF_Public | EObjectFlags::RF_Standalone, *PackageFileName, GError, nullptr, false, true, SAVE_None);

	//skelmesh->PreEditChange(NULL);
	//skelmesh->PostEditChange();
	//Package->FullyLoad();
}