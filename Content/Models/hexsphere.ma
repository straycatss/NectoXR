//Maya ASCII 2020 scene
//Name: hexsphere.ma
//Last modified: Sun, Aug 09, 2020 06:32:49 PM
//Codeset: 1252
requires maya "2020";
requires -nodeType "MASH_Points" -nodeType "MASH_Waiter" -nodeType "MASH_Orient"
		 -nodeType "MASH_Id" -nodeType "MASH_Distribute" -nodeType "MASH_Python" -nodeType "MASH_Breakout"
		 -nodeType "MASH_Repro" "MASH" "450";
requires "mtoa" "4.0.2";
requires -nodeType "polyPlatonic" "modelingToolkit" "0.0.0.0";
requires "mtoa" "4.0.2";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2020";
fileInfo "version" "2020";
fileInfo "cutIdentifier" "202002251615-329d215872";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18363)\n";
fileInfo "UUID" "FF5F550C-40F8-CBCD-E74C-B8B578C0DCEA";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "137F0A27-4EFC-97BD-AAB0-988AFE8E4409";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 2.3277271451507415 3.5972563319703732 -4.6840079027386317 ;
	setAttr ".r" -type "double3" -33.338352731903093 514.19999999905815 0 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "EE261F09-44E7-9A81-8543-D8A39C67B4DB";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 6.9652904288579496;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0.35570064187049866 -0.032235537028221899 0.61609137058258057 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "4F3AD009-48F0-653E-E346-1F9C9AD988EE";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "A4923818-4509-1D3B-1382-42BB99275305";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "4D85E15D-49A1-D837-B41D-EC8A268E59C1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0 1000.1 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "E5F7DEA7-4909-C1CE-0BB9-54871FA0C762";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "C8C1E939-40D5-ECE7-64D8-06907305A17F";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "2119D4A9-4746-C2B2-D3F5-1E8F6F257C62";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "hex1";
	rename -uid "FFCF1641-4813-7817-1541-E68847CDE346";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0 -2.4532079842406613 ;
	setAttr ".s" -type "double3" 0.24440380603150291 0.24440380603150291 0.24440380603150291 ;
createNode transform -n "transform1" -p "hex1";
	rename -uid "49A515E1-41D5-70E7-68B5-79B9072DE0BB";
	setAttr ".v" no;
createNode mesh -n "hex1Shape" -p "transform1";
	rename -uid "2996C0F3-4A2F-0D9C-09A6-7887919A2D57";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000002980232239 0.31685769557952881 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 13 ".pt";
	setAttr ".pt[0]" -type "float3" -0.13968472 0.27112162 0.24194057 ;
	setAttr ".pt[1]" -type "float3" 0.13968472 0.27112162 0.24194057 ;
	setAttr ".pt[2]" -type "float3" 0.27936944 0.27112162 3.3303433e-08 ;
	setAttr ".pt[3]" -type "float3" 0.13968472 0.27112162 -0.24194057 ;
	setAttr ".pt[4]" -type "float3" -0.13968472 0.27112162 -0.24194057 ;
	setAttr ".pt[5]" -type "float3" -0.27936944 0.27112162 -8.3258582e-09 ;
	setAttr ".pt[12]" -type "float3" 0 0.27112144 0 ;
	setAttr ".pt[20]" -type "float3" 0 0.31651926 0 ;
	setAttr ".pt[21]" -type "float3" 0 0.31651926 0 ;
	setAttr ".pt[22]" -type "float3" 0 0.31651926 0 ;
	setAttr ".pt[23]" -type "float3" 0 0.31651926 0 ;
	setAttr ".pt[24]" -type "float3" 0 0.31651926 0 ;
	setAttr ".pt[25]" -type "float3" 0 0.31651926 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "icosphere";
	rename -uid "F9EE98C0-457A-F494-4D78-A9BC0F7E5157";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 2.1666667147974761 0.7270787860985698 2.1666667147974761 ;
createNode mesh -n "icosphereShape" -p "icosphere";
	rename -uid "B5C2CF29-4DB0-1350-F724-4EBC96F5FB18";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "MASH1_ReproMesh";
	rename -uid "1C6140B4-4200-2C54-B508-DB92C0B53238";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
createNode mesh -n "MASH1_ReproMeshShape" -p "MASH1_ReproMesh";
	rename -uid "F4685A6B-4745-FF86-F63D-D086F4FB9F0B";
	setAttr -k off ".v";
	setAttr -s 8 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.58333337306976318 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcol" yes;
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".clst[0].clsn" -type "string" "colorSet";
	setAttr ".clst[0].clam" yes;
	setAttr ".clst[0].rprt" 3;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_expcol" yes;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "MASH1_Points";
	rename -uid "BBCBAD7D-4E60-032B-7AD3-A1A771BB7F4E";
createNode MASH_Points -n "MASH1_PointsShape" -p "MASH1_Points";
	rename -uid "4021C46C-4C3D-E12E-FD3B-01992249BE22";
	setAttr -k off ".v";
	setAttr ".channel" 6;
createNode transform -n "pCylinder2";
	rename -uid "1B37FB49-4E0C-F375-F61A-C08932FCFBD5";
	setAttr ".t" -type "double3" 0 -0.039793882519006729 -2.4477783472606087 ;
	setAttr ".r" -type "double3" 90 0 0 ;
	setAttr ".s" -type "double3" 0.12077028656894395 -0.0075521156853468139 0.12077028656894395 ;
createNode transform -n "transform2" -p "pCylinder2";
	rename -uid "A46A68F5-41EE-30EC-F34C-15B881173579";
	setAttr ".v" no;
