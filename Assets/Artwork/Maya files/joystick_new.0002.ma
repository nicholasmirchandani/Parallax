//Maya ASCII 2019 scene
//Name: joystick_new.0002.ma
//Last modified: Mon, Nov 04, 2019 02:59:36 PM
//Codeset: 1252
requires maya "2019";
requires "mtoa" "3.2.2";
requires "stereoCamera" "10.0";
requires "mtoa" "3.2.2";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2019";
fileInfo "version" "2019";
fileInfo "cutIdentifier" "201907021615-48e59968a3";
fileInfo "osv" "Microsoft Windows 10 Technical Preview  (Build 18362)\n";
fileInfo "license" "education";
createNode transform -s -n "persp";
	rename -uid "826352D6-4F4E-3DB0-A7B6-3B9C8518BFEE";
	setAttr ".t" -type "double3" 29.274841245758509 16.05704365068139 6.6074381498515162 ;
	setAttr ".r" -type "double3" -14.738352726429536 -283.80000000007715 3.3334471333002638e-15 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F6EE01DD-44B8-9ACD-E4F2-0AA50A841833";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 29.50641726642294;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 1.5124039676817838 7.9477830342873057 -1.8303267829145042e-07 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "A5D31E9F-4102-F84D-6951-D0B584E14CC2";
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -90 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "87ADBAD1-4D33-4231-451B-12B4B18B503E";
	setAttr -k off ".v";
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
	rename -uid "A36929DD-4152-C8B3-3CED-DEA4D1DAF1B2";
	setAttr ".t" -type "double3" 1.1183315787350911 8.6079671741772259 1000.1003344978375 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "B7D0816E-4313-9993-86FA-C48118080EA5";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1161925955098;
	setAttr ".ow" 1.250655462920288;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 1.1183315787350911 8.6079671741772259 -0.015858097672366789 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "90DB6E5B-4C02-914A-611A-1EAE397A8F8F";
	setAttr ".t" -type "double3" 1000.1 0 0 ;
	setAttr ".r" -type "double3" 0 90 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4839D682-44FB-B0E7-30C1-51B4A11E87F2";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 30;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "joystick";
	rename -uid "4091F7E2-447C-3F17-246D-C0A2C5A0DAB1";
createNode transform -n "base" -p "joystick";
	rename -uid "2A266A86-4F1A-82DD-6F23-919FA62C75B0";
	setAttr ".t" -type "double3" 0 2.0667181542008253 0 ;
	setAttr ".s" -type "double3" 4.7666712963442421 4.7666712963442421 4.7666712963442421 ;
createNode mesh -n "baseShape" -p "base";
	rename -uid "3372AEC5-4ACE-5C2B-797D-0F878FCF05D4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.4374999925494194 0.3749999925494194 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape2" -p "base";
	rename -uid "945BD850-465F-A443-3902-6E86FE1EFCB0";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.25 0.125 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 14 ".uvst[0].uvsp[0:13]" -type "float2" 0.375 0 0.625 0 0.375
		 0.25 0.625 0.25 0.375 0.5 0.625 0.5 0.375 0.75 0.625 0.75 0.375 1 0.625 1 0.875 0
		 0.875 0.25 0.125 0 0.125 0.25;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 8 ".pt[0:7]" -type "float3"  -0.12936994 0.042880476 0.12936997 
		0.12936997 0.042880476 0.12936997 -0.12936994 -0.042880476 0.12936997 0.12936997 
		-0.042880476 0.12936997 -0.12936997 -0.042880476 -0.12936997 0.12936997 -0.042880476 
		-0.12936997 -0.12936997 0.042880476 -0.12936997 0.12936997 0.042880476 -0.12936997;
	setAttr -s 8 ".vt[0:7]"  -0.5 -0.5 0.5 0.5 -0.5 0.5 -0.5 0.5 0.5 0.5 0.5 0.5
		 -0.5 0.5 -0.5 0.5 0.5 -0.5 -0.5 -0.5 -0.5 0.5 -0.5 -0.5;
	setAttr -s 12 ".ed[0:11]"  0 1 0 2 3 0 4 5 0 6 7 0 0 2 0 1 3 0 2 4 0
		 3 5 0 4 6 0 5 7 0 6 0 0 7 1 0;
	setAttr -s 6 -ch 24 ".fc[0:5]" -type "polyFaces" 
		f 4 0 5 -2 -5
		mu 0 4 0 1 3 2
		f 4 1 7 -3 -7
		mu 0 4 2 3 5 4
		f 4 2 9 -4 -9
		mu 0 4 4 5 7 6
		f 4 3 11 -1 -11
		mu 0 4 6 7 9 8
		f 4 -12 -10 -8 -6
		mu 0 4 1 10 11 3
		f 4 10 4 6 8
		mu 0 4 12 0 2 13;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "stick" -p "joystick";
	rename -uid "1463E18C-48DF-B014-705D-0A938DE9E808";
	setAttr ".t" -type "double3" 0.41793259797870741 -0.61872066785675273 0 ;
	setAttr ".s" -type "double3" 1.2283115114283085 1.2283115114283085 1.2283115114283085 ;
	setAttr ".rp" -type "double3" 1.1846094808546213 8.2622938983344394 -1.4642614262441498e-07 ;
	setAttr ".sp" -type "double3" 0.96442105266694955 6.726546011709079 -1.1920928955078125e-07 ;
	setAttr ".spt" -type "double3" 0.2201884281876717 1.53574788662536 -2.7216853073633726e-08 ;
