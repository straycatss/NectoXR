// Some copyright should be here...
using System.IO;
using UnrealBuildTool;

public class HandTracking : ModuleRules
{
    public HandTracking(ReadOnlyTargetRules Target) : base(Target)
    {
        PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;
        //bEnforceIWYU = true;

        // To detect VR Preview, not built out in packaged builds
        if (Target.bBuildEditor == true)
        {
            PrivateDependencyModuleNames.AddRange(
                new string[] {
                    "UnrealEd"
                }
            );
        }

        PrivateIncludePathModuleNames.AddRange(
            new string[] {
                        "Settings"
            }
        );

        PublicIncludePaths.AddRange(
			new string[] {
				//"HandTracking/Public",
                //"HandTracking/Public/SimpleChar",
                //"HeadMountedDisplay/Public",
                //"Runtime/Engine/Private/PhysicsEngine"
				
				// ... add public include paths required here ...
			}
			);

        PrivateIncludePaths.AddRange(
			new string[] {
				//"HandTracking/Private",
                //"HandTracking/Private/SimpleChar",
				// ... add other private include paths required here ...
			}
			);

        PublicDependencyModuleNames.AddRange(
        new string[]
        {
                    "Core",
                    "CoreUObject",
                    "Engine",
                    "HeadMountedDisplay",
                    "UMG"
        });


        PrivateDependencyModuleNames.AddRange(
            new string[] 
            {
            });



        PrivateDependencyModuleNames.AddRange(
			new string[]
			{
				//"CoreUObject",
				//"Engine",
				"Slate",
				"SlateCore"

				// ... add private dependencies that you statically link with here ...	
			}
			);
    }
}