createNode mesh -n "pCylinderShape2" -p "transform2";
	rename -uid "38CA2B3C-4D26-FF88-F67D-9A87E8BFDD94";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr -s 2 ".iog[0].og";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.83749997615814209 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".pt[13]" -type "float3"  0 0 2.8312206e-07;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCone1";
	rename -uid "F963273B-4864-91D1-3091-E5AE52C0D682";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
	setAttr ".t" -type "double3" 0 0 -2.1102416831877759 ;
	setAttr ".r" -type "double3" 0 -43.702588962261586 0 ;
	setAttr ".s" -type "double3" 0.22342078300197513 -0.146470474380268 0.22342078300197513 ;
createNode mesh -n "pConeShape1" -p "pCone1";
	rename -uid "8A257AC3-40B4-725A-0399-96AD4EAE8A04";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.25 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 9 ".pt";
	setAttr ".pt[0]" -type "float3" -1.431843e-18 0.082712054 0 ;
	setAttr ".pt[1]" -type "float3" 0 0.082712054 -1.498216e-18 ;
	setAttr ".pt[2]" -type "float3" -1.4318563e-18 0.082712054 0 ;
	setAttr ".pt[3]" -type "float3" 0 0.082712054 -1.4982214e-18 ;
	setAttr ".pt[34]" -type "float3" 0 0.12543906 0 ;
	setAttr ".pt[38]" -type "float3" 0 0.12543906 0 ;
	setAttr ".pt[41]" -type "float3" 0 0.12543906 0 ;
	setAttr ".pt[44]" -type "float3" 0 0.12543906 0 ;
	setAttr ".pt[57]" -type "float3" -1.4318728e-18 0.18037389 -1.4982226e-18 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder3";
	rename -uid "5A3B8F5A-491A-5A48-DDD3-469C0CF85CCC";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.0055914418312327241 -1.4855248852918557e-05 0 ;
	setAttr ".r" -type "double3" 90 0 0 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "9B401254-4067-25FF-F629-38AD53BE152C";
	addAttr -ci true -sn "mashOutFilter" -ln "mashOutFilter" -min 0 -max 1 -at "bool";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 62 ".pt[0:61]" -type "float3"  1.0964439 1.6534958 -0.060254503 
		1.3464437 1.3522402 -0.097493917 1.6554626 0.97986776 -0.097493909 1.9054627 0.67861193 
		-0.060254492 2.0009537 0.5635426 1.2220284e-08 1.9054627 0.67861158 0.060254499 1.6554629 
		0.9798677 0.097493917 1.3464361 1.35224 0.097493917 1.0964397 1.6534957 0.060254507 
		1.0009525 1.7685647 6.1101422e-09 0.24553761 1.5578064 0.18251629 0.74553949 1.2130636 
		0.29531622 1.3635647 0.78693759 0.29531676 1.8635688 0.44219422 0.18251611 2.054554 
		0.31051448 -3.7016157e-08 1.8635688 0.44219422 -0.18251635 1.3635645 0.78693759 -0.29531622 
		0.74553949 1.2130636 -0.29531622 0.24553731 1.5578064 -0.18251623 0.054554865 1.6894878 
		-1.8508079e-08 0.028194278 1.6997758 -0.016372118 0.55055088 1.1634971 -0.026490655 
		1.1962146 0.50061929 -0.02649064 1.7185644 -0.035660386 -0.016372122 1.9180857 -0.24050063 
		3.3204435e-09 1.7185643 -0.03566052 0.016372103 1.1962144 0.50061959 0.026490655 
		0.55055028 1.163497 0.02649067 0.028194338 1.6997758 0.016372118 -0.17132659 1.9046185 
		1.6602235e-09 -1.7055472 0.045660365 -0.016372103 -1.1832016 -0.49061954 -0.026490655 
		-0.53753376 -1.1534976 -0.026490655 -0.015177679 -1.6897774 -0.016372107 0.18432963 
		-1.8946176 3.3204417e-09 -0.01517785 -1.6897771 0.016372111 -0.53753358 -1.1534973 
		0.026490655 -1.1832017 -0.49061927 0.026490655 -1.7055472 0.04566035 0.016372096 
		-1.9050828 0.25050062 1.6602137e-09 -1.8635658 -0.44219369 0.18251629 -1.3635656 
		-0.78693676 0.2953164 -0.7455408 -1.2130618 0.2953164 -0.24554229 -1.5578057 0.18251611 
		-0.05455941 -1.6894881 -3.7016157e-08 -0.24554241 -1.5578058 -0.18251629 -0.74553734 
		-1.213062 -0.2953164 -1.3635688 -0.78693676 -0.2953164 -1.863567 -0.44219369 -0.18251623 
		-2.0545456 -0.31051365 -1.8508079e-08 -1.9054618 -0.67861187 -0.060254503 -1.6554583 
		-0.97986758 -0.097493917 -1.3464422 -1.3522402 -0.097493909 -1.096445 -1.6534956 
		-0.060254492 -1.0009464 -1.7685647 1.2220284e-08 -1.096442 -1.6534958 0.060254499 
		-1.3464434 -1.3522402 0.097493917 -1.6554612 -0.97986782 0.097493917 -1.9054501 -0.67861176 
		0.060254507 -2.0009518 -0.56354278 6.1101422e-09 1.6336766 1.2552173 0 -1.633672 
		-1.2552173 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube1";
	rename -uid "A49D693D-47FB-4377-45F5-33B69E870A0E";
	setAttr ".t" -type "double3" 0 0 -1.8856103828501529 ;
	setAttr ".s" -type "double3" 0.0070744470060179103 0.16451063645108732 0.01097372135925748 ;
	setAttr ".rp" -type "double3" 0 -0.08225531876087197 0 ;
	setAttr ".sp" -type "double3" 0 -0.50000000325406446 0 ;
	setAttr ".spt" -type "double3" 0 0.41774468449319258 0 ;