createNode transform -n "pCylinder3" -p "stick";
	rename -uid "81C4131E-46A7-7301-912F-80B60018D13F";
	setAttr ".t" -type "double3" 0 5.8605827263903185 0 ;
	setAttr ".r" -type "double3" 0 0 -9.6329949605087606 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "26CC3624-46BB-2AEF-50B4-6DB7EB08E2EA";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.48749986290931702 0.61347806453704834 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 17 ".pt";
	setAttr ".pt[65]" -type "float3" -0.080600634 0.027024757 0 ;
	setAttr ".pt[77]" -type "float3" -0.080600634 0.027024757 0 ;
	setAttr ".pt[82]" -type "float3" 0.017081564 0.0029127588 0 ;
	setAttr ".pt[83]" -type "float3" 0.097682208 -0.024111994 0 ;
	setAttr ".pt[93]" -type "float3" 0.097682208 -0.024111994 0 ;
	setAttr ".pt[94]" -type "float3" 0.017081564 0.0029127588 0 ;
	setAttr ".pt[95]" -type "float3" 0.017081564 0.0029127588 0 ;
	setAttr ".pt[96]" -type "float3" 0.097682208 -0.024111994 0 ;
	setAttr ".pt[106]" -type "float3" 0.097682208 -0.024111994 0 ;
	setAttr ".pt[107]" -type "float3" 0.017081564 0.0029127588 0 ;
	setAttr ".pt[195]" -type "float3" -0.080600634 0.027024757 0 ;
	setAttr ".pt[207]" -type "float3" -0.080600634 0.027024757 0 ;
	setAttr ".pt[255]" -type "float3" 0.097682208 -0.024111994 0 ;
	setAttr ".pt[258]" -type "float3" 0.097682208 -0.024111994 0 ;
	setAttr ".pt[269]" -type "float3" 0.097682208 -0.024111994 0 ;
	setAttr ".pt[270]" -type "float3" 0.097682208 -0.024111994 0 ;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode mesh -n "polySurfaceShape1" -p "pCylinder3";
	rename -uid "1683D647-4F51-B6DD-19D0-4192F89513EC";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.75546261668205261 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr -s 168 ".uvst[0].uvsp[0:167]" -type "float2" 0.64860266 0.10796607
		 0.62640899 0.064408496 0.59184152 0.029841021 0.54828393 0.0076473355 0.5 -7.4505806e-08
		 0.45171607 0.0076473504 0.40815851 0.029841051 0.37359107 0.064408526 0.3513974 0.1079661
		 0.34374997 0.15625 0.3513974 0.2045339 0.37359107 0.24809146 0.40815854 0.28265893
		 0.4517161 0.3048526 0.5 0.3125 0.54828387 0.3048526 0.59184146 0.28265893 0.62640893
		 0.24809146 0.6486026 0.2045339 0.65625 0.15625 0.375 0.3125 0.38749999 0.3125 0.39999998
		 0.3125 0.41249996 0.3125 0.42499995 0.3125 0.43749994 0.3125 0.44999993 0.3125 0.46249992
		 0.3125 0.4749999 0.3125 0.48749989 0.3125 0.49999988 0.3125 0.51249987 0.3125 0.52499986
		 0.3125 0.53749985 0.3125 0.54999983 0.3125 0.56249982 0.3125 0.57499981 0.3125 0.5874998
		 0.3125 0.59999979 0.3125 0.61249977 0.3125 0.62499976 0.3125 0.375 0.68843985 0.38749999
		 0.68843985 0.39999998 0.68843985 0.41249996 0.68843985 0.42499995 0.68843985 0.43749994
		 0.68843985 0.44999993 0.68843985 0.46249992 0.68843985 0.4749999 0.68843985 0.48749989
		 0.68843985 0.49999988 0.68843985 0.51249987 0.68843985 0.52499986 0.68843985 0.53749985
		 0.68843985 0.54999983 0.68843985 0.56249982 0.68843985 0.57499981 0.68843985 0.5874998
		 0.68843985 0.59999979 0.68843985 0.61249977 0.68843985 0.62499976 0.68843985 0.64860266
		 0.79546607 0.62640899 0.75190848 0.59184152 0.71734101 0.54828393 0.69514734 0.5
		 0.68749994 0.45171607 0.69514734 0.40815851 0.71734107 0.37359107 0.75190854 0.3513974
		 0.79546607 0.34374997 0.84375 0.3513974 0.89203393 0.37359107 0.93559146 0.40815854
		 0.97015893 0.4517161 0.9923526 0.5 1 0.54828387 0.9923526 0.59184146 0.97015893 0.62640893
		 0.93559146 0.6486026 0.89203393 0.65625 0.84375 0.5 0.15000001 0.5 0.83749998 0.5874998
		 0.47035047 0.57499981 0.47035047 0.56249982 0.47035047 0.54999983 0.47035047 0.53749985
		 0.47035047 0.52499986 0.47035047 0.51249987 0.47035047 0.49999988 0.47035047 0.48749989
		 0.47035047 0.4749999 0.47035047 0.46249992 0.47035047 0.44999993 0.47035047 0.43749994
		 0.47035047 0.42499995 0.47035047 0.41249996 0.47035047 0.39999998 0.47035047 0.38749999
		 0.47035047 0.62499976 0.47035047 0.375 0.47035047 0.61249977 0.47035047 0.59999979
		 0.47035047 0.57499981 0.47924963 0.56249976 0.47924963 0.54999983 0.47924963 0.53749985
		 0.47924963 0.52499986 0.47924963 0.51249987 0.47924963 0.49999985 0.47924963 0.48749989
		 0.47924963 0.4749999 0.47924963 0.46249992 0.47924963 0.44999993 0.47924963 0.43749994
		 0.47924963 0.42499995 0.47924963 0.41249996 0.47924963 0.39999995 0.47924963 0.38749996
		 0.47924963 0.62499976 0.47924963 0.37499997 0.47924963 0.61249971 0.47924963 0.59999979
		 0.47924963 0.58749974 0.47924963 0.59999979 0.51092523 0.58749974 0.51092523 0.57499981
		 0.51092523 0.56249976 0.51092523 0.54999983 0.51092523 0.53749985 0.51092523 0.52499986
		 0.51092523 0.51249987 0.51092523 0.49999985 0.51092523 0.48749989 0.51092523 0.4749999
		 0.51092523 0.46249992 0.51092523 0.44999993 0.51092523 0.43749991 0.51092523 0.42499992
		 0.51092523 0.41249996 0.51092523 0.39999998 0.51092523 0.38749996 0.51092523 0.62499976
		 0.51092523 0.37499997 0.51092523 0.61249971 0.51092523 0.59999979 0.60826027 0.58749974
		 0.60826027 0.57499981 0.60826027 0.56249976 0.60826027 0.54999983 0.60826027 0.53749985
		 0.60826027 0.52499986 0.60826027 0.51249987 0.60826027 0.49999988 0.60826027 0.48749989
		 0.60826027 0.4749999 0.60826027 0.46249992 0.60826027 0.44999993 0.60826027 0.43749994
		 0.60826027 0.42499995 0.60826027 0.41249996 0.60826027 0.39999998 0.60826027 0.38749999
		 0.60826027 0.62499976 0.60826027 0.375 0.60826027 0.61249971 0.60826027;
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 15 ".pt";
	setAttr ".pt[20]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".pt[21]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".pt[36]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".pt[37]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".pt[38]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".pt[39]" -type "float3" 0 7.4505806e-09 0 ;
	setAttr ".pt[102]" -type "float3" 2.7939677e-08 5.9604645e-08 0 ;
	setAttr ".pt[103]" -type "float3" -6.7986548e-08 7.4505806e-09 0 ;
	setAttr ".pt[104]" -type "float3" 1.3969839e-09 -7.4505806e-09 0 ;
	setAttr ".pt[105]" -type "float3" -5.9604645e-08 -5.9604645e-08 0 ;
	setAttr ".pt[117]" -type "float3" 1.3038516e-08 -5.9604645e-08 0 ;
	setAttr ".pt[118]" -type "float3" -9.778887e-09 -3.1664968e-08 0 ;
	setAttr ".pt[119]" -type "float3" -5.4016709e-08 -1.4901161e-08 0 ;
	setAttr ".pt[120]" -type "float3" -1.0058284e-07 4.4703484e-08 0 ;
	setAttr ".pt[121]" -type "float3" -1.3038516e-08 0 0 ;
	setAttr -s 122 ".vt[0:121]"  0.59586537 -2.20963597 -0.15340754 0.50687337 -2.20963597 -0.29179856
		 0.36826503 -2.20963597 -0.40162614 0.19360831 -2.20963597 -0.47213978 -4.4521158e-08 -2.20963597 -0.49643707
		 -0.19360834 -2.20963597 -0.47213972 -0.368265 -2.20963597 -0.40162602 -0.50687319 -2.20963597 -0.29179838
		 -0.59586513 -2.20963597 -0.15340751 -0.62652969 -2.20963597 -5.2915166e-08 -0.59586513 -2.20963597 0.15340741
		 -0.50687313 -2.20963597 0.29179826 -0.36826491 -2.20963597 0.4016259 -0.19360834 -2.20963597 0.47213957
		 -6.3193184e-08 -2.20963597 0.49643689 0.19360816 -2.20963597 0.47213951 0.36826476 -2.20963597 0.40162587
		 0.50687295 -2.20963597 0.29179826 0.59586489 -2.20963597 0.15340735 0.62652946 -2.20963597 -5.2915166e-08
		 1.70776725 2.32927132 -0.16302517 1.66765165 2.33363032 -0.31009221 1.53910208 2.36816502 -0.42680535
		 1.27619004 2.45406795 -0.50173974 0.98474991 2.54929209 -0.52756035 0.69330966 2.64451647 -0.50173968
		 0.43039787 2.73041987 -0.42680523 0.22174984 2.79859281 -0.31009212 0.087789707 2.8423624 -0.16302511
		 0.041630276 2.85744476 -4.9759983e-08 0.087789707 2.8423624 0.16302501 0.2217499 2.79859281 0.31009203
		 0.43039811 2.73041987 0.42680505 0.69330966 2.64451647 0.50173944 0.98474991 2.54929209 0.52756006
		 1.27618992 2.45406818 0.50173938 1.5391016 2.36816502 0.42680499 1.6676513 2.33363032 0.31009197
		 1.70776689 2.32927108 0.16302498 1.71976566 2.3285358 -4.9759983e-08 -4.4521158e-08 -2.20963597 -5.2915166e-08
		 0.98474991 2.54929209 -4.9759983e-08 0.61718315 -0.83085191 0.35530198 0.44840974 -0.83085191 0.4890312
		 0.2357429 -0.83085191 0.57489061 -5.1002466e-08 -0.83085191 0.60447574 -0.23574308 -0.83085191 0.57489073
		 -0.44840986 -0.83085191 0.48903123 -0.61718333 -0.83085191 0.35530198 -0.72554231 -0.83085191 0.18679325
		 -0.76288062 -0.83085191 -3.3596287e-08 -0.72554231 -0.83085191 -0.18679336 -0.61718339 -0.83085191 -0.35530198
		 -0.44840997 -0.83085191 -0.48903134 -0.23574308 -0.83085191 -0.57489085 -2.8266861e-08 -0.83085191 -0.60447598
		 0.23574308 -0.83085191 -0.57489097 0.44841012 -0.83085191 -0.48903152 0.6171838 -0.83085191 -0.35530221
		 0.72554278 -0.83085191 -0.18679339 0.76288038 -0.83085191 -3.3596287e-08 0.72554219 -0.83085191 0.18679319
		 0.64040041 -0.38236779 0.63602328 0.37748861 -0.29646468 0.74769032 0.086048618 -0.20124044 0.7861681
		 -0.20539139 -0.10601607 0.74769032 -0.46830323 -0.020113051 0.63602334 -0.67695123 0.04806 0.46209806
		 -0.81091142 0.091829777 0.24293934 -0.8570711 0.10691178 -1.1071883e-09 -0.81091142 0.091829777 -0.24293934
		 -0.67695129 0.04806 -0.46209809 -0.46830332 -0.020112991 -0.63602352 -0.20539148 -0.10601604 -0.74769056
		 0.086048648 -0.20124045 -0.7861684 0.37748879 -0.29646474 -0.74769068 0.64040077 -0.38236785 -0.6360237
		 0.84904891 -0.45054096 -0.46209824 0.98300916 -0.49431074 -0.24293944 1.029168129 -0.50939268 -1.1071883e-09
		 0.98300868 -0.49431056 0.24293929 0.84904832 -0.45054078 0.462098 0.77597123 -0.13606219 0.24060711
		 0.69474477 -0.083341897 0.44478804 0.55955076 -0.0027015172 0.58459955 0.37414113 0.096355982 0.64635611
		 0.14899385 0.20283207 0.63196874 -0.0967822 0.30580693 0.55571997 -0.33619863 0.39569786 0.43794727
		 -0.54578888 0.46661171 0.31009203 -0.67744797 0.50941515 0.16302501 -0.7209897 0.52339762 -4.9759983e-08
		 -0.67744797 0.50941515 -0.16302511 -0.545789 0.46661168 -0.31009215 -0.33619872 0.39569795 -0.43794748
		 -0.096782304 0.30580699 -0.55572015 0.14899385 0.20283207 -0.63196909 0.37414128 0.096355915 -0.6463564
		 0.55955106 -0.0027016588 -0.58459997 0.69474506 -0.083342128 -0.44478834 0.77597153 -0.13606234 -0.24060729
		 0.80295032 -0.15439977 -1.1071859e-09 1.041197062 1.41030693 0.16302498 0.86373073 1.47234809 0.31009197
		 0.6030125 1.56238878 0.42680493 0.30170345 1.66441751 0.50173938 0.15538061 1.69869757 0.52756006
		 0.036129236 1.721609 0.50173938 -0.10344179 1.75571382 0.42680505 -0.23580442 1.79184949 0.31009203
		 -0.33086094 1.8192811 0.16302501 -0.36544028 1.8295002 -4.9759983e-08 -0.33086094 1.8192811 -0.16302511
		 -0.23580442 1.79184949 -0.31009212 -0.10344192 1.75571382 -0.42680523 0.036129236 1.721609 -0.50173968
		 0.15538067 1.69869757 -0.52756035 0.30170381 1.66441727 -0.50173974 0.60301268 1.56238914 -0.42680535
		 0.86373127 1.47234809 -0.31009221 1.041197658 1.41030669 -0.16302517 1.10417235 1.38816321 -4.9759983e-08;
	setAttr -s 260 ".ed";
	setAttr ".ed[0:165]"  0 1 0 1 2 0 2 3 0 3 4 0 4 5 0 5 6 0 6 7 0 7 8 0 8 9 0
		 9 10 0 10 11 0 11 12 0 12 13 0 13 14 0 14 15 0 15 16 0 16 17 0 17 18 0 18 19 0 19 0 0
		 20 21 0 21 22 0 22 23 0 23 24 0 24 25 0 25 26 0 26 27 0 27 28 0 28 29 0 29 30 0 30 31 0
		 31 32 0 32 33 0 33 34 0 34 35 0 35 36 0 36 37 0 37 38 0 38 39 0 39 20 0 0 59 1 1 58 1
		 2 57 1 3 56 1 4 55 1 5 54 1 6 53 1 7 52 1 8 51 1 9 50 1 10 49 1 11 48 1 12 47 1 13 46 1
		 14 45 1 15 44 1 16 43 1 17 42 1 18 61 1 19 60 1 40 0 1 40 1 1 40 2 1 40 3 1 40 4 1
		 40 5 1 40 6 1 40 7 1 40 8 1 40 9 1 40 10 1 40 11 1 40 12 1 40 13 1 40 14 1 40 15 1
		 40 16 1 40 17 1 40 18 1 40 19 1 20 41 1 21 41 1 22 41 1 23 41 1 24 41 1 25 41 1 26 41 1
		 27 41 1 28 41 1 29 41 1 30 41 1 31 41 1 32 41 1 33 41 1 34 41 1 35 41 1 36 41 1 37 41 1
		 38 41 1 39 41 1 42 81 1 43 62 1 42 43 1 44 63 1 43 44 1 45 64 1 44 45 1 46 65 1 45 46 1
		 47 66 1 46 47 1 48 67 1 47 48 1 49 68 1 48 49 1 50 69 1 49 50 1 51 70 1 50 51 1 52 71 1
		 51 52 1 53 72 1 52 53 1 54 73 1 53 54 1 55 74 1 54 55 1 56 75 1 55 56 1 57 76 1 56 57 1
		 58 77 1 57 58 1 59 78 1 58 59 1 60 79 1 59 60 1 61 80 1 60 61 1 61 42 1 62 84 1 63 85 1
		 62 63 1 64 86 1 63 64 1 65 87 1 64 65 1 66 88 1 65 66 1 67 89 1 66 67 1 68 90 1 67 68 1
		 69 91 1 68 69 1 70 92 1 69 70 1 71 93 1 70 71 1 72 94 1 71 72 1 73 95 1 72 73 1 74 96 1
		 73 74 1 75 97 1;
	setAttr ".ed[166:259]" 74 75 1 76 98 1 75 76 1 77 99 1 76 77 1 78 100 1 77 78 1
		 79 101 1 78 79 1 80 82 1 79 80 1 81 83 1 80 81 1 81 62 1 82 102 1 83 103 1 82 83 1
		 84 104 1 83 84 1 85 105 1 84 85 1 86 106 1 85 86 1 87 107 1 86 87 1 88 108 1 87 88 1
		 89 109 1 88 89 1 90 110 1 89 90 1 91 111 1 90 91 1 92 112 1 91 92 1 93 113 1 92 93 1
		 94 114 1 93 94 1 95 115 1 94 95 1 96 116 1 95 96 1 97 117 1 96 97 1 98 118 1 97 98 1
		 99 119 1 98 99 1 100 120 1 99 100 1 101 121 1 100 101 1 101 82 1 102 38 1 103 37 1
		 102 103 1 104 36 1 103 104 1 105 35 1 104 105 1 106 34 1 105 106 1 107 33 1 106 107 1
		 108 32 1 107 108 1 109 31 1 108 109 1 110 30 1 109 110 1 111 29 1 110 111 1 112 28 1
		 111 112 1 113 27 1 112 113 1 114 26 1 113 114 1 115 25 1 114 115 1 116 24 1 115 116 1
		 117 23 1 116 117 1 118 22 1 117 118 1 119 21 1 118 119 1 120 20 1 119 120 1 121 39 1
		 120 121 1 121 102 1;
	setAttr -s 140 -ch 520 ".fc[0:139]" -type "polyFaces" 
		f 4 0 41 134 -41
		mu 0 4 20 21 100 102
		f 4 1 42 132 -42
		mu 0 4 21 22 99 100
		f 4 2 43 130 -43
		mu 0 4 22 23 98 99
		f 4 3 44 128 -44
		mu 0 4 23 24 97 98
		f 4 4 45 126 -45
		mu 0 4 24 25 96 97
		f 4 5 46 124 -46
		mu 0 4 25 26 95 96
		f 4 6 47 122 -47
		mu 0 4 26 27 94 95
		f 4 7 48 120 -48
		mu 0 4 27 28 93 94
		f 4 8 49 118 -49
		mu 0 4 28 29 92 93
		f 4 9 50 116 -50
		mu 0 4 29 30 91 92
		f 4 10 51 114 -51
		mu 0 4 30 31 90 91
		f 4 11 52 112 -52
		mu 0 4 31 32 89 90
		f 4 12 53 110 -53
		mu 0 4 32 33 88 89
		f 4 13 54 108 -54
		mu 0 4 33 34 87 88
		f 4 14 55 106 -55
		mu 0 4 34 35 86 87
		f 4 15 56 104 -56
		mu 0 4 35 36 85 86
		f 4 16 57 102 -57
		mu 0 4 36 37 84 85
		f 4 17 58 139 -58
		mu 0 4 37 38 104 84
		f 4 18 59 138 -59
		mu 0 4 38 39 103 104
		f 4 19 40 136 -60
		mu 0 4 39 40 101 103
		f 3 -1 -61 61
		mu 0 3 1 0 82
		f 3 -2 -62 62
		mu 0 3 2 1 82
		f 3 -3 -63 63
		mu 0 3 3 2 82
		f 3 -4 -64 64
		mu 0 3 4 3 82
		f 3 -5 -65 65
		mu 0 3 5 4 82
		f 3 -6 -66 66
		mu 0 3 6 5 82
		f 3 -7 -67 67
		mu 0 3 7 6 82
		f 3 -8 -68 68
		mu 0 3 8 7 82
		f 3 -9 -69 69
		mu 0 3 9 8 82
		f 3 -10 -70 70
		mu 0 3 10 9 82
		f 3 -11 -71 71
		mu 0 3 11 10 82
		f 3 -12 -72 72
		mu 0 3 12 11 82
		f 3 -13 -73 73
		mu 0 3 13 12 82
		f 3 -14 -74 74
		mu 0 3 14 13 82
		f 3 -15 -75 75
		mu 0 3 15 14 82
		f 3 -16 -76 76
		mu 0 3 16 15 82
		f 3 -17 -77 77
		mu 0 3 17 16 82
		f 3 -18 -78 78
		mu 0 3 18 17 82
		f 3 -19 -79 79
		mu 0 3 19 18 82
		f 3 -20 -80 60
		mu 0 3 0 19 82
		f 3 20 81 -81
		mu 0 3 80 79 83
		f 3 21 82 -82
		mu 0 3 79 78 83
		f 3 22 83 -83
		mu 0 3 78 77 83
		f 3 23 84 -84
		mu 0 3 77 76 83
		f 3 24 85 -85
		mu 0 3 76 75 83
		f 3 25 86 -86
		mu 0 3 75 74 83
		f 3 26 87 -87
		mu 0 3 74 73 83
		f 3 27 88 -88
		mu 0 3 73 72 83
		f 3 28 89 -89
		mu 0 3 72 71 83
		f 3 29 90 -90
		mu 0 3 71 70 83
		f 3 30 91 -91
		mu 0 3 70 69 83
		f 3 31 92 -92
		mu 0 3 69 68 83
		f 3 32 93 -93
		mu 0 3 68 67 83
		f 3 33 94 -94
		mu 0 3 67 66 83
		f 3 34 95 -95
		mu 0 3 66 65 83
		f 3 35 96 -96
		mu 0 3 65 64 83
		f 3 36 97 -97
		mu 0 3 64 63 83
		f 3 37 98 -98
		mu 0 3 63 62 83
		f 3 38 99 -99
		mu 0 3 62 81 83
		f 3 39 80 -100
		mu 0 3 81 80 83
		f 4 -103 100 179 -102
		mu 0 4 85 84 125 105
		f 4 -105 101 142 -104
		mu 0 4 86 85 105 106
		f 4 -107 103 144 -106
		mu 0 4 87 86 106 107
		f 4 -109 105 146 -108
		mu 0 4 88 87 107 108
		f 4 -111 107 148 -110
		mu 0 4 89 88 108 109
		f 4 -113 109 150 -112
		mu 0 4 90 89 109 110
		f 4 -115 111 152 -114
		mu 0 4 91 90 110 111
		f 4 -117 113 154 -116
		mu 0 4 92 91 111 112
		f 4 -119 115 156 -118
		mu 0 4 93 92 112 113
		f 4 -121 117 158 -120
		mu 0 4 94 93 113 114
		f 4 -123 119 160 -122
		mu 0 4 95 94 114 115
		f 4 -125 121 162 -124
		mu 0 4 96 95 115 116
		f 4 -127 123 164 -126
		mu 0 4 97 96 116 117
		f 4 -129 125 166 -128
		mu 0 4 98 97 117 118
		f 4 -131 127 168 -130
		mu 0 4 99 98 118 119
		f 4 -133 129 170 -132
		mu 0 4 100 99 119 120
		f 4 -135 131 172 -134
		mu 0 4 102 100 120 122
		f 4 -137 133 174 -136
		mu 0 4 103 101 121 123
		f 4 -139 135 176 -138
		mu 0 4 104 103 123 124
		f 4 -140 137 178 -101
		mu 0 4 84 104 124 125
		f 4 -143 140 186 -142
		mu 0 4 106 105 128 129
		f 4 -145 141 188 -144
		mu 0 4 107 106 129 130
		f 4 -147 143 190 -146
		mu 0 4 108 107 130 131
		f 4 -149 145 192 -148
		mu 0 4 109 108 131 132
		f 4 -151 147 194 -150
		mu 0 4 110 109 132 133
		f 4 -153 149 196 -152
		mu 0 4 111 110 133 134
		f 4 -155 151 198 -154
		mu 0 4 112 111 134 135
		f 4 -157 153 200 -156
		mu 0 4 113 112 135 136
		f 4 -159 155 202 -158
		mu 0 4 114 113 136 137
		f 4 -161 157 204 -160
		mu 0 4 115 114 137 138
		f 4 -163 159 206 -162
		mu 0 4 116 115 138 139
		f 4 -165 161 208 -164
		mu 0 4 117 116 139 140
		f 4 -167 163 210 -166
		mu 0 4 118 117 140 141
		f 4 -169 165 212 -168
		mu 0 4 119 118 141 142
		f 4 -171 167 214 -170
		mu 0 4 120 119 142 143
		f 4 -173 169 216 -172
		mu 0 4 122 120 143 145
		f 4 -175 171 218 -174
		mu 0 4 123 121 144 146
		f 4 -177 173 219 -176
		mu 0 4 124 123 146 126
		f 4 -179 175 182 -178
		mu 0 4 125 124 126 127
		f 4 -180 177 184 -141
		mu 0 4 105 125 127 128
		f 4 -183 180 222 -182
		mu 0 4 127 126 147 148
		f 4 -185 181 224 -184
		mu 0 4 128 127 148 149
		f 4 -187 183 226 -186
		mu 0 4 129 128 149 150
		f 4 -189 185 228 -188
		mu 0 4 130 129 150 151
		f 4 -191 187 230 -190
		mu 0 4 131 130 151 152
		f 4 -193 189 232 -192
		mu 0 4 132 131 152 153
		f 4 -195 191 234 -194
		mu 0 4 133 132 153 154
		f 4 -197 193 236 -196
		mu 0 4 134 133 154 155
		f 4 -199 195 238 -198
		mu 0 4 135 134 155 156
		f 4 -201 197 240 -200
		mu 0 4 136 135 156 157
		f 4 -203 199 242 -202
		mu 0 4 137 136 157 158
		f 4 -205 201 244 -204
		mu 0 4 138 137 158 159
		f 4 -207 203 246 -206
		mu 0 4 139 138 159 160
		f 4 -209 205 248 -208
		mu 0 4 140 139 160 161
		f 4 -211 207 250 -210
		mu 0 4 141 140 161 162
		f 4 -213 209 252 -212
		mu 0 4 142 141 162 163
		f 4 -215 211 254 -214
		mu 0 4 143 142 163 164
		f 4 -217 213 256 -216
		mu 0 4 145 143 164 166
		f 4 -219 215 258 -218
		mu 0 4 146 144 165 167
		f 4 -220 217 259 -181
		mu 0 4 126 146 167 147
		f 4 -223 220 -38 -222
		mu 0 4 148 147 59 58
		f 4 -225 221 -37 -224
		mu 0 4 149 148 58 57
		f 4 -227 223 -36 -226
		mu 0 4 150 149 57 56
		f 4 -229 225 -35 -228
		mu 0 4 151 150 56 55
		f 4 -231 227 -34 -230
		mu 0 4 152 151 55 54
		f 4 -233 229 -33 -232
		mu 0 4 153 152 54 53
		f 4 -235 231 -32 -234
		mu 0 4 154 153 53 52
		f 4 -237 233 -31 -236
		mu 0 4 155 154 52 51
		f 4 -239 235 -30 -238
		mu 0 4 156 155 51 50
		f 4 -241 237 -29 -240
		mu 0 4 157 156 50 49
		f 4 -243 239 -28 -242
		mu 0 4 158 157 49 48
		f 4 -245 241 -27 -244
		mu 0 4 159 158 48 47
		f 4 -247 243 -26 -246
		mu 0 4 160 159 47 46
		f 4 -249 245 -25 -248
		mu 0 4 161 160 46 45
		f 4 -251 247 -24 -250
		mu 0 4 162 161 45 44
		f 4 -253 249 -23 -252
		mu 0 4 163 162 44 43
		f 4 -255 251 -22 -254
		mu 0 4 164 163 43 42
		f 4 -257 253 -21 -256
		mu 0 4 166 164 42 41
		f 4 -259 255 -40 -258
		mu 0 4 167 165 61 60
		f 4 -260 257 -39 -221
		mu 0 4 147 167 60 59;
	setAttr ".cd" -type "dataPolyComponent" Index_Data Edge 0 ;
	setAttr ".cvd" -type "dataPolyComponent" Index_Data Vertex 0 ;
	setAttr ".pd[0]" -type "dataPolyComponent" Index_Data UV 0 ;
	setAttr ".hfd" -type "dataPolyComponent" Index_Data Face 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3" -p "stick";
	rename -uid "39591375-4EAF-98CD-2216-4BA1EF3E1C2C";
	setAttr ".t" -type "double3" 1.4780173340441534 8.6356819828632112 0 ;
	setAttr ".r" -type "double3" 0 0 -28.585933555713407 ;
	setAttr ".s" -type "double3" 2.92443750667017 0.68574851615117138 1.3560588727730492 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "84678FF6-456A-5F44-64F0-959C747AEBB4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54486995935440063 0.37482830882072449 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 2 ".pt[52:53]" -type "float3"  0 -2.9802322e-08 0 0 -2.9802322e-08 
		0;
	setAttr ".dr" 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "90993D03-4A3E-BB1A-9403-408EE45D76A3";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "A21FFF10-4719-769E-68A6-558696F26965";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "DCF4B24F-41F3-F733-013E-2BAC05583433";
