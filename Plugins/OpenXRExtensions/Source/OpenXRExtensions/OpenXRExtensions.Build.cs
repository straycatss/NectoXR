// Some copyright should be here...
using System.IO;
using UnrealBuildTool;

public class OpenXRExtensions : ModuleRules
{
    public OpenXRExtensions(ReadOnlyTargetRules Target) : base(Target)
    {
        PCHUsage = PCHUsageMode.UseExplicitOrSharedPCHs;
        //bEnforceIWYU = true;
        var EngineDir = Path.GetFullPath(Target.RelativeEnginePath);

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
               
            }
        );

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
                "CoreUObject",
                "Engine",
                "HeadMountedDisplay",
                "UMG",
                "DisplayRefreshRateExtension",
                "ColorScaleExtension",
                "ColorSpaceExtension"

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