createNode mesh -n "pCubeShape1" -p "pCube1";
	rename -uid "C7CE25DA-4259-450E-8188-16B0E758D9F7";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.5 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  1.3709068e-06 0 2.0265579e-06 
		-1.3709068e-06 0 2.0265579e-06 -5.9604645e-08 0 5.9604645e-08 5.9604645e-08 0 5.9604645e-08 
		-5.9604645e-08 0 -5.9604645e-08 5.9604645e-08 0 -5.9604645e-08 1.3709068e-06 0 -2.0265579e-06 
		-1.3709068e-06 0 -2.0265579e-06;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder4";
	rename -uid "A1B1429B-4DC3-47F0-5407-3F894ADE97FE";
	setAttr ".t" -type "double3" 0 0 -2.5167607118407198 ;
	setAttr ".s" -type "double3" 0.039411910563679486 0.0048104506672790055 0.039411910563679486 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "65738B0B-42E2-9AE1-8ABD-A7BC24A556BA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.50046992301940918 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "89D16764-4D19-2B82-87FA-54B41E503A5D";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "040F33C3-4AEB-2873-E8AB-4C9A03C2CD4E";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "2E6B0785-4EE3-B81F-9B21-DFAF34D4B366";
createNode displayLayerManager -n "layerManager";
	rename -uid "FFE13A63-4D75-0C7C-691A-538C00FC81D9";
createNode displayLayer -n "defaultLayer";
	rename -uid "2EC881D4-4B7B-A04D-B8B5-678A54B10CF1";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "974DF868-43F5-93DB-0E0F-EE9681C15F1B";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "F76A9344-44BF-6B42-7728-018BF199BB85";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "F785C89A-44A9-D8DE-352E-C48F7BC9662C";
	setAttr ".h" 0.1;
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyPlatonic -n "polyPlatonic1";
	rename -uid "6E736F6B-45D4-E459-0B5D-9A9F11423425";
	setAttr ".subdivisionMode" 1;
	setAttr ".subdivisions" 1;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "53B0DAB2-4CD9-275B-4875-A5A2BA165CBC";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1100\n            -height 707\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showPlayRangeShades \"on\" \n                -lockPlayRangeShades \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n"
		+ "                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -valueLinesToggle 1\n                -highlightAffectedCurves 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n"
		+ "                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayValues 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n"
		+ "                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n"
		+ "                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayValues 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1100\\n    -height 707\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1100\\n    -height 707\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "CBABAA2F-4ECA-389C-4E7D-2AA05266FE13";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode MASH_Waiter -n "MASH1";
	rename -uid "6D93A1FD-4343-02B4-8949-E3891B92ED55";
	addAttr -s false -ci true -h true -sn "instancerMessage" -ln "instancerMessage" 
		-at "message";
	setAttr ".filename" -type "string" "0";
	setAttr ".outlinerJSON" -type "string" "{\"expanded\": true}";
createNode MASH_Distribute -n "MASH1_Distribute";
	rename -uid "490D2B8E-4241-2133-57B3-B6BA39B4752F";
	setAttr ".savedData" -type "newParticles" ;
	setAttr ".mapDirection" 4;
	setAttr -s 3 ".scaleRamp[0:2]"  0 0 1 0 0 1 1 1 1;
	setAttr -s 3 ".rotationRamp[0:2]"  0 0 1 0 0 1 1 1 1;
	setAttr -s 3 ".bRmp[0:2]"  0 0 1 0 0 1 1 1 1;
	setAttr ".bRmpX[0]"  0 1 1;
	setAttr ".bRmpY[0]"  0 1 1;
	setAttr ".bRmpZ[0]"  0 1 1;
	setAttr ".useFaceScale" yes;
	setAttr ".floodMesh" yes;
	setAttr ".faceScaleMultiplier" 5.1753087043762207;
	setAttr ".meshType" 8;
	setAttr ".rt" 4;
createNode MASH_Repro -n "MASH1_Repro";
	rename -uid "FDA10431-4276-7C5A-095D-6FA3DACD8CE8";
	addAttr -s false -ci true -h true -sn "instancerMessage" -ln "instancerMessage" 
		-at "message";
	setAttr ".numberOfObjects" 1;
	setAttr ".setC" yes;
	setAttr ".instancedGroup[0].inMesh[0].inShGroupId[0]"  -1;