createNode displayLayerManager -n "layerManager";
	rename -uid "F7E78BEA-43D1-1B97-9315-EDB7A575F639";
createNode displayLayer -n "defaultLayer";
	rename -uid "5C816F91-4F5A-0FDE-B89D-97BA59A795AA";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "A4218210-4CDB-4829-9EAA-36A3DB5897A1";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "B25C38AB-413C-A92E-E1CB-59A137CF605F";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "8047F8EE-4D09-0543-F456-28856C96ACBD";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $nodeEditorPanelVisible = stringArrayContains(\"nodeEditorPanel1\", `getPanel -vis`);\n\tint    $nodeEditorWorkspaceControlOpen = (`workspaceControl -exists nodeEditorPanel1Window` && `workspaceControl -q -visible nodeEditorPanel1Window`);\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\n\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n"
		+ "            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n"
		+ "            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 574\n            -height 415\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n"
		+ "            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n"
		+ "            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 574\n            -height 414\n"
		+ "            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n"
		+ "            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n"
		+ "            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n"
		+ "            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 574\n            -height 414\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 32768\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -controllers 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n"
		+ "            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1159\n            -height 877\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n"
		+ "            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -organizeByClip 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showParentContainers 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n"
		+ "                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n"
		+ "                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n"
		+ "                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n"
		+ "            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -organizeByClip 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showParentContainers 1\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n"
		+ "                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n"
		+ "                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n"
		+ "\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -autoFitTime 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n\tif ($nodeEditorPanelVisible || $nodeEditorWorkspaceControlOpen) {\n"
		+ "\t\tif (\"\" == $panelName) {\n\t\t\tif ($useSceneConfig) {\n\t\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\t}\n\t\t} else {\n\t\t\t$label = `panel -q -label $panelName`;\n\t\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -connectNodeOnCreation 0\n                -connectOnDrop 0\n                -copyConnectionsOnPaste 0\n                -connectionStyle \"bezier\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n"
		+ "                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -crosshairOnEdgeDragging 0\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -editorMode \"default\" \n                -hasWatchpoint 0\n                $editorName;\n\t\t\tif (!$useSceneConfig) {\n\t\t\t\tpanel -e -l $label $panelName;\n\t\t\t}\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n"
		+ "\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" != $panelName) {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\n{ string $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 32768\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n"
		+ "                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -controllers 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName; };\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n"
		+ "\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1159\\n    -height 877\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 32768\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -controllers 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1159\\n    -height 877\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "7BB6DA73-44A2-A5CB-A447-F19A18EF1CB6";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode polySplitRing -n "polySplitRing1";
	rename -uid "1253D79A-42F6-E589-F07A-28A15E9DA97D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[220:221]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]" "e[239]" "e[241]" "e[243]" "e[245]" "e[247]" "e[249]" "e[251]" "e[253]" "e[255]" "e[257]";
	setAttr ".ix" -type "matrix" 0.98589983634985079 -0.16733652525774928 0 0 0.16733652525774928 0.98589983634985079 0 0
		 0 0 1 0 0 5.8605827263903185 0 1;
	setAttr ".wt" 0.12518693506717682;
	setAttr ".re" 223;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyBevel3 -n "polyBevel1";
	rename -uid "A45BD927-4551-F265-986B-D58BBE3BD522";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[142]" "e[144]" "e[146]" "e[148]" "e[150]" "e[152]" "e[154]" "e[156]" "e[158]" "e[160]" "e[162]" "e[164]" "e[166]" "e[168]" "e[170]" "e[172]" "e[174]" "e[176]" "e[178:179]";
	setAttr ".ix" -type "matrix" 0.98589983634985079 -0.16733652525774928 0 0 0.16733652525774928 0.98589983634985079 0 0
		 0 0 1 0 0 5.8605827263903185 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode deleteComponent -n "deleteComponent1";
	rename -uid "40EF7ADF-4B9D-2DC4-B8CF-E98BECA4A9AB";
	setAttr ".dc" -type "componentList" 1 "f[157:158]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "6BC8EE9A-4829-46E6-9C09-DF82BA1C584F";
	setAttr ".ics" -type "componentList" 2 "e[117]" "e[294]";
	setAttr ".ix" -type "matrix" 0.98589983634985079 -0.16733652525774928 0 0 0.16733652525774928 0.98589983634985079 0 0
		 0 0 1 0 0 5.8605827263903185 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 60;
	setAttr ".sv2" 154;
	setAttr ".d" 1;
createNode polyBridgeEdge -n "polyBridgeEdge2";
	rename -uid "5FBB2DED-41D1-37BD-76AC-7BB990E8B1CC";
	setAttr ".ics" -type "componentList" 2 "e[118]" "e[297]";
	setAttr ".ix" -type "matrix" 0.98589983634985079 -0.16733652525774928 0 0 0.16733652525774928 0.98589983634985079 0 0
		 0 0 1 0 0 5.8605827263903185 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 61;
	setAttr ".sv2" 156;
	setAttr ".d" 1;
createNode polyMergeVert -n "polyMergeVert1";
	rename -uid "25CC50C8-4078-C1B5-7662-A6B321903EF7";
	setAttr ".ics" -type "componentList" 7 "vtx[42]" "vtx[46:52]" "vtx[58:61]" "vtx[154]" "vtx[156]" "vtx[158]" "vtx[160]";
	setAttr ".ix" -type "matrix" 0.98589983634985079 -0.16733652525774928 0 0 0.16733652525774928 0.98589983634985079 0 0
		 0 0 1 0 0 5.8605827263903185 0 1;
	setAttr ".am" yes;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "2F0631AE-4803-50F2-5BFD-7B865E4C8E27";
	setAttr ".ics" -type "componentList" 2 "f[140:157]" "f[178:179]";
	setAttr ".ix" -type "matrix" 0.98589983634985079 -0.16733652525774928 0 0 0.16733652525774928 0.98589983634985079 0 0
		 0 0 1 0 0 5.8605827263903185 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -0.032837976 5.4291658 -1.1920929e-07 ;
	setAttr ".rs" 53598;
	setAttr ".lt" -type "double3" 3.1225022567582528e-16 8.3266726846886741e-17 0.095832322512467955 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.89115539576199254 4.9137900018753546 -0.74648153781890869 ;
	setAttr ".cbx" -type "double3" 0.80314791646709172 5.9713156882063538 0.74648129940032959 ;
createNode polySplitRing -n "polySplitRing2";
	rename -uid "7A4C4998-49EB-701A-3AD5-8E9146ECA20B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 19 "e[200:201]" "e[203]" "e[205]" "e[207]" "e[209]" "e[211]" "e[213]" "e[215]" "e[217]" "e[219]" "e[221]" "e[223]" "e[225]" "e[227]" "e[229]" "e[231]" "e[233]" "e[235]" "e[237]";
	setAttr ".ix" -type "matrix" 0.98589983634985079 -0.16733652525774928 0 0 0.16733652525774928 0.98589983634985079 0 0
		 0 0 1 0 0 5.8605827263903185 0 1;
	setAttr ".wt" 0.83111840486526489;
	setAttr ".dr" no;
	setAttr ".re" 227;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "E04D2F5D-481D-4D27-CC9E-3EAFD342EDDF";
	setAttr ".ics" -type "componentList" 1 "f[220:239]";
	setAttr ".ix" -type "matrix" 0.98589983634985079 -0.16733652525774928 0 0 0.16733652525774928 0.98589983634985079 0 0
		 0 0 1 0 0 5.8605827263903185 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.2562888 8.1999998 -1.4901161e-07 ;
	setAttr ".rs" 48209;
	setAttr ".lt" -type "double3" 8.8817841970012523e-16 4.2327252813834093e-16 0.1052898277577075 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.42456955503019694 7.7347102445239901 -0.52756035327911377 ;
	setAttr ".cbx" -type "double3" 2.085165814661861 8.6707708262790106 0.52756005525588989 ;
createNode polyDelEdge -n "polyDelEdge2";
	rename -uid "660AE1C2-4B2C-EEC1-8135-1091337863DB";
	setAttr ".ics" -type "componentList" 1 "e[86]";
	setAttr ".cv" yes;
createNode deleteComponent -n "deleteComponent6";
	rename -uid "CA7F0665-43FD-C2CA-19A2-C98567038B5C";
	setAttr ".dc" -type "componentList" 2 "e[85]" "e[89]";
createNode polySplit -n "polySplit16";
	rename -uid "3C64000E-4517-1E2D-A09C-9E8C883936BE";
	setAttr -s 4 ".e[0:3]"  1 0.58772701 0.40584099 0;
	setAttr -s 4 ".d[0:3]"  -2147483635 -2147483562 -2147483640 -2147483563;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "48D90FB6-4010-ABB0-B644-F4AAD6210AC2";
	setAttr ".dc" -type "componentList" 1 "e[93:94]";
createNode polySplit -n "polySplit15";
	rename -uid "A6FCD96C-4A56-5ADB-48DC-888F6E32E1A1";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483548 -2147483560;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit14";
	rename -uid "EB189ABB-448E-C957-C161-94A8DAC3D565";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483550 -2147483565;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "7FAE92AF-4F17-42CB-9978-F2A8C0DC0C3C";
	setAttr ".dc" -type "componentList" 2 "e[98]" "e[101]";
createNode polySplit -n "polySplit13";
	rename -uid "1D4A74D8-4C55-BC10-BB5F-EF98E7C42B0D";
	setAttr -s 3 ".e[0:2]"  1 0.5 0;
	setAttr -s 3 ".d[0:2]"  -2147483567 -2147483555 -2147483578;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit12";
	rename -uid "D27E4994-4C6D-FC47-D3BC-FFB796EA44D5";
	setAttr -s 3 ".e[0:2]"  1 0.5 0;
	setAttr -s 3 ".d[0:2]"  -2147483568 -2147483554 -2147483579;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing7";
	rename -uid "5CFBA522-48CA-49D7-E99B-599CF99506EC";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[80:81]";
	setAttr ".ix" -type "matrix" 2.5679499507862422 -1.3992740191528523 0 0 0.32811440837233669 0.60215609473126219 0 0
		 0 0 1.3560588727730492 0 1.4780173340441534 8.6356819828632112 0 1;
	setAttr ".wt" 0.54314059019088745;
	setAttr ".dr" no;
	setAttr ".re" 80;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplit -n "polySplit11";
	rename -uid "DE8E622F-4C59-8CCD-5340-8C90C46D7DD4";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483579 -2147483565;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit10";
	rename -uid "FBFCF711-4DF0-AD16-2F81-12A9C57804C5";
	setAttr -s 2 ".e[0:1]"  0 0;
	setAttr -s 2 ".d[0:1]"  -2147483558 -2147483560;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing6";
	rename -uid "EF798651-4031-18BC-127C-62B1EFD18890";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[69:70]";
	setAttr ".ix" -type "matrix" 2.5679499507862422 -1.3992740191528523 0 0 0.32811440837233669 0.60215609473126219 0 0
		 0 0 1.3560588727730492 0 1.4780173340441534 8.6356819828632112 0 1;
	setAttr ".wt" 0.53513181209564209;
	setAttr ".dr" no;
	setAttr ".re" 69;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing5";
	rename -uid "8C46D202-4328-BE61-E8AB-9A9B955E6397";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[8]" "e[13]" "e[71:72]";
	setAttr ".ix" -type "matrix" 2.5679499507862422 -1.3992740191528523 0 0 0.32811440837233669 0.60215609473126219 0 0
		 0 0 1.3560588727730492 0 1.4780173340441534 8.6356819828632112 0 1;
	setAttr ".wt" 0.48822394013404846;
	setAttr ".dr" no;
	setAttr ".re" 71;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyDelEdge -n "polyDelEdge1";
	rename -uid "8B3B1618-4A1D-1F4F-4123-59A2D9A0BB58";
	setAttr ".ics" -type "componentList" 5 "e[84]" "e[88:91]" "e[94]" "e[96]" "e[98:102]";
	setAttr ".cv" yes;
createNode polyTweak -n "polyTweak5";
	rename -uid "1A378ACB-495E-56A9-CC6F-5EA0C41EE020";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[52:53]" -type "float3"  0.022975236 0.11401877 0 0.014532536
		 -0.13696516 0;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "0AD0FCE2-48C2-56B9-5E7F-66ADD39D64BE";
	setAttr ".dc" -type "componentList" 2 "e[99]" "e[102]";
createNode polySplit -n "polySplit9";
	rename -uid "AB14697E-4DA9-829F-D708-B290A10794C2";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483564 -2147483634;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit8";
	rename -uid "A5CA3085-4907-AAC2-D08A-7E8C532CFE95";
	setAttr -s 2 ".e[0:1]"  0.5 0;
	setAttr -s 2 ".d[0:1]"  -2147483564 -2147483551;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit7";
	rename -uid "60570824-4C72-FF28-E63D-1EAFFAE47733";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483557 -2147483556;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit6";
	rename -uid "1A49AC5B-4543-1052-5F45-A1AFD040B3B6";
	setAttr -s 2 ".e[0:1]"  0.5 0;
	setAttr -s 2 ".d[0:1]"  -2147483557 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing4";
	rename -uid "0479DF31-4ECD-10E0-5135-DBA2750FAEF5";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 4 "e[6]" "e[12]" "e[74]" "e[76]";
	setAttr ".ix" -type "matrix" 2.5679499507862422 -1.3992740191528523 0 0 0.32811440837233669 0.60215609473126219 0 0
		 0 0 1.3560588727730492 0 1.4780173340441534 8.6356819828632112 0 1;
	setAttr ".wt" 0.43983498215675354;
	setAttr ".re" 76;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent2";
	rename -uid "E0CC9F8A-4088-1000-830A-56AE5A27C652";
	setAttr ".dc" -type "componentList" 1 "e[86]";
createNode polySplit -n "polySplit5";
	rename -uid "4DD2A77B-4EFC-D9B2-ED25-FD90E4EEBF1B";
	setAttr -s 2 ".e[0:1]"  1 1;
	setAttr -s 2 ".d[0:1]"  -2147483566 -2147483632;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit4";
	rename -uid "1EE254EE-4057-6C4E-617D-72B557DC17F6";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483581 -2147483565;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit3";
	rename -uid "52D95142-4071-F38D-1720-C0986B89F854";
	setAttr -s 2 ".e[0:1]"  1 0;
	setAttr -s 2 ".d[0:1]"  -2147483580 -2147483563;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplitRing -n "polySplitRing3";
	rename -uid "5A67548D-4DD9-A85F-9EFE-A883ADE65D1F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[67:68]";
	setAttr ".ix" -type "matrix" 2.5679499507862422 -1.3992740191528523 0 0 0.32811440837233669 0.60215609473126219 0 0
		 0 0 1.3560588727730492 0 1.4780173340441534 8.6356819828632112 0 1;
	setAttr ".wt" 0.47976386547088623;
	setAttr ".re" 68;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplit -n "polySplit2";
	rename -uid "C4BB4A77-46A3-0163-C6DA-B3ACA9A07629";
	setAttr -s 2 ".e[0:1]"  0.5 0;
	setAttr -s 2 ".d[0:1]"  -2147483566 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit1";
	rename -uid "C9548F23-49D0-8898-FB71-1C98601E1062";
	setAttr -s 2 ".e[0:1]"  0.5 0;
	setAttr -s 2 ".d[0:1]"  -2147483568 -2147483642;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyCut -n "polyCut1";
	rename -uid "A128B329-49FC-F402-F3D7-6EBC4338D544";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 5 "f[0]" "f[2]" "f[4:7]" "f[16:18]" "f[22:24]";
	setAttr ".ix" -type "matrix" 2.5679499507862422 -1.3992740191528523 0 0 0.32811440837233669 0.60215609473126219 0 0
		 0 0 1.3560588727730492 0 1.4780173340441534 8.6356819828632112 0 1;
	setAttr ".pc" -type "double3" 1.0163204299999999 7.8228701000000003 1000 ;
	setAttr ".ro" -type "double3" 160 -90 0 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "050F74F7-44AC-FC0E-1D20-1582552A11F9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[34:37]" -type "float3"  0.11860448 0.034911901 0 0.11860445
		 0.03491199 0 0.11860448 0.034911901 0 0.11860445 0.03491199 0;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "AB03F44A-4938-35F6-0EE9-03B4AAEF73BF";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[3]";
	setAttr ".ix" -type "matrix" 2.5679499507862422 -1.3992740191528523 0 0 0.32811440837233669 0.60215609473126219 0 0
		 0 0 1.3560588727730492 0 1.4780173340441534 8.6356819828632112 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak3";
	rename -uid "700E7F84-4C06-96B1-FF7F-9FB3408F9614";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[30:35]" -type "float3"  -0.24726129 -0.09300974 0
		 -0.24726108 -0.093009681 0 -0.24726108 -0.093009681 0 -0.24726129 -0.09300974 0 -0.24726108
		 -0.093009725 0 -0.24726108 -0.093009725 0;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "5297EFE0-44E7-8B72-B355-149D4D7C22F2";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".ix" -type "matrix" 2.5679499507862422 -1.3992740191528523 0 0 0.32811440837233669 0.60215609473126219 0 0
		 0 0 1.3560588727730492 0 1.4780173340441534 8.6356819828632112 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.87733418 9.0053129 0 ;
	setAttr ".rs" 42863;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.79522199684055794 8.8663688305005088 -0.37802942071524998 ;
	setAttr ".cbx" -type "double3" 0.99225008963145056 9.1012541554921444 0.37802942071524998 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "BA744E73-4B2D-D06D-3F79-C29A22B5AD60";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".ix" -type "matrix" 2.5679499507862422 -1.3992740191528523 0 0 0.32811440837233669 0.60215609473126219 0 0
		 0 0 1.3560588727730492 0 1.4780173340441534 8.6356819828632112 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.9067477 8.9940758 0 ;
	setAttr ".rs" 47813;
	setAttr ".off" 0.10000000149011612;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.82386218304177916 8.7673736977799006 -0.47802941246777358 ;
	setAttr ".cbx" -type "double3" 1.0753911138955772 9.1568200601430156 0.47802941246777358 ;
createNode polyTweak -n "polyTweak2";
	rename -uid "F77F9B67-4D9A-D679-78BB-01B08E42D0A4";
	setAttr ".uopa" yes;
	setAttr -s 6 ".tk[18:23]" -type "float3"  0.21323469 0.023127012 0 0.21323469
		 0.02312699 0 0.21323469 0.02312699 0 0.21323469 0.023127012 0 0.21323469 0.02312699
		 0 0.21323469 0.02312699 0;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "BE109F37-4F4D-5C0F-A9E3-2FA53F664E60";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".ix" -type "matrix" 2.5679499507862422 -1.3992740191528523 0 0 0.32811440837233669 0.60215609473126219 0 0
		 0 0 1.3560588727730492 0 1.4780173340441534 8.6356819828632112 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.35158321 9.2785244 0 ;
	setAttr ".rs" 62969;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.26869786507520255 9.0518219799322672 -0.47802941246777358 ;
	setAttr ".cbx" -type "double3" 0.5202264903486451 9.4412679348410418 0.47802941246777358 ;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "E7DD4826-45F2-A516-D1E9-A598F9F11326";
	setAttr ".ics" -type "componentList" 2 "f[1]" "f[9]";
	setAttr ".ix" -type "matrix" 2.5679499507862422 -1.3992740191528523 0 0 0.32811440837233669 0.60215609473126219 0 0
		 0 0 1.3560588727730492 0 1.4780173340441534 8.6356819828632112 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.40470228 9.245574 0 ;
	setAttr ".rs" 59484;
	setAttr ".off" 0.20000000298023224;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.28064279070196796 8.8527922426782553 -0.67802943638652458 ;
	setAttr ".cbx" -type "double3" 0.68650843769578729 9.5523991941526489 0.67802943638652458 ;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "16210866-44F1-0FEA-A7B5-049C40304BFB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 2 "e[1:2]" "e[6:7]";
	setAttr ".ix" -type "matrix" 2.5679499507862422 -1.3992740191528523 0 0 0.32811440837233669 0.60215609473126219 0 0
		 0 0 1.3560588727730492 0 1.4780173340441534 8.6356819828632112 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak1";
	rename -uid "C0085D60-4D99-752D-DEB4-65807995E57A";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[0]" -type "float3" 0.10495061 -0.057449341 0 ;
	setAttr ".tk[3]" -type "float3" -0.2415987 0.82072842 0 ;
	setAttr ".tk[5]" -type "float3" -0.2415987 0.82072842 0 ;
	setAttr ".tk[6]" -type "float3" 0.10495061 -0.057449341 0 ;
createNode polyCube -n "polyCube1";
	rename -uid "8E7183D6-47C3-64A3-D3CA-13BC1E2E8453";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "E28D9E2C-493F-0A97-B260-D5A8A6C25BFD";
	setAttr ".ics" -type "componentList" 1 "f[1]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.2456565 0 ;
	setAttr ".rs" 35195;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9999997904966698 4.2456566705329859 -2.9999997904966698 ;
	setAttr ".cbx" -type "double3" 2.9999997904966698 4.2456566705329859 2.9999997904966698 ;
createNode polyTweak -n "polyTweak6";
	rename -uid "F417C6C5-4EBD-14DD-8E8B-AEA3CAFF2DB2";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[8:11]" -type "float3"  0.27492839 0 -0.27492839 -0.27492839
		 0 -0.27492839 -0.27492839 0 0.27492839 0.27492839 0 0.27492839;
createNode polySplitRing -n "polySplitRing8";
	rename -uid "4CA2CE4F-441F-BB6B-ADFB-C68EF7202EB0";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[0:3]" "e[14]" "e[18]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".wt" 0.45973122119903564;
	setAttr ".re" 1;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polySplitRing -n "polySplitRing9";
	rename -uid "F9F02E41-4ADC-C115-4E7A-A5BD20124F41";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[6:7]" "e[10:11]" "e[16]" "e[19]" "e[24]" "e[30]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".wt" 0.41195464134216309;
	setAttr ".re" 19;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 2;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyTweak -n "polyTweak7";
	rename -uid "71BBDC71-4F43-47B5-AEE7-51835FD8DFAE";
	setAttr ".uopa" yes;
	setAttr -s 8 ".tk";
	setAttr ".tk[8]" -type "float3" 0.18503445 -1.110223e-16 -0.18503445 ;
	setAttr ".tk[9]" -type "float3" -0.18503445 -1.110223e-16 -0.18503445 ;
	setAttr ".tk[10]" -type "float3" -0.18503445 -1.110223e-16 0.18503445 ;
	setAttr ".tk[11]" -type "float3" 0.18503445 -1.110223e-16 0.18503445 ;
	setAttr ".tk[13]" -type "float3" 0 -5.5511151e-17 -0.10986894 ;
	setAttr ".tk[14]" -type "float3" 0 -5.5511151e-17 0.10986894 ;
	setAttr ".tk[18]" -type "float3" 0.10986894 -5.5511151e-17 0 ;
	setAttr ".tk[24]" -type "float3" -0.10986894 -5.5511151e-17 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "D8E7AD2A-4DE3-D03E-CAF6-FA80EC51A52B";
	setAttr ".ics" -type "componentList" 3 "f[1]" "f[11]" "f[22:23]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.2456565 0 ;
	setAttr ".rs" 34371;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.1657973804105473 4.2456563864172363 -1.1657973804105473 ;
	setAttr ".cbx" -type "double3" 1.1657973804105473 4.2456563864172363 1.1657973804105473 ;
createNode polyTweak -n "polyTweak8";
	rename -uid "4F3EF4A8-4A79-745A-B428-19B51B5F08E5";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[25:33]" -type "float3"  0 -0.040342733 0 0 -0.040342733
		 0 0 -0.040342733 0 0 -0.040342733 0 0 -0.040342733 0 0 -0.040342733 0 0 -0.040342733
		 0 0 -0.040342733 0 0 -0.040342733 0;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "71F4F32C-4634-1AD7-6CDF-E49660FC5E15";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[14]" "e[16]" "e[18:19]" "e[21]" "e[23]" "e[31]" "e[42]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak9";
	rename -uid "7EE74CDC-4DB1-0D63-40B5-C5B5B4D9993D";
	setAttr ".uopa" yes;
	setAttr -s 25 ".tk[17:41]" -type "float3"  0.016011266 0.0019064711 -0.016011266
		 0 0.0019064711 -0.02311543 0 0.0019064711 0 0.02311543 0.0019064711 0 -0.01601127
		 0.0019064711 -0.01601127 -0.0231154 0.0019064706 0 0 0.0019064711 0.02311543 -0.016011259
		 0.0019064706 0.016011259 0.016011266 0.0019064711 0.016011266 0.01745582 -0.0019064706
		 -0.01745582 0.016011259 -1.8527716e-07 -0.016011259 0 -0.0019064706 -0.025200928
		 0 -1.8527716e-07 -0.0231154 -0.01745582 -0.0019064706 -0.01745582 -0.016011259 -1.8527716e-07
		 -0.016011259 -0.025200928 -0.0019064706 0 -0.0231154 -1.8527716e-07 0 0.01745582
		 -0.0019064706 0.01745582 0.016011259 -1.8527716e-07 0.016011259 0 -0.0019064706 0.025200928
		 0 -1.8527716e-07 0.0231154 0.025200928 -0.0019064706 0 0.0231154 -1.8527716e-07 0
		 -0.01745582 -0.0019064706 0.01745582 -0.016011259 -1.8527716e-07 0.016011259;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "03DB0EF3-46D1-30CB-E7BA-49B2B1D49E05";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 3 "e[28]" "e[31:33]" "e[36:39]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak10";
	rename -uid "48A65BCF-4B67-63B7-FC4E-23AEC5BFEB47";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk";
	setAttr ".tk[17]" -type "float3" 0 -0.010553403 0 ;
	setAttr ".tk[34]" -type "float3" 0.012417307 -0.010553403 -0.012417307 ;
	setAttr ".tk[36]" -type "float3" 0 -0.010553403 -0.017926846 ;
	setAttr ".tk[38]" -type "float3" 0.017926846 -0.010553403 0 ;
	setAttr ".tk[40]" -type "float3" -0.012417307 -0.010553403 -0.012417307 ;
	setAttr ".tk[42]" -type "float3" -0.017926846 -0.010553403 8.3282506e-11 ;
	setAttr ".tk[44]" -type "float3" -0.012417308 -0.010553403 0.012417308 ;
	setAttr ".tk[46]" -type "float3" -8.3282506e-11 -0.010553403 0.017926846 ;
	setAttr ".tk[48]" -type "float3" 0.012417307 -0.010553403 0.012417307 ;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "CB887FC9-4EC7-AF9F-7344-F69D4F3F9EE5";
	setAttr ".ics" -type "componentList" 1 "f[36:39]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.0121379 0 ;
	setAttr ".rs" 46451;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.92253854122575163 4.0121381005552355 -0.92253854122575163 ;
	setAttr ".cbx" -type "double3" 0.92253854122575163 4.0121381005552355 0.92253854122575163 ;
createNode polyTweak -n "polyTweak11";
	rename -uid "63DED8BD-4C8F-CC72-F891-0FA02E6449D2";
	setAttr ".uopa" yes;
	setAttr -s 41 ".tk[17:57]" -type "float3"  0.033058275 -0.0054639569
		 -0.033058275 0.030322552 -0.0018537943 -0.030322552 0 -0.0054639569 -0.047726136
		 0 -0.0018537943 -0.043776594 -0.033058275 -0.0054639569 -0.033058275 -0.030322552
		 -0.0018537943 -0.030322552 -0.047726136 -0.0054639569 0 -0.043776594 -0.0018537943
		 0 0.033058275 -0.0054639569 0.033058275 0.030322552 -0.0018537943 0.030322552 0 -0.0054639569
		 0.047726136 0 -0.0018537943 0.043776594 0.047726136 -0.0054639569 0 0.043776594 -0.0018537943
		 0 -0.033058275 -0.0054639569 0.033058275 -0.030322552 -0.0018537943 0.030322552 0.026499953
		 0.0038432342 -0.026499953 0.030322544 -4.8184218e-05 -0.030322544 0 0.0038432342
		 -0.038257923 0 -4.8184218e-05 -0.04377659 0.038257923 0.0038432342 0 0.04377659 -4.8184218e-05
		 0 -0.026499953 0.0038432342 -0.026499953 -0.030322544 -4.8184218e-05 -0.030322544
		 -0.038257923 0.0038432342 1.777346e-10 -0.043776594 -4.8184218e-05 0 -0.026499957
		 0.0038432342 0.026499957 -0.030322552 -4.8184218e-05 0.030322552 -1.7773449e-10 0.0038432342
		 0.038257923 0 -4.8184218e-05 0.04377659 0.026499953 0.0038432342 0.026499953 0.030322544
		 -4.8184218e-05 0.030322544 0 -0.0027349507 -0.038257923 0.026499953 -0.0027349507
		 -0.026499953 0 -0.0027349507 0 0.038257923 -0.0027349507 0 -0.026499953 -0.0027349507
		 -0.026499953 -0.038257923 -0.0027349507 1.777346e-10 -1.7773449e-10 -0.0027349507
		 0.038257923 -0.026499957 -0.0027349507 0.026499957 0.026499953 -0.0027349507 0.026499953;
createNode polySplitRing -n "polySplitRing10";
	rename -uid "5E5F04F1-4692-6732-08AE-9AA2D3447D8F";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[52:59]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".wt" 0.94269645214080811;
	setAttr ".dr" no;
	setAttr ".re" 56;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode deleteComponent -n "deleteComponent7";
	rename -uid "A7675DA2-4EE3-F91C-DD54-6080FE274B3E";
	setAttr ".dc" -type "componentList" 1 "f[12:63]";
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "4F3AF604-44E3-7C34-1892-1EB67B3AA384";
	setAttr ".ics" -type "componentList" 5 "e[1:2]" "e[6:7]" "e[12:13]" "e[19]" "e[26]";
createNode polySplit -n "polySplit17";
	rename -uid "2BC1AD32-47C2-5304-EBC4-06A84B949673";
	setAttr -s 2 ".e[0:1]"  0 1;
	setAttr -s 2 ".d[0:1]"  -2147483635 -2147483647;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polySplit -n "polySplit18";
	rename -uid "A942B476-4CBE-5F67-6289-BEAC631F9B9F";
	setAttr -s 3 ".e[0:2]"  1 0.5 0;
	setAttr -s 3 ".d[0:2]"  -2147483641 -2147483620 -2147483629;
	setAttr ".sma" 180;
	setAttr ".m2015" yes;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "97AFAA52-4F70-4684-4BF6-72BB09B5A2BE";
	setAttr ".ics" -type "componentList" 1 "f[12:15]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.245656 0 ;
	setAttr ".rs" 61522;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -2.9999997904966698 4.2456561023014867 -2.9999997904966698 ;
	setAttr ".cbx" -type "double3" 2.9999997904966698 4.2456561023014867 2.9999997904966698 ;
createNode polyTweak -n "polyTweak12";
	rename -uid "368FA348-4D7C-726A-16C4-41AB8E0B8B33";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk";
	setAttr ".tk[17]" -type "float3" 0 0 -0.29696566 ;
	setAttr ".tk[18]" -type "float3" -0.38384777 -5.5511151e-17 -0.38384777 ;
	setAttr ".tk[19]" -type "float3" -0.29696566 0 0 ;
	setAttr ".tk[21]" -type "float3" 0.29696566 0 0 ;
	setAttr ".tk[22]" -type "float3" 0.38384777 -5.5511151e-17 -0.38384777 ;
	setAttr ".tk[23]" -type "float3" -0.38384777 -5.5511151e-17 0.38384777 ;
	setAttr ".tk[24]" -type "float3" 0 0 0.29696566 ;
	setAttr ".tk[25]" -type "float3" 0.38384777 -5.5511151e-17 0.38384777 ;
	setAttr ".tk[58]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".tk[59]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".tk[60]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".tk[61]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".tk[62]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".tk[63]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".tk[64]" -type "float3" 0 -7.4505806e-09 0 ;
	setAttr ".tk[65]" -type "float3" 0 -7.4505806e-09 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "ED303DAF-4DA8-97AA-79BB-08BDCC837339";
	setAttr ".ics" -type "componentList" 1 "f[12:15]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.245656 0 ;
	setAttr ".rs" 49557;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.5844621093396665 4.2456561023014867 -1.5844621093396665 ;
	setAttr ".cbx" -type "double3" 1.5844621093396665 4.2456561023014867 1.5844621093396665 ;
createNode polyTweak -n "polyTweak13";
	rename -uid "70FB8B44-4299-48E2-FD52-579873D60439";
	setAttr ".uopa" yes;
	setAttr -s 9 ".tk[25:33]" -type "float3"  0 -0.027887154 0 0 -0.027887154
		 0 0 -0.027887154 0 0 -0.027887154 0 0 -0.027887154 0 0 -0.027887154 0 0 -0.027887154
		 0 0 -0.027887154 0 0 -0.027887154 0;
createNode polyBevel3 -n "polyBevel6";
	rename -uid "114CA229-4C11-E728-B2BE-5088E85F2902";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 6 "e[30]" "e[32]" "e[35:36]" "e[38]" "e[40]" "e[42:43]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polySplitRing -n "polySplitRing11";
	rename -uid "EFAD71B6-45CE-0015-4406-A1A492E54A8D";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[64:71]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".wt" 0.90472185611724854;
	setAttr ".dr" no;
	setAttr ".re" 64;
	setAttr ".sma" 29.999999999999996;
	setAttr ".stp" 0;
	setAttr ".div" 1;
	setAttr ".p[0]"  0 0 1;
	setAttr ".fq" yes;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "5FBDA937-4F38-FA89-4B42-B9BFD7E7F18D";
	setAttr ".ics" -type "componentList" 1 "f[40:47]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 4.245656 0 ;
	setAttr ".rs" 40743;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -1.8944792710115115 4.2456561023014867 -1.8944792710115115 ;
	setAttr ".cbx" -type "double3" 1.8944792710115115 4.2456561023014867 1.8944792710115115 ;
createNode polyTweak -n "polyTweak14";
	rename -uid "C6078D1E-444B-0181-6BB2-D29B66C9A733";
	setAttr ".uopa" yes;
	setAttr -s 16 ".tk[50:65]" -type "float3"  0 0.030134059 0 0 0.030134059
		 0 0 0.030134059 0 0 0.030134059 0 0 0.030134059 0 0 0.030134059 0 0 0.030134059 0
		 0 0.030134059 0 0 0.030134059 0 0 0.030134059 0 0 0.030134059 0 0 0.030134059 0 0
		 0.030134059 0 0 0.030134059 0 0 0.030134059 0 0 0.030134059 0;
createNode polyBevel3 -n "polyBevel7";
	rename -uid "74CA8ACB-46EC-8687-4784-DBA2D8DB01FD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 8 "e[94]" "e[99]" "e[104]" "e[109]" "e[114]" "e[119]" "e[124]" "e[127]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyBevel3 -n "polyBevel8";
	rename -uid "A362E4E8-44CB-6A87-C7FF-658E04A49B14";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 7 "e[90]" "e[92]" "e[94]" "e[96]" "e[98]" "e[100]" "e[102:103]";
	setAttr ".ix" -type "matrix" 4.7666712963442421 0 0 0 0 4.7666712963442421 0 0 0 0 4.7666712963442421 0
		 0 2.0667181542008253 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.3;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace13";
	rename -uid "650F1E15-49FE-BF92-C5E8-8ABE907CE263";
	setAttr ".ics" -type "componentList" 4 "f[60:62]" "f[75:82]" "f[95:100]" "f[113:119]";
	setAttr ".ix" -type "matrix" 1.2109921181038072 -0.20554138025650734 0 0 0.20554138025650734 1.2109921181038072 0 0
		 0 0 1.2283115114283085 0 0.41793259797870763 6.5799005586463766 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 1.8059405 7.7053056 -1.8303268e-07 ;
	setAttr ".rs" 61856;
	setAttr ".lt" -type "double3" -1.4918621893400541e-16 -1.268082860939046e-15 -0.06820068423555585 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.89081964536699998 6.2278840009870517 -0.79392701130692811 ;
	setAttr ".cbx" -type "double3" 2.8267533297672927 9.1794710918434586 0.79392664524157153 ;
createNode polyTweak -n "polyTweak15";
	rename -uid "616035A8-4ACC-7D2C-0A51-74AF83E30482";
	setAttr ".uopa" yes;
	setAttr -s 90 ".tk";
	setAttr ".tk[20]" -type "float3" 0.038391624 0.049296819 0 ;
	setAttr ".tk[21]" -type "float3" 0.042070542 0.058896981 0 ;
	setAttr ".tk[22]" -type "float3" 0.046997938 0.071749173 0 ;
	setAttr ".tk[23]" -type "float3" 0.051962052 0.084705316 0 ;
	setAttr ".tk[24]" -type "float3" 0.057470355 0.099078141 0 ;
	setAttr ".tk[25]" -type "float3" 0.062977105 0.11344381 0 ;
	setAttr ".tk[26]" -type "float3" 0.067943752 0.12640187 0 ;
	setAttr ".tk[27]" -type "float3" 0.0718849 0.13668558 0 ;
	setAttr ".tk[28]" -type "float3" 0.074418023 0.1432943 0 ;
	setAttr ".tk[29]" -type "float3" 0.075289465 0.14556953 -9.5407451e-09 ;
	setAttr ".tk[30]" -type "float3" 0.074418038 0.1432943 0 ;
	setAttr ".tk[31]" -type "float3" 0.07188499 0.13668558 0 ;
	setAttr ".tk[32]" -type "float3" 0.067943782 0.12640187 0 ;
	setAttr ".tk[33]" -type "float3" 0.062977105 0.11344405 0 ;
	setAttr ".tk[34]" -type "float3" 0.057470355 0.09907838 0 ;
	setAttr ".tk[35]" -type "float3" 0.051962409 0.084706508 0 ;
	setAttr ".tk[36]" -type "float3" 0.046994362 0.071745597 0 ;
	setAttr ".tk[37]" -type "float3" 0.042073164 0.058902226 0 ;
	setAttr ".tk[38]" -type "float3" 0.038391624 0.049297057 0 ;
	setAttr ".tk[39]" -type "float3" 0.037100468 0.045928441 1.1510259e-08 ;
	setAttr ".tk[41]" -type "float3" 0.057470474 0.09907838 2.81279e-10 ;
	setAttr ".tk[102]" -type "float3" 2.7939677e-08 5.9604645e-08 0 ;
	setAttr ".tk[103]" -type "float3" -6.7986548e-08 7.4505806e-09 0 ;
	setAttr ".tk[104]" -type "float3" 1.3969839e-09 -7.4505806e-09 0 ;
	setAttr ".tk[105]" -type "float3" -5.9604645e-08 -5.9604645e-08 0 ;
	setAttr ".tk[117]" -type "float3" 1.3038516e-08 -5.9604645e-08 0 ;
	setAttr ".tk[118]" -type "float3" -9.778887e-09 -3.1664968e-08 0 ;
	setAttr ".tk[119]" -type "float3" -5.4016709e-08 -1.4901161e-08 0 ;
	setAttr ".tk[120]" -type "float3" -1.0058284e-07 4.4703484e-08 0 ;
	setAttr ".tk[121]" -type "float3" -1.3038516e-08 0 0 ;
	setAttr ".tk[122]" -type "float3" 0.027946472 -0.0091786981 0.032768011 ;
	setAttr ".tk[125]" -type "float3" 0.01554358 -0.0048630238 0.03782773 ;
	setAttr ".tk[127]" -type "float3" 0.0012205839 -0.00013536215 0.039081573 ;
	setAttr ".tk[129]" -type "float3" -0.013570905 0.0046773702 0.036552429 ;
	setAttr ".tk[131]" -type "float3" -0.027198672 0.0091736019 0.030580044 ;
	setAttr ".tk[133]" -type "float3" -0.038276196 0.012933433 0.022052407 ;
	setAttr ".tk[135]" -type "float3" -0.045335054 0.015319526 0.011579275 ;
	setAttr ".tk[137]" -type "float3" -0.047739744 0.016119838 4.6515325e-09 ;
	setAttr ".tk[139]" -type "float3" -0.045335054 0.015319526 -0.011579275 ;
	setAttr ".tk[141]" -type "float3" -0.038276196 0.012933433 -0.022052407 ;
	setAttr ".tk[143]" -type "float3" -0.027198672 0.0091736019 -0.030580044 ;
	setAttr ".tk[145]" -type "float3" -0.013570905 0.0046773702 -0.036552429 ;
	setAttr ".tk[147]" -type "float3" 0.0012205839 -0.00013536215 -0.039081573 ;
	setAttr ".tk[149]" -type "float3" 0.01554358 -0.0048630238 -0.03782773 ;
	setAttr ".tk[151]" -type "float3" 0.027946472 -0.0091788769 -0.032768011 ;
	setAttr ".tk[153]" -type "float3" 0.037425041 -0.01275444 -0.02419889 ;
	setAttr ".tk[155]" -type "float3" 0.04339242 -0.01519382 -0.012864128 ;
	setAttr ".tk[157]" -type "float3" 0.045445919 -0.016076446 5.4659535e-09 ;
	setAttr ".tk[159]" -type "float3" 0.04339242 -0.01519382 0.012864113 ;
	setAttr ".tk[161]" -type "float3" 0.037425041 -0.01275444 0.02419889 ;
	setAttr ".tk[222]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[223]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[224]" -type "float3" 0.055259023 0.093306027 0 ;
	setAttr ".tk[225]" -type "float3" 0.053291116 0.08817073 0 ;
	setAttr ".tk[226]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[227]" -type "float3" 0.048530135 0.075751029 0 ;
	setAttr ".tk[228]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[229]" -type "float3" 0.045932446 0.068972789 6.6418693e-09 ;
	setAttr ".tk[230]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[231]" -type "float3" 0.048530135 0.075751506 0 ;
	setAttr ".tk[232]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[233]" -type "float3" 0.053292785 0.088174783 0 ;
	setAttr ".tk[234]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[235]" -type "float3" 0.055257592 0.093301974 0 ;
	setAttr ".tk[236]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[237]" -type "float3" 0.055577312 0.094135009 0 ;
	setAttr ".tk[238]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[239]" -type "float3" 0.057739649 0.0997779 0 ;
	setAttr ".tk[240]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[241]" -type "float3" 0.061384115 0.10928651 0 ;
	setAttr ".tk[242]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[243]" -type "float3" 0.066036314 0.12142631 0 ;
	setAttr ".tk[244]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[245]" -type "float3" 0.070420101 0.13286349 0 ;
	setAttr ".tk[246]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[247]" -type "float3" 0.073543064 0.14101025 0 ;
	setAttr ".tk[248]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[249]" -type "float3" 0.074683934 0.14398858 -9.2069392e-09 ;
	setAttr ".tk[250]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[251]" -type "float3" 0.073542982 0.14101025 0 ;
	setAttr ".tk[252]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[253]" -type "float3" 0.070420042 0.13286349 0 ;
	setAttr ".tk[254]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[255]" -type "float3" 0.06603694 0.12142702 0 ;
	setAttr ".tk[256]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[257]" -type "float3" 0.061384115 0.10928627 0 ;
	setAttr ".tk[258]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[259]" -type "float3" 0.05773953 0.099777661 0 ;
	setAttr ".tk[260]" -type "float3" 0.057981286 0.10040947 0 ;
	setAttr ".tk[261]" -type "float3" 0.055576835 0.094133101 0 ;
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
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :initialShadingGroup;
	setAttr -s 3 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultRenderGlobals;
	setAttr ".ren" -type "string" "arnold";
select -ne :defaultResolution;
	setAttr ".pa" 1;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyBevel8.out" "baseShape.i";
connectAttr "polyExtrudeFace13.out" "pCylinderShape3.i";
connectAttr "polyDelEdge2.out" "pCubeShape3.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polySurfaceShape1.o" "polySplitRing1.ip";
connectAttr "pCylinderShape3.wm" "polySplitRing1.mp";
connectAttr "polySplitRing1.out" "polyBevel1.ip";
connectAttr "pCylinderShape3.wm" "polyBevel1.mp";
connectAttr "polyBevel1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "polyBridgeEdge1.ip";
connectAttr "pCylinderShape3.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyBridgeEdge2.ip";
connectAttr "pCylinderShape3.wm" "polyBridgeEdge2.mp";
connectAttr "polyBridgeEdge2.out" "polyMergeVert1.ip";
connectAttr "pCylinderShape3.wm" "polyMergeVert1.mp";
connectAttr "polyMergeVert1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polySplitRing2.ip";
connectAttr "pCylinderShape3.wm" "polySplitRing2.mp";
connectAttr "polySplitRing2.out" "polyExtrudeFace2.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace2.mp";
connectAttr "deleteComponent6.og" "polyDelEdge2.ip";
connectAttr "polySplit16.out" "deleteComponent6.ig";
connectAttr "deleteComponent5.og" "polySplit16.ip";
connectAttr "polySplit15.out" "deleteComponent5.ig";
connectAttr "polySplit14.out" "polySplit15.ip";
connectAttr "deleteComponent4.og" "polySplit14.ip";
connectAttr "polySplit13.out" "deleteComponent4.ig";
connectAttr "polySplit12.out" "polySplit13.ip";
connectAttr "polySplitRing7.out" "polySplit12.ip";
connectAttr "polySplit11.out" "polySplitRing7.ip";
connectAttr "pCubeShape3.wm" "polySplitRing7.mp";
connectAttr "polySplit10.out" "polySplit11.ip";
connectAttr "polySplitRing6.out" "polySplit10.ip";
connectAttr "polySplitRing5.out" "polySplitRing6.ip";
connectAttr "pCubeShape3.wm" "polySplitRing6.mp";
connectAttr "polyDelEdge1.out" "polySplitRing5.ip";
connectAttr "pCubeShape3.wm" "polySplitRing5.mp";
connectAttr "polyTweak5.out" "polyDelEdge1.ip";
connectAttr "deleteComponent3.og" "polyTweak5.ip";
connectAttr "polySplit9.out" "deleteComponent3.ig";
connectAttr "polySplit8.out" "polySplit9.ip";
connectAttr "polySplit7.out" "polySplit8.ip";
connectAttr "polySplit6.out" "polySplit7.ip";
connectAttr "polySplitRing4.out" "polySplit6.ip";
connectAttr "deleteComponent2.og" "polySplitRing4.ip";
connectAttr "pCubeShape3.wm" "polySplitRing4.mp";
connectAttr "polySplit5.out" "deleteComponent2.ig";
connectAttr "polySplit4.out" "polySplit5.ip";
connectAttr "polySplit3.out" "polySplit4.ip";
connectAttr "polySplitRing3.out" "polySplit3.ip";
connectAttr "polySplit2.out" "polySplitRing3.ip";
connectAttr "pCubeShape3.wm" "polySplitRing3.mp";
connectAttr "polySplit1.out" "polySplit2.ip";
connectAttr "polyCut1.out" "polySplit1.ip";
connectAttr "polyTweak4.out" "polyCut1.ip";
connectAttr "pCubeShape3.wm" "polyCut1.mp";
connectAttr "polyBevel3.out" "polyTweak4.ip";
connectAttr "polyTweak3.out" "polyBevel3.ip";
connectAttr "pCubeShape3.wm" "polyBevel3.mp";
connectAttr "polyExtrudeFace6.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace5.out" "polyExtrudeFace6.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace6.mp";
connectAttr "polyTweak2.out" "polyExtrudeFace5.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace4.out" "polyTweak2.ip";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace4.mp";
connectAttr "polyBevel2.out" "polyExtrudeFace3.ip";
connectAttr "pCubeShape3.wm" "polyExtrudeFace3.mp";
connectAttr "polyTweak1.out" "polyBevel2.ip";
connectAttr "pCubeShape3.wm" "polyBevel2.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polySurfaceShape2.o" "polyExtrudeFace7.ip";
connectAttr "baseShape.wm" "polyExtrudeFace7.mp";
connectAttr "polyExtrudeFace7.out" "polyTweak6.ip";
connectAttr "polyTweak6.out" "polySplitRing8.ip";
connectAttr "baseShape.wm" "polySplitRing8.mp";
connectAttr "polySplitRing8.out" "polySplitRing9.ip";
connectAttr "baseShape.wm" "polySplitRing9.mp";
connectAttr "polySplitRing9.out" "polyTweak7.ip";
connectAttr "polyTweak7.out" "polyExtrudeFace8.ip";
connectAttr "baseShape.wm" "polyExtrudeFace8.mp";
connectAttr "polyExtrudeFace8.out" "polyTweak8.ip";
connectAttr "polyTweak8.out" "polyBevel4.ip";
connectAttr "baseShape.wm" "polyBevel4.mp";
connectAttr "polyBevel4.out" "polyTweak9.ip";
connectAttr "polyTweak9.out" "polyBevel5.ip";
connectAttr "baseShape.wm" "polyBevel5.mp";
connectAttr "polyBevel5.out" "polyTweak10.ip";
connectAttr "polyTweak10.out" "polyExtrudeFace9.ip";
connectAttr "baseShape.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyTweak11.ip";
connectAttr "polyTweak11.out" "polySplitRing10.ip";
connectAttr "baseShape.wm" "polySplitRing10.mp";
connectAttr "polySplitRing10.out" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "polyCloseBorder1.ip";
connectAttr "polyCloseBorder1.out" "polySplit17.ip";
connectAttr "polySplit17.out" "polySplit18.ip";
connectAttr "polySplit18.out" "polyExtrudeFace10.ip";
connectAttr "baseShape.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyTweak12.ip";
connectAttr "polyTweak12.out" "polyExtrudeFace11.ip";
connectAttr "baseShape.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polyTweak13.ip";
connectAttr "polyTweak13.out" "polyBevel6.ip";
connectAttr "baseShape.wm" "polyBevel6.mp";
connectAttr "polyBevel6.out" "polySplitRing11.ip";
connectAttr "baseShape.wm" "polySplitRing11.mp";
connectAttr "polySplitRing11.out" "polyExtrudeFace12.ip";
connectAttr "baseShape.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "polyTweak14.ip";
connectAttr "polyTweak14.out" "polyBevel7.ip";
connectAttr "baseShape.wm" "polyBevel7.mp";
connectAttr "polyBevel7.out" "polyBevel8.ip";
connectAttr "baseShape.wm" "polyBevel8.mp";
connectAttr "polyTweak15.out" "polyExtrudeFace13.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace13.mp";
connectAttr "polyExtrudeFace2.out" "polyTweak15.ip";
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "baseShape.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
// End of joystick_new.0002.ma
