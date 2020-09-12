// Copyright Epic Games, Inc. All Rights Reserved.

using UnrealBuildTool;

public class HandTrackingFakeController : ModuleRules
{
	public HandTrackingFakeController(ReadOnlyTargetRules Target) : base(Target)
	{
		PCHUsage = ModuleRules.PCHUsageMode.UseExplicitOrSharedPCHs;

		bool bSupportsHandTrackingFakeController = false;
		if (Target.Platform == UnrealTargetPlatform.Android || Target.Platform == UnrealTargetPlatform.Win64)
		{
			bSupportsHandTrackingFakeController = true;
		}

		PublicIncludePaths.AddRange(
			new string[] {
				// ... add public include paths required here ...
			}
			);
				
		
		PrivateIncludePaths.AddRange(
			new string[] {
				// ... add other private include paths required here ...
			}
			);
			
		
		PublicDependencyModuleNames.AddRange(
			new string[]
			{
				"Core",
				// ... add other public dependencies that you statically link with here ...
			}
			);
			
		
		PrivateDependencyModuleNames.AddRange(
			new string[]
			{
				"CoreUObject",
				"Engine",
				"Slate",
				"SlateCore",
				// ... add private dependencies that you statically link with here ...	
			}
			);
		if (bSupportsHandTrackingFakeController)
        {
			PrivateDependencyModuleNames.AddRange(new string[]{ "OculusInput"});
			PublicDefinitions.AddRange(new string[] {"HAND_TRACKING_SUPPORTED"});
		}


		DynamicallyLoadedModuleNames.AddRange(
			new string[]
			{
				// ... add any modules that your module loads dynamically here ...
			}
			);

	}
}