createNode MASH_Orient -n "MASH1_Orient";
	rename -uid "317C1988-4C46-2AE3-72F3-0794F7593E37";
	setAttr ".savedData" -type "newParticles" ;
	setAttr ".en" no;
	setAttr ".inM" -type "mesh" 


		"v"	13
		0	-0.13503897	-3.9825352e-09
		-1	0.17711741	-1.4901161e-07
		-0.49999985	0.17711741	-0.86602551
		0.50000024	0.17711741	-0.86602533
		1	0.17711741	0
		0.49999994	0.17711741	0.86602545
		-0.50000012	0.17711741	0.86602539
		-1	-0.44719502	-1.4901161e-07
		-0.49999982	-0.44719502	-0.86602551
		0.50000024	-0.44719502	-0.86602533
		1	-0.44719502	0
		0.49999994	-0.44719502	0.86602545
		-0.50000012	-0.44719502	0.86602539

		"vt"	15
		0.5	0.50046992
		0.45833331	0.47817612
		0.41666666	0.47817612
		0.625	0.47817612
		0.375	0.47817612
		0.58333331	0.47817612
		0.54166663	0.47817612
		0.49999994	0.47817612
		0.45833331	0.39030582
		0.41666666	0.39030582
		0.625	0.39030582
		0.375	0.39030582
		0.58333331	0.39030582
		0.54166663	0.39030582
		0.49999994	0.39030582

		"e"	30
		0	9	"hard"
		0	8	"hard"
		0	7	"hard"
		0	12	"hard"
		0	11	"hard"
		0	10	"hard"
		1	0	"hard"
		2	0	"hard"
		1	2	"hard"
		3	0	"hard"
		2	3	"hard"
		4	0	"hard"
		3	4	"hard"
		5	0	"hard"
		4	5	"hard"
		6	0	"hard"
		5	6	"hard"
		6	1	"hard"
		7	1	"hard"
		8	2	"hard"
		7	8	"hard"
		9	3	"hard"
		8	9	"hard"
		10	4	"hard"
		9	10	"hard"
		11	5	"hard"
		10	11	"hard"
		12	6	"hard"
		11	12	"hard"
		12	7	"hard"

		"face"	
		"l"	3	1	22	-1	
		"lt"	3	0	9	11	

		"face"	
		"l"	3	2	20	-2	
		"lt"	3	0	8	9	

		"face"	
		"l"	3	3	29	-3	
		"lt"	3	0	14	8	

		"face"	
		"l"	3	4	28	-4	
		"lt"	3	0	13	14	

		"face"	
		"l"	3	5	26	-5	
		"lt"	3	0	12	13	

		"face"	
		"l"	3	0	24	-6	
		"lt"	3	0	10	12	

		"face"	
		"l"	3	-9	6	-8	
		"lt"	3	2	1	0	

		"face"	
		"l"	3	-11	7	-10	
		"lt"	3	4	2	0	

		"face"	
		"l"	3	-13	9	-12	
		"lt"	3	5	3	0	

		"face"	
		"l"	3	-15	11	-14	
		"lt"	3	6	5	0	

		"face"	
		"l"	3	-17	13	-16	
		"lt"	3	7	6	0	

		"face"	
		"l"	3	-18	15	-7	
		"lt"	3	1	7	0	

		"face"	
		"l"	4	-21	18	8	-20	
		"lt"	4	9	8	1	2	

		"face"	
		"l"	4	-23	19	10	-22	
		"lt"	4	11	9	2	4	

		"face"	
		"l"	4	-25	21	12	-24	
		"lt"	4	12	10	3	5	

		"face"	
		"l"	4	-27	23	14	-26	
		"lt"	4	13	12	5	6	

		"face"	
		"l"	4	-29	25	16	-28	
		"lt"	4	14	13	6	7	

		"face"	
		"l"	4	-30	27	17	-19	
		"lt"	4	8	14	7	1	;
	setAttr ".rMode" yes;
	setAttr ".orientMode" 3;
createNode MASH_Id -n "MASH1_ID";
	rename -uid "C7C562A7-4BC2-57B8-5315-31B57493988D";
	setAttr ".nuob" 42;
	setAttr ".probabilityRamp[0]"  0 0 1;
createNode MASH_Python -n "MASH1_Python";
	rename -uid "1EC9F0A6-49C9-6F6F-C125-539733DFD334";
	setAttr ".savedData" -type "newParticles" ;
	setAttr ".pyScript" -type "string" "import openMASH\n\n#initialise the MASH network data\nmd = openMASH.MASHData(thisNode)\n\n#this is how to get the frame number\nframe = md.getFrame()\n#and this gets the number of objects in the network\ncount = md.count()\n\nprint(dir(md))\n\n#add the index to the Y position\nfor i in range(count):\n    md.outColor[i].x=md.position[i].x * 0.5 + 0.5\n    md.outColor[i].y=md.position[i].y* 0.5 + 0.5\n    md.outColor[i].z=md.position[i].z* 0.5 + 0.5\n    #md.outScale[i].x =abs(md.position[i].x * 2)\n    #md.outScale[i].y =abs(md.position[i].x * 2)\n    #md.outScale[i].z =abs(md.position[i].x* 2)\n    #print(\"{}, {}, {}\".format(md.position[i].x, md.position[i].y, md.position[i].z))\n\n#tell MASH to write the network data\nmd.setData()";
createNode polySplitRing -n "polySplitRing1";
	rename -uid "E2D642C4-4EDF-9AC3-8E5A-498FDE6E8F52";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 0.27687400578033544 0 0 0 0 0.27687400578033544 0 0
		 0 0 0.27687400578033544 0 0 0 -2.4532079842406613 1;
	setAttr ".wt" 0.31808584928512573;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "D4EF0431-4425-7C76-76F2-99B5E4745275";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 0.27687400578033544 0 0 0 0 0.27687400578033544 0 0
		 0 0 0.27687400578033544 0 0 0 -2.4532079842406613 1;
	setAttr ".wt" 0.036441285163164139;
	setAttr ".re" 17;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak1";
	rename -uid "5262D35A-4AC0-5313-331F-278A1F5B844A";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[0]" -type "float3" -0.19207627 -0.35707641 0.33268648 ;
	setAttr ".tk[1]" -type "float3" 0.19207588 -0.35707641 0.33268666 ;
	setAttr ".tk[2]" -type "float3" 0.38415205 -0.35707641 4.5794494e-08 ;
	setAttr ".tk[3]" -type "float3" 0.19207615 -0.35707641 -0.3326866 ;
	setAttr ".tk[4]" -type "float3" -0.192076 -0.35707641 -0.33268666 ;
	setAttr ".tk[5]" -type "float3" -0.38415205 -0.35707641 -1.1448622e-08 ;
	setAttr ".tk[12]" -type "float3" 0 -0.35707641 0 ;
	setAttr ".tk[13]" -type "float3" 0 -2.3841858e-07 0 ;
