// Fill out your copyright notice in the Description page of Project Settings.

using UnrealBuildTool;
using System.Collections.Generic;

public class NectoQuestTarget : TargetRules
{
	public NectoQuestTarget(TargetInfo Target) : base(Target)
	{
		Type = TargetType.Game;
		DefaultBuildSettings = BuildSettingsVersion.V2;
		CppStandard = CppStandardVersion.Cpp17;
		ExtraModuleNames.AddRange(new string[] { "NectoQuest" });
	}
}