createNode polyCylinder -n "polyCylinder3";
	rename -uid "6FEBBB76-46A1-D1FA-177B-C8812C3EBA79";
	setAttr ".sa" 10;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "DBACB798-4AB4-87EE-A788-B08AF711F5B6";
	setAttr ".dc" -type "componentList" 4 "f[0:3]" "f[9:13]" "f[19:23]" "f[29]";
createNode groupId -n "groupId2";
	rename -uid "C63D3590-4483-3471-D04F-819B5E247BA4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts1";
	rename -uid "6DCAA4E9-4F8A-F9DF-E010-EC8D91CEE65D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:14]";
createNode groupId -n "groupId3";
	rename -uid "D219B161-4251-3FB4-6A84-899BDA1B8A4A";
	setAttr ".ihi" 0;
createNode groupId -n "groupId4";
	rename -uid "3B109947-45EE-14A0-5743-A998E38F2CD7";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts2";
	rename -uid "E1E27594-4E70-7CD1-9954-42B7638770A9";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "f[0:29]";
createNode groupId -n "groupId5";
	rename -uid "8EAC6E90-4313-EBFE-F591-668369C5E336";
	setAttr ".ihi" 0;
createNode groupId -n "groupId8";
	rename -uid "E865D182-4F35-848C-C101-ED8AA3829131";
createNode groupId -n "groupId9";
	rename -uid "D38AB308-4832-A2DB-D3E0-449F33F0C306";
createNode groupId -n "groupId10";
	rename -uid "8353B5BF-47FD-4E22-C809-FFA199AB2F47";
createNode polyCone -n "polyCone1";
	rename -uid "88FF166F-41C5-751F-1A7A-A890B08B8147";
	setAttr ".sa" 4;
	setAttr ".sh" 3;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "32291BD1-4D55-7292-F7DE-789AF752158C";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[16:19]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 -2.1102416831877759 1;
	setAttr ".wt" 0.2328886091709137;
	setAttr ".dr" no;
	setAttr ".re" 16;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak2";
	rename -uid "51809900-4F3F-479C-E658-3D82043A7AD4";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[8]" -type "float3" 0 0 0.2226443 ;
	setAttr ".tk[9]" -type "float3" 0 0 1.946419e-08 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.2226443 ;
	setAttr ".tk[12]" -type "float3" 0 -0.59991539 0 ;
createNode polySmoothFace -n "polySmoothFace1";
	rename -uid "C4067616-4E17-CB7B-C0E2-A5BE5FD8D43D";
	setAttr ".ics" -type "componentList" 1 "f[*]";
	setAttr ".sdt" 2;
	setAttr ".suv" yes;
	setAttr ".ps" 0.10000000149011612;
	setAttr ".ro" 1;
	setAttr ".ma" yes;
	setAttr ".m08" yes;
createNode polyTweak -n "polyTweak3";
	rename -uid "85C238E3-4C78-EC56-6877-72A18C880DF1";
	setAttr ".uopa" yes;
	setAttr -s 13 ".tk[4:16]" -type "float3"  0 -0.22718333 0 0 -0.22718333
		 6.5209361e-18 0 -0.22718333 0 0 -0.22718333 6.5209377e-18 0 0.21959116 0.049539171
		 0 0.21959116 4.3308477e-09 0 0.21959116 -0.049539171 0 0.21959116 0 0 0.21959116
		 0 0 -0.078247607 0.46042246 -0.071704865 -0.078247622 0 0 -0.078247607 -0.46042246
		 0.071704865 -0.078247622 0;
createNode polyCylinder -n "polyCylinder4";
	rename -uid "1C762313-43FB-54F8-218F-A8B36FADB6AA";
	setAttr ".sa" 10;
	setAttr ".sh" 3;
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
createNode polyTweak -n "polyTweak4";
	rename -uid "1E268C07-4C7D-D1B2-C632-1BABA3BFA837";
	setAttr ".uopa" yes;
	setAttr -s 42 ".tk";
	setAttr ".tk[0]" -type "float3" 0 -0.16605383 0 ;
	setAttr ".tk[1]" -type "float3" 0 -0.16605383 0 ;
	setAttr ".tk[2]" -type "float3" 0 -0.16605383 0 ;
	setAttr ".tk[3]" -type "float3" 0 -0.16605383 0 ;
	setAttr ".tk[4]" -type "float3" 0 -0.16605383 0 ;
	setAttr ".tk[5]" -type "float3" 0 -0.16605383 0 ;
	setAttr ".tk[6]" -type "float3" 0 -0.16605383 0 ;
	setAttr ".tk[7]" -type "float3" 0 -0.16605383 0 ;
	setAttr ".tk[8]" -type "float3" 0 -0.16605383 0 ;
	setAttr ".tk[9]" -type "float3" 0 -0.16605383 0 ;
	setAttr ".tk[20]" -type "float3" 0.036167514 -0.49872509 -0.026277244 ;
	setAttr ".tk[21]" -type "float3" 0.013814756 -0.49872512 -0.042517476 ;
	setAttr ".tk[22]" -type "float3" -0.01381477 -0.49872512 -0.04251748 ;
	setAttr ".tk[23]" -type "float3" -0.036167514 -0.49872509 -0.026277224 ;
	setAttr ".tk[24]" -type "float3" -0.04470551 -0.49872509 5.329313e-09 ;
	setAttr ".tk[25]" -type "float3" -0.03616751 -0.49872512 0.026277246 ;
	setAttr ".tk[26]" -type "float3" -0.013814758 -0.49872512 0.042517476 ;
	setAttr ".tk[27]" -type "float3" 0.01381477 -0.498725 0.042517476 ;
	setAttr ".tk[28]" -type "float3" 0.036167506 -0.49872512 0.026277239 ;
	setAttr ".tk[29]" -type "float3" 0.04470551 -0.49872509 2.6646565e-09 ;
	setAttr ".tk[30]" -type "float3" 0.036167514 0.48872507 -0.026277237 ;
	setAttr ".tk[31]" -type "float3" 0.013814759 0.48872513 -0.042517468 ;
	setAttr ".tk[32]" -type "float3" -0.013814764 0.48872501 -0.042517461 ;
	setAttr ".tk[33]" -type "float3" -0.036167514 0.48872513 -0.026277233 ;
	setAttr ".tk[34]" -type "float3" -0.044705503 0.48872507 5.3293112e-09 ;
	setAttr ".tk[35]" -type "float3" -0.03616751 0.48872507 0.026277242 ;
	setAttr ".tk[36]" -type "float3" -0.013814758 0.48872507 0.042517468 ;
	setAttr ".tk[37]" -type "float3" 0.013814764 0.48872507 0.042517468 ;
	setAttr ".tk[38]" -type "float3" 0.036167514 0.48872507 0.026277235 ;
	setAttr ".tk[39]" -type "float3" 0.044705503 0.48872507 2.6646556e-09 ;
	setAttr ".tk[50]" -type "float3" 0 0.16605383 0 ;
	setAttr ".tk[51]" -type "float3" 0 0.16605383 0 ;
	setAttr ".tk[52]" -type "float3" 0 0.16605383 0 ;
	setAttr ".tk[53]" -type "float3" 0 0.16605383 0 ;
	setAttr ".tk[54]" -type "float3" 0 0.16605383 0 ;
	setAttr ".tk[55]" -type "float3" 0 0.16605383 0 ;
	setAttr ".tk[56]" -type "float3" 0 0.16605383 0 ;
	setAttr ".tk[57]" -type "float3" 0 0.16605383 0 ;
	setAttr ".tk[58]" -type "float3" 0 0.16605383 0 ;
	setAttr ".tk[59]" -type "float3" 0 0.16605383 0 ;
	setAttr ".tk[60]" -type "float3" 0 -0.2552174 0 ;
	setAttr ".tk[61]" -type "float3" 0 0.2552174 0 ;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "C7233D5C-45BE-F4AC-97FD-A4A27BF31F73";
	setAttr ".dc" -type "componentList" 1 "f[20:29]";
createNode polyCube -n "polyCube1";
	rename -uid "4912D7D5-4D63-FC12-39FB-42ABAAC00929";
	setAttr ".cuv" 4;
createNode polyCylinder -n "polyCylinder5";
	rename -uid "355D684E-447B-5124-CD7B-42963B692C08";
	setAttr ".sa" 6;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "5ADF1D87-43FB-3AE5-668C-64930E4D9F47";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.032235537028221899 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.44069856405258179;
	setAttr ".dr" no;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "AB5E6779-4708-64C6-BC3A-0FB5BA28449C";
	setAttr ".uopa" yes;
	setAttr -s 7 ".tk";
	setAttr ".tk[6]" -type "float3" 0 0.67102629 0 ;
	setAttr ".tk[7]" -type "float3" 0 0.67102629 0 ;
	setAttr ".tk[8]" -type "float3" 0 0.67102629 0 ;
	setAttr ".tk[9]" -type "float3" 0 0.67102629 0 ;
	setAttr ".tk[10]" -type "float3" 0 0.67102629 0 ;
	setAttr ".tk[11]" -type "float3" 0 0.67102629 0 ;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "E9475CA3-48EE-ACA5-AFE2-48AC37566958";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[12:17]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.032235537028221899 0 0 0 0 1 0 0 0 0 1;
	setAttr ".wt" 0.46962606906890869;
	setAttr ".re" 14;
	setAttr ".sma" 29.999999999999996;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak6";
	rename -uid "B7D99862-435F-DBEA-DA2F-0C9E6EB6E3BD";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[6]" -type "float3" -0.19026041 -1.4939091 0.32954001 ;
	setAttr ".tk[7]" -type "float3" 0.19026035 -1.4939091 0.32954004 ;
	setAttr ".tk[8]" -type "float3" 0.38052079 -1.4939091 4.5361613e-08 ;
	setAttr ".tk[9]" -type "float3" 0.1902604 -1.4939091 -0.32954001 ;
	setAttr ".tk[10]" -type "float3" -0.19026038 -1.4939091 -0.32954004 ;
	setAttr ".tk[11]" -type "float3" -0.38052079 -1.4939091 -1.1340403e-08 ;
	setAttr ".tk[13]" -type "float3" 0 -0.82288289 0 ;
createNode polySoftEdge -n "polySoftEdge1";
	rename -uid "3079F7AA-4C50-5F3C-D304-5A8962157266";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 10 "e[32]" "e[34]" "e[36]" "e[38]" "e[40:41]" "e[44]" "e[46]" "e[48]" "e[50]" "e[52:53]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.14719627798994023 0 0 0 0 1 0 0 0 0 1;
	setAttr ".a" 0;
createNode polyTweak -n "polyTweak7";
	rename -uid "611E1BB1-44E9-05BF-A11B-93971978E102";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk";
	setAttr ".tk[0]" -type "float3" -0.14429934 0.55280495 0.24993396 ;
	setAttr ".tk[1]" -type "float3" 0.14429928 0.55280507 0.24993411 ;
	setAttr ".tk[2]" -type "float3" 0.28859866 0.55280501 3.4403641e-08 ;
	setAttr ".tk[3]" -type "float3" 0.14429933 0.55280501 -0.24993405 ;
	setAttr ".tk[4]" -type "float3" -0.14429933 0.55280495 -0.24993411 ;
	setAttr ".tk[5]" -type "float3" -0.28859866 0.55280501 -8.6009102e-09 ;
	setAttr ".tk[6]" -type "float3" 0.045961082 0 -0.079606056 ;
	setAttr ".tk[7]" -type "float3" -0.045961052 0 -0.079605937 ;
	setAttr ".tk[8]" -type "float3" -0.091922164 -5.0955009e-09 -1.0957976e-08 ;
	setAttr ".tk[9]" -type "float3" -0.045961082 0 0.079605997 ;
	setAttr ".tk[10]" -type "float3" 0.045961052 0 0.079605937 ;
	setAttr ".tk[11]" -type "float3" 0.091922164 0 2.7394931e-09 ;
	setAttr ".tk[12]" -type "float3" 0 0.55280501 0 ;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "C0F3E512-4F85-F892-6F01-0F9A491A9D79";
	setAttr ".dc" -type "componentList" 1 "f[6:17]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "2564FA12-4713-6DF8-1798-DAB7ECFEF4C3";
	setAttr ".ics" -type "componentList" 1 "e[0:11]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.14719627798994023 0 0 0 0 1 0 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 1;
	setAttr ".sv2" 7;
	setAttr ".d" 1;
	setAttr ".sd" 1;
	setAttr ".td" 1;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "460CDC08-4239-860A-4C6A-FEA6C3BF9B36";
	setAttr ".ics" -type "componentList" 1 "vtx[0:11]";
	setAttr ".ix" -type "matrix" 0.10808271389595205 0 0 0 0 0.015909373200535756 0 0
		 0 0 0.10808271389595205 0 0 0 -2.5167607118407198 1;
	setAttr ".d" 1e-06;
createNode polyTweak -n "polyTweak8";
	rename -uid "3E7FA8AA-4BD0-157E-9D55-4FAEA33E1622";
	setAttr ".uopa" yes;
	setAttr -s 14 ".tk";
	setAttr ".tk[0]" -type "float3" -0.35570091 0.31215608 0.61609137 ;
	setAttr ".tk[1]" -type "float3" 0.35570055 0.31215599 0.61609137 ;
	setAttr ".tk[2]" -type "float3" 0.71140134 0.31215605 1.0266037e-07 ;
	setAttr ".tk[3]" -type "float3" 0.35570079 0.31215605 -0.61609137 ;
	setAttr ".tk[4]" -type "float3" -0.35570064 0.31215608 -0.61609137 ;
	setAttr ".tk[5]" -type "float3" -0.71140134 0.31215605 -3.3466954e-09 ;
	setAttr ".tk[6]" -type "float3" -0.35570091 -0.31215608 0.61609137 ;
	setAttr ".tk[7]" -type "float3" 0.35570055 -0.31215608 0.61609137 ;
	setAttr ".tk[8]" -type "float3" 0.71140134 -0.31215608 1.0266037e-07 ;
	setAttr ".tk[9]" -type "float3" 0.35570079 -0.31215608 -0.61609137 ;
	setAttr ".tk[10]" -type "float3" -0.35570064 -0.31215608 -0.61609137 ;
	setAttr ".tk[11]" -type "float3" -0.71140134 -0.31215608 -3.3466954e-09 ;
createNode MASH_Breakout -n "MASH1_Breakout";
	rename -uid "5400A27A-48B2-0719-2A12-47943688F5CB";
createNode groupId -n "groupId11";
	rename -uid "35AC4FAD-4BA2-24DB-42A1-FA9DA6B954BD";
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 22 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surface" "Particles" "Particle Instance" "Fluids" "Strokes" "Image Planes" "UI" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Hair Systems" "Follicles" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 22 0 1 1 1 1 1
		 1 1 1 0 0 0 0 0 0 0 0 0
		 0 0 0 0 ;
	setAttr ".fprt" yes;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 5 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 13 ".dsm";
	setAttr ".ro" yes;
	setAttr -s 8 ".gn";
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	addAttr -ci true -h true -sn "dss" -ln "defaultSurfaceShader" -dt "string";
	setAttr ".ren" -type "string" "arnold";
	setAttr ".dss" -type "string" "lambert1";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
connectAttr "groupParts2.og" "hex1Shape.i";
connectAttr "groupId4.id" "hex1Shape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "hex1Shape.iog.og[0].gco";
connectAttr "groupId5.id" "hex1Shape.ciog.cog[0].cgid";
connectAttr "polyPlatonic1.output" "icosphereShape.i";
connectAttr "MASH1_Repro.out" "MASH1_ReproMeshShape.i";
connectAttr "groupId11.id" "MASH1_ReproMeshShape.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "MASH1_ReproMeshShape.iog.og[0].gco";
connectAttr "groupId8.id" "MASH1_ReproMeshShape.iog.og[2].gid";
connectAttr ":initialShadingGroup.mwc" "MASH1_ReproMeshShape.iog.og[2].gco";
connectAttr "groupId9.id" "MASH1_ReproMeshShape.iog.og[3].gid";
connectAttr ":initialShadingGroup.mwc" "MASH1_ReproMeshShape.iog.og[3].gco";
connectAttr "groupId10.id" "MASH1_ReproMeshShape.iog.og[4].gid";
connectAttr ":initialShadingGroup.mwc" "MASH1_ReproMeshShape.iog.og[4].gco";
connectAttr "MASH1.outputPoints" "MASH1_PointsShape.inputPoints";
connectAttr "groupId2.id" "pCylinderShape2.iog.og[0].gid";
connectAttr ":initialShadingGroup.mwc" "pCylinderShape2.iog.og[0].gco";
connectAttr "groupParts1.og" "pCylinderShape2.i";
connectAttr "groupId3.id" "pCylinderShape2.ciog.cog[0].cgid";
connectAttr "polySmoothFace1.out" "pConeShape1.i";
connectAttr "deleteComponent2.og" "pCylinderShape3.i";
connectAttr "polyCube1.out" "pCubeShape1.i";
connectAttr "polyMergeVert1.out" "pCylinderShape4.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "MASH1_Python.outputPoints" "MASH1.inputPoints";
connectAttr "MASH1_Distribute.waiterMessage" "MASH1.waiterMessage";
connectAttr "pCylinderShape3.w" "MASH1_Distribute.inM";
connectAttr "MASH1_ReproMeshShape.wim" "MASH1_Repro.mmtx";
connectAttr "MASH1_ReproMeshShape.msg" "MASH1_Repro.meshmessage";
connectAttr "MASH1.outputPoints" "MASH1_Repro.inputPoints";
connectAttr "MASH1.instancerMessage" "MASH1_Repro.instancerMessage";
connectAttr "pCube1.msg" "MASH1_Repro.instancedGroup[0].gmsg";
connectAttr "pCube1.wm" "MASH1_Repro.instancedGroup[0].gmtx";
connectAttr "pCubeShape1.o" "MASH1_Repro.instancedGroup[0].inMesh[0].mesh";
connectAttr "pCubeShape1.wm" "MASH1_Repro.instancedGroup[0].inMesh[0].matrix";
connectAttr "groupId11.id" "MASH1_Repro.instancedGroup[0].inMesh[0].groupId[0]";
connectAttr ":time1.o" "MASH1_Orient.ti";
connectAttr "MASH1_Distribute.outputPoints" "MASH1_Orient.inputPoints";
connectAttr ":time1.o" "MASH1_ID.ti";
connectAttr "MASH1_Orient.outputPoints" "MASH1_ID.inputPoints";
connectAttr ":time1.o" "MASH1_Python.tm";
connectAttr "MASH1_ID.outputPoints" "MASH1_Python.inputPoints";
connectAttr "polyCylinder1.out" "polySplitRing1.ip";
connectAttr "hex1Shape.wm" "polySplitRing1.mp";
connectAttr "polyTweak1.out" "polySplitRing2.ip";
connectAttr "hex1Shape.wm" "polySplitRing2.mp";
connectAttr "polySplitRing1.out" "polyTweak1.ip";
connectAttr "polyCylinder3.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "groupParts1.ig";
connectAttr "groupId2.id" "groupParts1.gi";
connectAttr "polySplitRing2.out" "groupParts2.ig";
connectAttr "groupId4.id" "groupParts2.gi";
connectAttr "polyTweak2.out" "polySplitRing3.ip";
connectAttr "pConeShape1.wm" "polySplitRing3.mp";
connectAttr "polyCone1.out" "polyTweak2.ip";
connectAttr "polyTweak3.out" "polySmoothFace1.ip";
connectAttr "polySplitRing3.out" "polyTweak3.ip";
connectAttr "polyCylinder4.out" "polyTweak4.ip";
connectAttr "polyTweak4.out" "deleteComponent2.ig";
connectAttr "polyTweak5.out" "polySplitRing4.ip";
connectAttr "pCylinderShape4.wm" "polySplitRing4.mp";
connectAttr "polyCylinder5.out" "polyTweak5.ip";
connectAttr "polyTweak6.out" "polySplitRing5.ip";
connectAttr "pCylinderShape4.wm" "polySplitRing5.mp";
connectAttr "polySplitRing4.out" "polyTweak6.ip";
connectAttr "polyTweak7.out" "polySoftEdge1.ip";
connectAttr "pCylinderShape4.wm" "polySoftEdge1.mp";
connectAttr "polySplitRing5.out" "polyTweak7.ip";
connectAttr "polySoftEdge1.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyBridgeEdge1.ip";
connectAttr "pCylinderShape4.wm" "polyBridgeEdge1.mp";
connectAttr "polyTweak8.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape4.wm" "polyMergeVert1.mp";
connectAttr "polyBridgeEdge1.out" "polyTweak8.ip";
connectAttr "MASH1.outputPoints" "MASH1_Breakout.inputPoints";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "icosphereShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "hex1Shape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "hex1Shape.ciog.cog[0]" ":initialShadingGroup.dsm" -na;
connectAttr "MASH1_ReproMeshShape.iog.og[2]" ":initialShadingGroup.dsm" -na;
connectAttr "MASH1_ReproMeshShape.iog.og[3]" ":initialShadingGroup.dsm" -na;
connectAttr "MASH1_ReproMeshShape.iog.og[4]" ":initialShadingGroup.dsm" -na;
connectAttr "pConeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "MASH1_ReproMeshShape.iog.og[0]" ":initialShadingGroup.dsm" -na;
connectAttr "groupId2.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId3.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId4.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId5.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId8.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId9.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId10.msg" ":initialShadingGroup.gn" -na;
connectAttr "groupId11.msg" ":initialShadingGroup.gn" -na;
// End of hexsphere.ma
