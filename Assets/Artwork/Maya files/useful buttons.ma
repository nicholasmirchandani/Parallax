//Maya ASCII 2017 scene
//Name: useful buttons.ma
//Last modified: Wed, Sep 18, 2019 10:14:16 PM
//Codeset: 1252
requires maya "2017";
requires -nodeType "aiOptions" -nodeType "aiAOVDriver" -nodeType "aiAOVFilter" -nodeType "aiStandard"
		 "mtoa" "1.3.0.0";
requires "stereoCamera" "10.0";
requires "stereoCamera" "10.0";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2017";
fileInfo "version" "2017";
fileInfo "cutIdentifier" "201606150345-997974";
fileInfo "osv" "Microsoft Windows 8 Home Premium Edition, 64-bit  (Build 9200)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	rename -uid "5E055AE8-48E1-CA61-2698-DD85E703C7B4";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -0.015568318914783497 11.769696802788143 0.17794669938247676 ;
	setAttr ".r" -type "double3" 990.8616471154678 -725.00000000038528 -2.39452791273474e-015 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "E515DE22-4894-2833-86AD-219DDD928D68";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999993;
	setAttr ".coi" 11.878326947513315;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 -0.10728697558118239 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
	setAttr ".ai_translator" -type "string" "perspective";
createNode transform -s -n "top";
	rename -uid "35D41BEE-4886-9455-35FB-CC87498FCB19";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 1000.1 0 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "79C08FE9-4912-B4AB-2E0B-519B087B8CAB";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1;
	setAttr ".ow" 14.363125132153556;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "front";
	rename -uid "7D05D75B-4B12-5DFD-B8FB-1C9684699CF1";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 0 0.052960573930053767 1000.1059464215667 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D931EE57-4F4D-FB60-6DB5-84A6EA90B597";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.1059464215667;
	setAttr ".ow" 4.365889782884242;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".tp" -type "double3" 0 0.052960573930053781 0 ;
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -s -n "side";
	rename -uid "14403C01-4D2F-62A4-DFBC-52B398BD6E46";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 1000.1061820256073 3.5164365253273662 2.9802544455877386e-008 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "4AE561C8-47D6-A258-CD88-A1844BF1A27F";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 1000.106182025607;
	setAttr ".ow" 13.382751644321175;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".tp" -type "double3" 0 3.5164365253273662 2.9802322387695313e-008 ;
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
	setAttr ".ai_translator" -type "string" "orthographic";
createNode transform -n "key";
	rename -uid "725BA544-4097-56E1-FC9A-ECBB03B654EF";
createNode mesh -n "keyShape" -p "key";
	rename -uid "DD724B08-44AB-875A-D563-50A1DCBFABD2";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.875 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPipe1";
	rename -uid "0070F64A-41F7-6C59-847D-049DBEF343A5";
createNode mesh -n "pPipeShape1" -p "pPipe1";
	rename -uid "44C3061C-4477-86D1-1448-B49DC0123C53";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder1";
	rename -uid "0616BD04-4542-BCBF-FB42-55AF2B320CD4";
	setAttr ".s" -type "double3" 0.97754665155248066 0.030183104541628071 0.97754665155248066 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	rename -uid "93FB1556-48E8-B7C4-9881-279CEB4F8EE9";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube2";
	rename -uid "AC1AED32-4E45-9DAE-AA7F-60982ED1CC74";
	setAttr ".t" -type "double3" 0 -0.032922030110638101 0 ;
	setAttr ".s" -type "double3" 1.4403704338565013 0.10129721397248868 2.2615709292906581 ;
createNode mesh -n "pCubeShape2" -p "pCube2";
	rename -uid "05CEFF5B-423D-5360-66A2-C88A636E676F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube3";
	rename -uid "D0167A6D-447F-B0D8-5947-40987B41C2CF";
	setAttr ".t" -type "double3" 0 0.015345629125846583 0 ;
	setAttr ".s" -type "double3" 1 0.72031518593687383 1.8537458280455104 ;
createNode mesh -n "pCubeShape3" -p "pCube3";
	rename -uid "595E288E-4142-E9E2-BBFE-A1A7A69FBFB4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.75 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder2";
	rename -uid "3F31E5F5-4050-8B3F-2093-128CBAFA0B25";
	setAttr ".s" -type "double3" 1 0.82320113815206575 1 ;
createNode mesh -n "pCylinderShape2" -p "pCylinder2";
	rename -uid "C20BB42E-4215-D3FE-434D-50893434F96F";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.49999998137354851 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder3";
	rename -uid "6EC2F428-4A9D-A377-5CBF-08B1AB0315CC";
	setAttr ".r" -type "double3" 180 0 0 ;
createNode mesh -n "pCylinderShape3" -p "pCylinder3";
	rename -uid "EE51034D-402D-E8D9-CB4E-BC8194003D91";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.84375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube4";
	rename -uid "B9B4A3D6-4AAC-A49E-9CB2-BC9D6D20F529";
	setAttr ".r" -type "double3" -179.99999999999952 0 0 ;
	setAttr ".s" -type "double3" 3.5895374270531919 1 1 ;
createNode mesh -n "pCubeShape4" -p "pCube4";
	rename -uid "9158FD1D-4227-56AE-BE62-ACB7E5594F63";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.50000001490116119 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder4";
	rename -uid "158757B0-4915-8326-B4B8-828DAE5EC65D";
	setAttr ".t" -type "double3" 0 -2.1339008919223561 0 ;
	setAttr ".s" -type "double3" 0.22779372978011533 0.78449959777656531 0.22779372978011533 ;
createNode mesh -n "pCylinderShape4" -p "pCylinder4";
	rename -uid "A0193F3E-4622-CF14-D2FF-53B3078080A5";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder5";
	rename -uid "AB60B7F0-408D-36D4-51C6-C4B4189A2C18";
	setAttr ".t" -type "double3" 0 -1.0057172400239374 0 ;
createNode mesh -n "pCylinderShape5" -p "pCylinder5";
	rename -uid "40C91BAD-48C8-2FBD-B6A0-A784DDB2F4A8";
	setAttr -k off ".v";
	setAttr -av ".iog[0].og[0].gid";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.51264089345932007 0.85326588153839111 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 121 ".pt[0:120]" -type "float3"  0 2.0476978 0 0 2.0476978 
		0 0 2.0476978 0 0 2.0476978 0 0 2.0476978 0 0 2.0476978 0 0 2.0476978 0 0 2.0476978 
		0 0 2.0476978 0 0 2.0476978 0 0 2.0476978 0 0 2.0476978 0 0 2.0476978 0 0 2.0476978 
		0 0 2.0476978 0 0 2.0476978 0 0 2.0476978 0 0 2.0476978 0 0 2.0476978 0 -3.7252903e-009 
		2.0476978 0 0 0.17849232 0 0 0.17849232 0 0 0.17849232 0 0 0.17849232 0 0 0.17849232 
		0 0 0.17849232 0 0 0.17849232 0 0 0.17849232 0 0 0.17849232 0 0 0.17849232 0 0 0.17849232 
		0 0 0.17849232 0 0 0.17849232 0 0 0.17849232 0 0 0.17849232 0 0 0.17849232 0 0 0.17849232 
		0 0 0.17849232 0 0 0.17849232 0 0 0.17849232 0 -1.4901161e-008 0.031518638 1.4901161e-008 
		0 0.031518638 -2.9802322e-008 2.9802322e-008 0.031518638 0 -1.4901161e-008 0.031518638 
		1.4901161e-008 0 0.031518638 0 1.4901161e-008 0.031518638 1.4901161e-008 -2.9802322e-008 
		0.031518638 0 0 0.031518638 -2.9802322e-008 1.4901161e-008 0.031518638 1.4901161e-008 
		0 0.031518638 1.6543612e-024 1.4901161e-008 0.031518638 -1.4901161e-008 0 0.031518638 
		2.9802322e-008 -2.9802322e-008 0.031518638 0 1.4901161e-008 0.031518638 -1.4901161e-008 
		8.2718061e-025 0.031518638 0 -1.4901161e-008 0.031518638 -1.4901161e-008 2.9802322e-008 
		0.031518638 0 0 0.031518638 2.9802322e-008 -1.4901161e-008 0.031518638 -1.4901161e-008 
		0 0.031518638 0 0 -0.10106842 3.7252903e-009 3.7252903e-008 -0.10106842 0 0 -0.10106842 
		-3.7252903e-008 -3.7252903e-009 -0.10106842 0 6.6174449e-024 -0.10106842 1.4901161e-008 
		3.7252903e-009 -0.10106842 0 0 -0.10106842 -3.7252903e-008 -3.7252903e-008 -0.10106842 
		0 0 -0.10106842 3.7252903e-009 1.4901161e-008 -0.10106842 -4.9630837e-024 0 -0.10106842 
		-3.7252903e-009 -3.7252903e-008 -0.10106842 0 0 -0.10106842 3.7252903e-008 3.7252903e-009 
		-0.10106842 0 -2.4815418e-024 -0.10106842 -1.4901161e-008 -3.7252903e-009 -0.10106842 
		0 0 -0.10106842 3.7252903e-008 3.7252903e-008 -0.10106842 0 0 -0.10106842 -3.7252903e-009 
		-1.4901161e-008 -0.10106842 0 2.9802322e-008 -0.2062901 5.5879354e-009 0 -0.2062901 
		1.4901161e-008 -1.4901161e-008 -0.2062901 0 -5.5879354e-009 -0.2062901 -2.9802322e-008 
		0 -0.2062901 7.4505806e-009 5.5879354e-009 -0.2062901 -2.9802322e-008 1.4901161e-008 
		-0.2062901 0 0 -0.2062901 1.4901161e-008 -2.9802322e-008 -0.2062901 5.5879354e-009 
		7.4505806e-009 -0.2062901 -8.2718061e-025 -2.9802322e-008 -0.2062901 -5.5879354e-009 
		0 -0.2062901 -1.4901161e-008 1.4901161e-008 -0.2062901 0 5.5879354e-009 -0.2062901 
		2.9802322e-008 -4.1359031e-025 -0.2062901 -7.4505806e-009 -5.5879354e-009 -0.2062901 
		2.9802322e-008 -1.4901161e-008 -0.2062901 0 0 -0.2062901 -1.4901161e-008 2.9802322e-008 
		-0.2062901 -5.5879354e-009 -7.4505806e-009 -0.2062901 0 -1.4901161e-008 -0.27384639 
		3.7252903e-009 -3.7252903e-009 -0.27384639 5.5879354e-009 -5.5879354e-009 -0.27384639 
		3.7252903e-009 -3.7252903e-009 -0.27384639 1.4901161e-008 1.6543612e-024 -0.27384639 
		-3.7252903e-009 3.7252903e-009 -0.27384639 1.4901161e-008 5.5879354e-009 -0.27384639 
		3.7252903e-009 3.7252903e-009 -0.27384639 5.5879354e-009 1.4901161e-008 -0.27384639 
		3.7252903e-009 -3.7252903e-009 -0.27384639 -1.6543612e-024 1.4901161e-008 -0.27384639 
		-3.7252903e-009 3.7252903e-009 -0.27384639 -5.5879354e-009 5.5879354e-009 -0.27384639 
		-3.7252903e-009 3.7252903e-009 -0.27384639 -1.4901161e-008 -8.2718061e-025 -0.27384639 
		3.7252903e-009 -3.7252903e-009 -0.27384639 -1.4901161e-008 -5.5879354e-009 -0.27384639 
		-3.7252903e-009 -3.7252903e-009 -0.27384639 -5.5879354e-009 -1.4901161e-008 -0.27384639 
		-3.7252903e-009 3.7252903e-009 -0.27384639 0 0 -0.29712477 0;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder6";
	rename -uid "F666FA49-49EB-81F4-E1EA-F19A52DFBD87";
	setAttr ".s" -type "double3" 1.1508394267967335 0.052720695914095207 1.1508394267967335 ;
createNode mesh -n "pCylinderShape6" -p "pCylinder6";
	rename -uid "66855512-4BC7-59FE-9173-839C0DF07EBB";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder7";
	rename -uid "7B11032E-4E9F-35A2-3F25-9098F1B0AFCD";
	setAttr ".s" -type "double3" 1.693422366881028 0.43915836581108153 1.693422366881028 ;
createNode mesh -n "pCylinderShape7" -p "pCylinder7";
	rename -uid "969EEEA2-4F7E-C11C-EA5C-A1AA7457673E";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder8";
	rename -uid "154644E8-432C-4477-288C-E0B459EE0E1D";
	setAttr ".t" -type "double3" 0.74875897730209862 0.41665278885280499 0 ;
	setAttr ".r" -type "double3" -90.000000000000028 0 0 ;
	setAttr ".s" -type "double3" 0.72401440082500135 0.15848479304525392 0.1769813086088273 ;
createNode mesh -n "pCylinderShape8" -p "pCylinder8";
	rename -uid "905042B3-464F-7F8A-F4D8-CF9C30D5B044";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.49687500298023224 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pSphere1";
	rename -uid "AF9654FC-4D07-55CB-B0D3-1694726B0C48";
	setAttr ".t" -type "double3" 0 1.3468773767288824 0 ;
	setAttr ".s" -type "double3" 0.40346409065593286 0.40346409065593286 0.40346409065593286 ;
createNode mesh -n "pSphereShape1" -p "pSphere1";
	rename -uid "CD43FC2A-47B7-4DA2-69E5-6E8B5F015C50";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.75 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 242 ".pt";
	setAttr ".pt[0:165]" -type "float3"  -0.087750345 -1.9593709 0.036347352 
		-0.06716121 -1.9593709 0.067161158 -0.036347397 -1.9593709 0.087750331 -4.8120768e-008 
		-1.9593709 0.094980173 0.036347337 -1.9593709 0.087750345 0.067161158 -1.9593709 
		0.067161217 0.087750331 -1.9593709 0.036347397 0.094980158 -1.9593709 4.847691e-008 
		0.087750338 -1.9593709 -0.036347337 0.067161188 -1.9593709 -0.067161158 0.036347389 
		-1.9593709 -0.087750323 1.4153148e-008 -1.9593709 -0.094980136 -0.036347367 -1.9593709 
		-0.087750331 -0.067161173 -1.9593709 -0.067161173 -0.087750331 -1.9593709 -0.036347367 
		-0.094980158 -1.9593709 1.450933e-008 -0.17212853 -1.9870746 0.071297824 -0.13174139 
		-1.9870746 0.13174136 -0.071298033 -1.9870746 0.1721285 -9.4392291e-008 -1.9870746 
		0.18631041 0.071297832 -1.9870746 0.17212853 0.13174136 -1.9870746 0.13174139 0.1721285 
		-1.9870746 0.071298026 0.18631041 -1.9870746 8.1139135e-008 0.17212853 -1.9870746 
		-0.071297832 0.13174139 -1.9870746 -0.13174136 0.071297988 -1.9870746 -0.1721285 
		2.7762439e-008 -1.9870746 -0.18631038 -0.071297884 -1.9870746 -0.1721285 -0.13174136 
		-1.9870746 -0.13174136 -0.17212851 -1.9870746 -0.071297899 -0.18631041 -1.9870746 
		1.450933e-008 -0.24989158 -2.032068 0.10350846 -0.19125906 -2.032068 0.19125882 -0.10350865 
		-2.032068 0.24989153 -1.3703637e-007 -2.032068 0.27048087 0.10350847 -2.032068 0.24989158 
		0.19125882 -2.032068 0.19125906 0.24989153 -2.032068 0.10350865 0.27048087 -2.032068 
		1.1124073e-007 0.24989158 -2.032068 -0.10350849 0.19125898 -2.032068 -0.19125883 
		0.10350862 -2.032068 -0.24989153 4.030478e-008 -2.032068 -0.27048087 -0.10350855 
		-2.032068 -0.24989155 -0.19125886 -2.032068 -0.19125889 -0.24989155 -2.032068 -0.1035086 
		-0.27048087 -2.032068 1.450933e-008 -0.31805173 -2.0926135 0.13174124 -0.24342625 
		-2.0926135 0.24342608 -0.13174143 -2.0926135 0.31805143 -1.7441394e-007 -2.0926135 
		0.344257 0.13174127 -2.0926135 0.3180517 0.2434261 -2.0926135 0.2434262 0.31805149 
		-2.0926135 0.13174142 0.344257 -2.0926135 1.3762507e-007 0.31805161 -2.0926135 -0.13174132 
		0.24342619 -2.0926135 -0.2434261 0.13174139 -2.0926135 -0.31805146 5.1298219e-008 
		-2.0926135 -0.344257 -0.13174136 -2.0926135 -0.31805158 -0.24342614 -2.0926135 -0.24342616 
		-0.31805155 -2.0926135 -0.13174136 -0.344257 -2.0926135 1.450933e-008 -0.37398925 
		-2.1663909 0.15491131 -0.28623921 -2.1663909 0.28623903 -0.15491158 -2.1663909 0.37398911 
		-2.0508925e-007 -2.1663909 0.40480298 0.15491135 -2.1663909 0.37398922 0.28623912 
		-2.1663909 0.28623921 0.37398914 -2.1663909 0.15491153 0.40480301 -2.1663909 1.5927816e-007 
		0.37398916 -2.1663909 -0.1549114 0.28623921 -2.1663909 -0.28623912 0.15491146 -2.1663909 
		-0.37398916 6.0320396e-008 -2.1663909 -0.40480298 -0.15491143 -2.1663909 -0.37398916 
		-0.28623915 -2.1663909 -0.28623918 -0.37398916 -2.1663909 -0.15491144 -0.40480301 
		-2.1663909 1.450933e-008 -0.41555476 -2.2505608 0.17212825 -0.3180519 -2.2505608 
		0.3180514 -0.17212863 -2.2505608 0.4155544 -2.2788295e-007 -2.2505608 0.44979277 
		0.17212826 -2.2505608 0.41555476 0.3180514 -2.2505608 0.31805187 0.41555446 -2.2505608 
		0.17212862 0.44979277 -2.2505608 1.7536789e-007 0.4155547 -2.2505608 -0.17212828 
		0.31805173 -2.2505608 -0.31805143 0.17212853 -2.2505608 -0.41555452 6.7024409e-008 
		-2.2505608 -0.44979277 -0.17212842 -2.2505608 -0.41555464 -0.31805149 -2.2505608 
		-0.31805158 -0.41555458 -2.2505608 -0.1721285 -0.44979277 -2.2505608 1.450933e-008 
		-0.44115049 -2.3418906 0.18273017 -0.3376424 -2.3418906 0.33764192 -0.18273082 -2.3418906 
		0.44115004 -2.4191925e-007 -2.3418906 0.47749817 0.18273023 -2.3418906 0.44115043 
		0.33764192 -2.3418906 0.33764237 0.44115013 -2.3418906 0.18273079 0.47749817 -2.3418906 
		1.8527597e-007 0.44115037 -2.3418906 -0.18273027 0.33764222 -2.3418906 -0.33764195 
		0.18273062 -2.3418906 -0.44115013 7.1152705e-008 -2.3418906 -0.47749817 -0.18273033 
		-2.3418906 -0.44115025 -0.33764198 -2.3418906 -0.33764207 -0.44115025 -2.3418906 
		-0.18273044 -0.47749817 -2.3418906 1.450933e-008 -0.13634521 0.073789492 0.056475934 
		-0.10435414 0.073789492 0.10435401 -0.056476083 0.073789492 0.13634518 -7.4769325e-008 
		0.073789492 0.14757903 0.056475945 0.073789492 0.13634518 0.10435404 0.073789492 
		0.10435419 0.13634515 0.073789492 0.056476075 0.14757898 0.073789492 5.7176543e-008 
		0.13634518 0.073789492 -0.05647599 0.10435411 0.073789492 -0.10435404 0.056476053 
		0.073789492 -0.13634518 2.1990978e-008 0.073789492 -0.14757903 -0.056476004 0.073789492 
		-0.13634527 -0.10435405 0.073789492 -0.10435405 -0.13634512 0.073789492 -0.056476027 
		-0.14757898 0.073789492 4.3981974e-009 -0.13372539 0.044998243 0.055390783 -0.102349 
		0.044998243 0.10234889 -0.055390909 0.044998243 0.13372527 -7.3332657e-008 0.044998243 
		0.14474331 0.055390783 0.044998243 0.13372535 0.10234891 0.044998243 0.10234901 0.1337253 
		0.044998243 0.055390902 0.14474329 0.044998243 5.6162413e-008 0.13372537 0.044998243 
		-0.055390809 0.10234895 0.044998243 -0.10234891 0.05539088 0.044998243 -0.13372532 
		2.1568425e-008 0.044998243 -0.14474331 -0.055390831 0.044998243 -0.13372535 -0.10234894 
		0.044998243 -0.10234892 -0.13372537 0.044998243 -0.055390835 -0.14474329 0.044998243 
		4.3981974e-009 -0.12596653 0.017313458 0.052176945 -0.096410647 0.017313458 0.096410558 
		-0.052177094 0.017313458 0.12596653 -6.9077842e-008 0.017313458 0.1363451 0.05217699 
		0.017313458 0.12596658 0.096410543 0.017313458 0.096410617 0.12596652 0.017313458 
		0.052177094 0.13634512 0.017313458 5.3159024e-008 0.12596652 0.017313458 -0.052177005 
		0.096410632 0.017313458 -0.096410573 0.052177072 0.017313458 -0.12596652 2.0317014e-008 
		0.017313458 -0.13634521 -0.052177019 0.017313458 -0.12596661 -0.096410543 0.017313458 
		-0.096410625 -0.12596643 0.017313458 -0.052177034 -0.13634512 0.017313458 4.3981974e-009 
		-0.11336689 -0.008200991 0.046958044 -0.086767256 -0.008200991 0.086767234 -0.046958163 
		-0.008200991 0.11336683 -6.2168432e-008 -0.008200991 0.12270749 0.046958037 -0.008200991 
		0.11336689 0.086767219 -0.008200991 0.086767286;
	setAttr ".pt[166:241]" 0.11336686 -0.008200991 0.046958141 0.12270744 -0.008200991 
		4.8281805e-008 0.11336687 -0.008200991 -0.046958044 0.086767264 -0.008200991 -0.086767249 
		0.046958115 -0.008200991 -0.11336683 1.8284828e-008 -0.008200991 -0.12270749 -0.046958093 
		-0.008200991 -0.11336681 -0.086767234 -0.008200991 -0.086767249 -0.11336686 -0.008200991 
		-0.046958115 -0.12270744 -0.008200991 4.3981974e-009 -0.096410632 -0.030564599 0.039934509 
		-0.073789515 -0.030564599 0.073789425 -0.039934635 -0.030564599 0.096410573 -5.2869908e-008 
		-0.030564599 0.10435405 0.039934523 -0.030564599 0.096410632 0.073789448 -0.030564599 
		0.073789522 0.096410543 -0.030564599 0.039934631 0.10435407 -0.030564599 4.1718131e-008 
		0.096410617 -0.030564599 -0.039934549 0.0737895 -0.030564599 -0.073789455 0.039934594 
		-0.030564599 -0.096410573 1.554997e-008 -0.030564599 -0.10435405 -0.039934568 -0.030564599 
		-0.096410625 -0.073789492 -0.030564599 -0.073789507 -0.096410602 -0.030564599 -0.039934579 
		-0.10435407 -0.030564599 4.3981974e-009 -0.075749323 -0.048917934 0.031376373 -0.057976045 
		-0.048917934 0.057976022 -0.03137644 -0.048917934 0.07574933 -4.1539614e-008 -0.048917934 
		0.08199051 0.031376366 -0.048917934 0.075749353 0.057976007 -0.048917934 0.057976041 
		0.075749315 -0.048917934 0.031376444 0.081990495 -0.048917934 3.3720269e-008 0.075749323 
		-0.048917934 -0.031376369 0.05797603 -0.048917934 -0.057976007 0.03137641 -0.048917934 
		-0.07574933 1.2217534e-008 -0.048917934 -0.081990503 -0.031376388 -0.048917934 -0.075749338 
		-0.057975963 -0.048917934 -0.05797603 -0.075749315 -0.048917934 -0.031376399 -0.081990495 
		-0.048917934 4.3981974e-009 -0.052177064 -0.062555686 0.02161241 -0.039934594 -0.062555686 
		0.039934572 -0.021612464 -0.062555686 0.052177019 -2.8612984e-008 -0.062555686 0.056476019 
		0.021612417 -0.062555686 0.052177086 0.039934564 -0.062555686 0.039934587 0.052177027 
		-0.062555686 0.021612467 0.056476019 -0.062555686 2.4595593e-008 0.052177042 -0.062555686 
		-0.021612417 0.03993459 -0.062555686 -0.039934572 0.021612452 -0.062555686 -0.052177019 
		8.4155838e-009 -0.062555686 -0.056476027 -0.021612432 -0.062555686 -0.052177034 -0.039934583 
		-0.062555686 -0.039934583 -0.052177034 -0.062555686 -0.021612436 -0.056476019 -0.062555686 
		4.3981974e-009 -0.026599627 -0.070953801 0.011017913 -0.020358486 -0.070953801 0.02035846 
		-0.011017938 -0.070953801 0.026599616 -1.4586771e-008 -0.070953801 0.028791234 0.011017913 
		-0.070953801 0.026599631 0.020358462 -0.070953801 0.02035849 0.02659962 -0.070953801 
		0.01101794 0.02879123 -0.070953801 1.4694736e-008 0.026599623 -0.070953801 -0.011017913 
		0.020358477 -0.070953801 -0.02035846 0.011017931 -0.070953801 -0.02659962 4.2902268e-009 
		-0.070953801 -0.028791215 -0.01101792 -0.070953801 -0.026599616 -0.020358466 -0.070953801 
		-0.020358466 -0.02659962 -0.070953801 -0.011017924 -0.02879123 -0.070953801 4.3981974e-009 
		0 -1.9500155 1.450933e-008 0 -0.073789492 4.3981974e-009;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCylinder9";
	rename -uid "FB5681DD-4B50-F548-6B74-788B9634439D";
	setAttr ".s" -type "double3" 1 0.27720315958384456 1 ;
createNode mesh -n "pCylinderShape9" -p "pCylinder9";
	rename -uid "4B1618BB-4722-8C85-B63C-0098FA45D9B4";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube5";
	rename -uid "BD86E482-4429-CCDA-8756-55B89193DA25";
	setAttr ".t" -type "double3" 0 0.24471982022567595 -0.25178703833751181 ;
	setAttr ".s" -type "double3" 0.79727765111368587 0.44033425117997832 1 ;
createNode mesh -n "pCubeShape5" -p "pCube5";
	rename -uid "E2BC48EB-4C7D-C330-DC1B-8495C4055B90";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.49999998509883881 0.12744142115116119 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr -s 4 ".pt";
	setAttr ".pt[4]" -type "float3" -0.025094502 0 0 ;
	setAttr ".pt[5]" -type "float3" 0.025094502 0 0 ;
	setAttr ".pt[14]" -type "float3" 0.025074812 0 0 ;
	setAttr ".pt[15]" -type "float3" -0.025074812 0 0 ;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube6";
	rename -uid "86E246FF-4A9A-5358-79EA-6CBB5E8A75A0";
	setAttr ".s" -type "double3" 1 0.4541302244216846 1.4385031862685047 ;
createNode mesh -n "pCubeShape6" -p "pCube6";
	rename -uid "51A4295F-4B9A-B072-8F78-AF8192D5B969";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pCube7";
	rename -uid "D056F67D-4214-DCD2-73C9-2B81DF3AE7C6";
	setAttr ".t" -type "double3" -4.4991690718875823 0 0 ;
	setAttr ".s" -type "double3" 0.808011447383991 0.46913040486683677 10.690420645699374 ;
createNode mesh -n "pCubeShape7" -p "pCube7";
	rename -uid "3B72C9B6-4797-3615-EEF8-3B97AB9947D0";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.5 0.375 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode transform -n "pPlane1";
	rename -uid "D3CA16A4-4B75-D25B-9FBF-9FAE969431C1";
	setAttr ".r" -type "double3" 0 89.999999999999972 0 ;
	setAttr ".s" -type "double3" 11.026232234123528 6.4159914618470006 8.3542985155832419 ;
createNode mesh -n "pPlaneShape1" -p "pPlane1";
	rename -uid "EE0879A5-4A01-ED1B-C750-D3AA432D1E9D";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".ai_translator" -type "string" "polymesh";
createNode lightLinker -s -n "lightLinker1";
	rename -uid "2CE91664-4CB2-0286-6A3B-FCBCFA88FA78";
	setAttr -s 7 ".lnk";
	setAttr -s 7 ".slnk";
createNode shapeEditorManager -n "shapeEditorManager";
	rename -uid "B5CCB883-4619-8EF9-9934-0BA0875BB517";
createNode poseInterpolatorManager -n "poseInterpolatorManager";
	rename -uid "48006C5D-4B30-8B9D-3701-92838CFC8F5F";
createNode displayLayerManager -n "layerManager";
	rename -uid "A9FD22F9-4EBC-EF70-BF40-93A71214164A";
	setAttr ".cdl" 12;
	setAttr -s 13 ".dli[1:12]"  1 2 3 4 5 6 7 8 
		9 10 11 12;
	setAttr -s 13 ".dli";
createNode displayLayer -n "defaultLayer";
	rename -uid "A61F1FBC-4C3D-EA50-5277-DC8CC5C673CB";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "19FE5B3C-4BAB-41AD-82BA-D78E4331CDFD";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "39F23C23-49E5-D7C5-CAD1-C780BCB864AC";
	setAttr ".g" yes;
createNode polyCube -n "polyCube1";
	rename -uid "D5330FCA-40DE-FD3D-52CD-0CA9707B5960";
	setAttr ".cuv" 4;
createNode aiStandard -n "aiStandard1";
	rename -uid "F57E4711-433E-8D53-274A-398AB1F110D7";
	setAttr ".Kd_color" -type "float3" 0.090999998 0.090999998 0.090999998 ;
createNode shadingEngine -n "aiStandard1SG";
	rename -uid "3E35B00A-4B35-BA1B-A29D-779E96A591E3";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo1";
	rename -uid "837C7BD5-4AE8-EEF6-B6F8-CA9D702EE3D9";
createNode aiOptions -s -n "defaultArnoldRenderOptions";
	rename -uid "14B893CC-4A5D-F948-9CE4-50B2FAF6E4A6";
	setAttr ".version" -type "string" "1.3.0.0";
createNode aiAOVFilter -s -n "defaultArnoldFilter";
	rename -uid "8B8684B7-451B-7170-7A42-2A90ABD433A3";
	setAttr ".ai_translator" -type "string" "gaussian";
createNode aiAOVDriver -s -n "defaultArnoldDriver";
	rename -uid "18E9245B-4366-957E-AE14-B3B216CC53D6";
	setAttr ".ai_translator" -type "string" "exr";
createNode aiAOVDriver -s -n "defaultArnoldDisplayDriver";
	rename -uid "2506A37D-493E-DA71-6E7D-32B06F8BBBCD";
	setAttr ".output_mode" 0;
	setAttr ".ai_translator" -type "string" "maya";
createNode polyExtrudeFace -n "polyExtrudeFace1";
	rename -uid "64EF0C0A-47F0-D05E-8088-09A70465F81E";
	setAttr ".ics" -type "componentList" 1 "f[3]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.5 0 ;
	setAttr ".rs" 47325;
	setAttr ".lt" -type "double3" 0 -9.2444637330587321e-033 0.12235756527802377 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 -0.5 -0.5 ;
	setAttr ".cbx" -type "double3" 0.5 -0.5 0.5 ;
createNode polyTweak -n "polyTweak1";
	rename -uid "9F51B779-4F67-5A4E-117F-60B81FE378D9";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk[2:5]" -type "float3"  0.10347798 -0.80840737 -0.10347798
		 -0.10347798 -0.80840737 -0.10347798 0.10347798 -0.80840737 0.10347798 -0.10347798
		 -0.80840737 0.10347798;
createNode polyExtrudeFace -n "polyExtrudeFace2";
	rename -uid "91ECED70-48CC-D630-ECF4-54BFB065725A";
	setAttr ".ics" -type "componentList" 1 "f[6:9]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.5611788 0 ;
	setAttr ".rs" 55833;
	setAttr ".lt" -type "double3" 0 -1.3625396465941202e-017 0.11125980548373404 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.5 -0.62235760688781738 -0.5 ;
	setAttr ".cbx" -type "double3" 0.5 -0.5 0.5 ;
createNode displayLayer -n "button1";
	rename -uid "49F0275D-4B09-06EC-109B-5DB0E1B6EF0B";
	setAttr ".v" no;
	setAttr ".do" 1;
createNode displayLayer -n "pain_meter";
	rename -uid "7BDF3CFF-4269-5CC4-D84D-D3AA389570A1";
	setAttr ".v" no;
	setAttr ".do" 2;
createNode polyPipe -n "polyPipe1";
	rename -uid "9F1DA5AB-47E1-FC74-70FE-44853510B07D";
	setAttr ".h" 0.5;
	setAttr ".t" 0.05;
	setAttr ".sc" 0;
createNode polyCylinder -n "polyCylinder1";
	rename -uid "E9ECA0B6-4445-F5FC-0AF2-8A979157EEDF";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "DD54EF5E-4A6E-5821-BDC2-149B6B1B2E7E";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n"
		+ "                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n"
		+ "                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n"
		+ "                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n"
		+ "\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 1\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -showCurveNames 0\n                -showActiveCurveNames 0\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                -valueLinesToggle 1\n"
		+ "                -outliner \"graphEditor1OutlineEd\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n"
		+ "                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n"
		+ "                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n"
		+ "                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n"
		+ "            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n"
		+ "            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n"
		+ "            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n"
		+ "                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n"
		+ "            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n"
		+ "            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 0\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 1\n"
		+ "                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 256 256 \n                -bumpResolution 512 512 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n"
		+ "                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n"
		+ "                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1739\n                -height 942\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n"
		+ "            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 0\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 0\n            -activeComponentsXray 0\n            -displayTextures 1\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 256 256 \n            -bumpResolution 512 512 \n"
		+ "            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n"
		+ "            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1739\n            -height 942\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"ToggledOutliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n"
		+ "                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -isSet 0\n                -isSetMember 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n"
		+ "                -renderFilterVisible 0\n                -renderFilterIndex 0\n                -selectionOrder \"chronological\" \n                -expandAttribute 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"ToggledOutliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n"
		+ "            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -isSet 0\n            -isSetMember 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n"
		+ "            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            -renderFilterIndex 0\n            -selectionOrder \"chronological\" \n            -expandAttribute 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -showShapes 0\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n"
		+ "                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 1\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n"
		+ "                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -showShapes 0\n            -showAssignedMaterials 0\n            -showTimeEditor 1\n            -showReferenceNodes 0\n            -showReferenceMembers 0\n            -showAttributes 0\n            -showConnected 0\n"
		+ "            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 1\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n"
		+ "            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            -renderFilterVisible 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n"
		+ "                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n"
		+ "                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n"
		+ "                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showAssignedMaterials 0\n                -showTimeEditor 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n"
		+ "                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n"
		+ "                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                -renderFilterVisible 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n"
		+ "                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"timeEditorPanel\" (localizedPanelLabel(\"Time Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"timeEditorPanel\" -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Time Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n"
		+ "                -initialized 0\n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -displayValues 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -initialized 0\n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n"
		+ "            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n"
		+ "                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n"
		+ "                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"shapePanel\" (localizedPanelLabel(\"Shape Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tshapePanel -unParent -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tshapePanel -edit -l (localizedPanelLabel(\"Shape Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"posePanel\" (localizedPanelLabel(\"Pose Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tposePanel -unParent -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels ;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tposePanel -edit -l (localizedPanelLabel(\"Pose Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"contentBrowserPanel\" (localizedPanelLabel(\"Content Browser\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"contentBrowserPanel\" -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Content Browser\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n"
		+ "            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n"
		+ "                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n"
		+ "                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-userCreated false\n\t\t\t\t-defaultImage \"\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"single\\\" -ps 1 100 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1739\\n    -height 942\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"smoothShaded\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 0\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 0\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 0\\n    -activeComponentsXray 0\\n    -displayTextures 1\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"vp2Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 256 256 \\n    -bumpResolution 512 512 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1739\\n    -height 942\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "75531DA5-4024-4834-3D75-CBA15512A011";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 120 -ast 1 -aet 200 ";
	setAttr ".st" 6;
createNode aiStandard -n "meter_face";
	rename -uid "50CF23AF-4F9A-D1E8-ED8C-42834FF361EF";
createNode shadingEngine -n "aiStandard2SG";
	rename -uid "D020DE2D-41B6-D785-CA5B-618A9082E4D6";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo2";
	rename -uid "3492618E-4495-F119-8328-768503946118";
createNode file -n "file1";
	rename -uid "DC0DD6DC-4C6A-6DB1-EE65-8EA439039CA1";
	setAttr ".ftn" -type "string" "C:/Users/emily/Documents/maya/projects/Parallax//images/hide-the-pain-stockphoto-840x560.jpg";
	setAttr ".pfr" 2.9180328845977783;
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture1";
	rename -uid "57C187C6-4983-125B-6E72-B8A81D874874";
	setAttr ".re" -type "float2" 3 3 ;
createNode displayLayer -n "switch1";
	rename -uid "9F9730E9-4CEB-943F-C431-AFAE718D815F";
	setAttr ".v" no;
	setAttr ".do" 3;
createNode polyCube -n "polyCube3";
	rename -uid "6B0C1394-4D8D-B27D-DA95-6E9E08652901";
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel2";
	rename -uid "087E42B5-4DDC-E883-7C7C-3983209093AB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1.2965622690962124 0 0 0 0 0.10129721397248868 0 0 0 0 2.2615709292906581 0
		 0 -0.032922030110638101 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.099999999999999978;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCube -n "polyCube4";
	rename -uid "4F1607B8-4C81-DEC9-E49F-2F9DD3987A5E";
	setAttr ".sd" 2;
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel3";
	rename -uid "384F0DA1-4AF5-2372-204A-C9937D526626";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.66337800179607154 0 0 0 0 1.8537458280455104 0
		 0 0.036785105532756934 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.175;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak2";
	rename -uid "E46C86A0-46D4-F878-DDEC-7FB60CDEAB12";
	setAttr ".uopa" yes;
	setAttr -s 2 ".tk[4:5]" -type "float3"  0 -0.37515417 0 0 -0.37515417
		 0;
createNode polyBevel3 -n "polyBevel4";
	rename -uid "E5D931DD-4225-36FF-520A-898EC7319C40";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCylinder -n "polyCylinder2";
	rename -uid "26677574-4AE2-5AF9-1216-97B3372E887D";
	setAttr ".sc" 2;
	setAttr ".cuv" 3;
createNode polyExtrudeFace -n "polyExtrudeFace3";
	rename -uid "CB50FA11-431B-F7B8-5995-9284B02A3303";
	setAttr ".ics" -type "componentList" 1 "f[60:99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.82320113815206575 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -5.9604645e-008 0 -8.9406967e-008 ;
	setAttr ".rs" 46477;
	setAttr ".lt" -type "double3" -8.6329619490854217e-017 7.0066786004160358e-017 -0.065552751339384457 ;
	setAttr ".off" 0.090000003576278687;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.584148108959198 -0.96174248188950895 -0.58414828777313232 ;
	setAttr ".cbx" -type "double3" 0.58414798974990845 0.96174248188950895 0.584148108959198 ;
createNode polyTweak -n "polyTweak3";
	rename -uid "381BE22B-47B3-C2ED-94DA-8FAF4223E126";
	setAttr ".uopa" yes;
	setAttr -s 62 ".tk";
	setAttr ".tk[0]" -type "float3" 0.080029555 -0.16829592 -0.026003156 ;
	setAttr ".tk[1]" -type "float3" 0.068078108 -0.16829574 -0.0494604 ;
	setAttr ".tk[2]" -type "float3" 0.049460992 -0.16829592 -0.068077296 ;
	setAttr ".tk[3]" -type "float3" 0.026003305 -0.16829574 -0.080030493 ;
	setAttr ".tk[4]" -type "float3" 1.0031219e-008 -0.16829592 -0.084148042 ;
	setAttr ".tk[5]" -type "float3" -0.026003122 -0.16829574 -0.08003062 ;
	setAttr ".tk[6]" -type "float3" -0.049460955 -0.16829592 -0.068077169 ;
	setAttr ".tk[7]" -type "float3" -0.068076976 -0.16829574 -0.049460679 ;
	setAttr ".tk[8]" -type "float3" -0.080029532 -0.16829592 -0.026003167 ;
	setAttr ".tk[9]" -type "float3" -0.084147617 -0.16829574 1.5046897e-008 ;
	setAttr ".tk[10]" -type "float3" -0.080029532 -0.16829592 0.026003176 ;
	setAttr ".tk[11]" -type "float3" -0.068077035 -0.16829574 0.049461354 ;
	setAttr ".tk[12]" -type "float3" -0.049460948 -0.16829592 0.068077296 ;
	setAttr ".tk[13]" -type "float3" -0.026003186 -0.16829574 0.080030493 ;
	setAttr ".tk[14]" -type "float3" 7.5234174e-009 -0.16829592 0.084148005 ;
	setAttr ".tk[15]" -type "float3" 0.026003126 -0.16829574 0.080030672 ;
	setAttr ".tk[16]" -type "float3" 0.049460955 -0.16829592 0.068077177 ;
	setAttr ".tk[17]" -type "float3" 0.068076976 -0.16829574 0.049461409 ;
	setAttr ".tk[18]" -type "float3" 0.080029532 -0.16829592 0.026003171 ;
	setAttr ".tk[19]" -type "float3" 0.084147617 -0.16829574 1.5046897e-008 ;
	setAttr ".tk[21]" -type "float3" -0.12398615 0.15325592 0.090082124 ;
	setAttr ".tk[23]" -type "float3" -0.047358707 0.15325592 0.14575455 ;
	setAttr ".tk[25]" -type "float3" 0.047358755 0.15325592 0.14575443 ;
	setAttr ".tk[27]" -type "float3" 0.12398691 0.15325592 0.090081885 ;
	setAttr ".tk[29]" -type "float3" 0.15325642 0.15325592 -2.7404285e-008 ;
	setAttr ".tk[31]" -type "float3" 0.12398686 0.15325592 -0.090081438 ;
	setAttr ".tk[33]" -type "float3" 0.047358692 0.15325592 -0.14575455 ;
	setAttr ".tk[35]" -type "float3" -0.04735877 0.15325592 -0.14575443 ;
	setAttr ".tk[37]" -type "float3" -0.12398691 0.15325592 -0.090081379 ;
	setAttr ".tk[39]" -type "float3" -0.15325642 0.15325592 -2.7404285e-008 ;
	setAttr ".tk[41]" -type "float3" -0.12398691 -0.15325616 0.090081714 ;
	setAttr ".tk[43]" -type "float3" -0.047358792 -0.15325616 0.14575525 ;
	setAttr ".tk[45]" -type "float3" 0.047358725 -0.15325616 0.14575525 ;
	setAttr ".tk[47]" -type "float3" 0.12398677 -0.15325616 0.090081684 ;
	setAttr ".tk[49]" -type "float3" 0.15325616 -0.15325616 -2.7404333e-008 ;
	setAttr ".tk[51]" -type "float3" 0.12398676 -0.15325616 -0.090081714 ;
	setAttr ".tk[53]" -type "float3" 0.047358721 -0.15325616 -0.14575525 ;
	setAttr ".tk[55]" -type "float3" -0.047358748 -0.15325616 -0.14575525 ;
	setAttr ".tk[57]" -type "float3" -0.12398677 -0.15325616 -0.090081714 ;
	setAttr ".tk[59]" -type "float3" -0.15325616 -0.15325616 -2.7404333e-008 ;
	setAttr ".tk[60]" -type "float3" 0.080029555 0.16829592 -0.026003156 ;
	setAttr ".tk[61]" -type "float3" 0.068077222 0.16829592 -0.049460977 ;
	setAttr ".tk[62]" -type "float3" 0.049460992 0.16829592 -0.068077296 ;
	setAttr ".tk[63]" -type "float3" 0.026003178 0.16829592 -0.080029517 ;
	setAttr ".tk[64]" -type "float3" 1.0031219e-008 0.16829592 -0.084148042 ;
	setAttr ".tk[65]" -type "float3" -0.026003156 0.16829592 -0.08002951 ;
	setAttr ".tk[66]" -type "float3" -0.049460955 0.16829592 -0.068077169 ;
	setAttr ".tk[67]" -type "float3" -0.068077169 0.16829592 -0.049460948 ;
	setAttr ".tk[68]" -type "float3" -0.080029532 0.16829592 -0.026003167 ;
	setAttr ".tk[69]" -type "float3" -0.084147997 0.16829592 1.5046835e-008 ;
	setAttr ".tk[70]" -type "float3" -0.080029532 0.16829592 0.026003176 ;
	setAttr ".tk[71]" -type "float3" -0.068077162 0.16829592 0.049460977 ;
	setAttr ".tk[72]" -type "float3" -0.049460948 0.16829592 0.068077296 ;
	setAttr ".tk[73]" -type "float3" -0.026003137 0.16829592 0.080029517 ;
	setAttr ".tk[74]" -type "float3" 7.5234174e-009 0.16829592 0.084148042 ;
	setAttr ".tk[75]" -type "float3" 0.026003169 0.16829592 0.08002951 ;
	setAttr ".tk[76]" -type "float3" 0.049460955 0.16829592 0.068077177 ;
	setAttr ".tk[77]" -type "float3" 0.068077169 0.16829592 0.04946097 ;
	setAttr ".tk[78]" -type "float3" 0.080029532 0.16829592 0.026003171 ;
	setAttr ".tk[79]" -type "float3" 0.084147997 0.16829592 1.5046835e-008 ;
	setAttr ".tk[80]" -type "float3" 1.0031219e-008 -0.16829592 1.5046835e-008 ;
	setAttr ".tk[81]" -type "float3" 1.0031219e-008 0.16829592 1.5046835e-008 ;
createNode polyExtrudeFace -n "polyExtrudeFace4";
	rename -uid "E9B96023-4DEB-1837-FC98-61BC0440567B";
	setAttr ".ics" -type "componentList" 1 "f[60:99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.82320113815206575 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -4.4703484e-008 0 -1.1920929e-007 ;
	setAttr ".rs" 64420;
	setAttr ".off" 0.10000000149011612;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4930262565612793 -0.89618978343439393 -0.49302652478218079 ;
	setAttr ".cbx" -type "double3" 0.49302616715431213 0.89618978343439393 0.49302628636360168 ;
createNode polyExtrudeFace -n "polyExtrudeFace5";
	rename -uid "8FBF4487-4ECA-210E-A760-33A40E77DA91";
	setAttr ".ics" -type "componentList" 1 "f[60:99]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.82320113815206575 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -2.9802322e-008 0 -1.1920929e-007 ;
	setAttr ".rs" 46261;
	setAttr ".lt" -type "double3" -4.8656272407806385e-017 7.4159939244663059e-018 -0.063932444983205536 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.39177975058555603 -0.89618978343439393 -0.39178010821342468 ;
	setAttr ".cbx" -type "double3" 0.39177969098091125 0.89618978343439393 0.39177986979484558 ;
createNode polyBevel3 -n "polyBevel5";
	rename -uid "DA3AFF99-44FA-5938-3881-ECB1A06972FD";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.82320113815206575 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyExtrudeFace -n "polyExtrudeFace6";
	rename -uid "D6D143E6-440A-D682-A75A-53BE8D557BB3";
	setAttr ".ics" -type "componentList" 2 "f[722]" "f[743]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.82320113815206575 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 7.4505806e-009 0 3.7252903e-008 ;
	setAttr ".rs" 47552;
	setAttr ".lt" -type "double3" 0 2.3184334013922017e-018 -0.020883149841578859 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.14269869029521942 -0.8322572644883095 -0.14269915223121643 ;
	setAttr ".cbx" -type "double3" 0.14269870519638062 0.8322572644883095 0.1426992267370224 ;
createNode displayLayer -n "knob1";
	rename -uid "C1272C2A-42FF-EC91-3506-DBA8CA1DF985";
	setAttr ".v" no;
	setAttr ".do" 4;
createNode polyCylinder -n "polyCylinder3";
	rename -uid "68F4AD81-4FCF-6712-6C86-C098282BD53A";
	setAttr ".sa" 16;
	setAttr ".sc" 3;
	setAttr ".cuv" 3;
	setAttr ".rcp" yes;
createNode polyExtrudeFace -n "polyExtrudeFace7";
	rename -uid "C3D0F3D2-4ACF-DD15-5716-CC9D9D2D0AD3";
	setAttr ".ics" -type "componentList" 2 "f[64:79]" "f[96:111]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 1.0084316 0 ;
	setAttr ".rs" 41407;
	setAttr ".lt" -type "double3" -7.5719221241531576e-016 -1.2325210296815214e-015 
		-1.8872822587581251 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.86602538824081421 1.0054154396057129 -0.86602538824081421 ;
	setAttr ".cbx" -type "double3" 0.86602538824081421 1.0114476680755615 0.86602538824081421 ;
createNode polyTweak -n "polyTweak4";
	rename -uid "7A3D60D9-49CB-9F67-C491-A4A7D6682281";
	setAttr ".uopa" yes;
	setAttr -s 36 ".tk";
	setAttr ".tk[1]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[17]" -type "float3" 0 1.4901161e-008 0 ;
	setAttr ".tk[64]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[65]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[66]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[67]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[68]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[69]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[70]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[71]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[72]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[73]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[74]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[75]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[76]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[77]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[78]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[79]" -type "float3" 0 -0.48855227 0 ;
	setAttr ".tk[80]" -type "float3" 0.21756195 -0.85545534 -0.090117186 ;
	setAttr ".tk[81]" -type "float3" 0.16651487 -0.85545534 -0.16651487 ;
	setAttr ".tk[82]" -type "float3" 0.090117186 -0.85545534 -0.21756195 ;
	setAttr ".tk[83]" -type "float3" -4.3258363e-017 -0.85545534 -0.23548739 ;
	setAttr ".tk[84]" -type "float3" -0.090117186 -0.85545534 -0.21756195 ;
	setAttr ".tk[85]" -type "float3" -0.16651487 -0.85545534 -0.16651487 ;
	setAttr ".tk[86]" -type "float3" -0.21756195 -0.85545534 -0.090117186 ;
	setAttr ".tk[87]" -type "float3" -0.23548739 -0.85545534 2.8838898e-017 ;
	setAttr ".tk[88]" -type "float3" -0.21756195 -0.85545534 0.090117186 ;
	setAttr ".tk[89]" -type "float3" -0.16651487 -0.85545534 0.16651487 ;
	setAttr ".tk[90]" -type "float3" -0.090117186 -0.85545534 0.21756195 ;
	setAttr ".tk[91]" -type "float3" 1.4419449e-017 -0.85545534 0.23548739 ;
	setAttr ".tk[92]" -type "float3" 0.090117186 -0.85545534 0.21756195 ;
	setAttr ".tk[93]" -type "float3" 0.16651487 -0.85545534 0.16651487 ;
	setAttr ".tk[94]" -type "float3" 0.21756195 -0.85545534 0.090117186 ;
	setAttr ".tk[95]" -type "float3" 0.23548739 -0.85545534 0 ;
	setAttr ".tk[96]" -type "float3" 0 4.4703484e-008 0 ;
	setAttr ".tk[97]" -type "float3" 0 -0.9945845 0 ;
createNode polyExtrudeFace -n "polyExtrudeFace8";
	rename -uid "9067E0A0-410A-5FD2-8237-48BB1B19084E";
	setAttr ".ics" -type "componentList" 1 "f[96:111]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0 -0.87926722 0 ;
	setAttr ".rs" 52722;
	setAttr ".lt" -type "double3" 4.0305903976418271e-017 -1.0928757898653885e-015 1.8230970513780316 ;
	setAttr ".ls" -type "double3" 1 1 2.7240935079988424 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.74841105937957764 -0.88186657428741455 -0.74841123819351196 ;
	setAttr ".cbx" -type "double3" 0.74841105937957764 -0.87666785717010498 0.74841123819351196 ;
createNode displayLayer -n "knob2";
	rename -uid "199FEF17-4301-A6A9-8E71-6CB4061092B3";
	setAttr ".v" no;
	setAttr ".do" 5;
createNode polyCube -n "polyCube5";
	rename -uid "E18BA2BC-43BB-28EA-D5E3-97BAF60DEADA";
	setAttr ".sw" 3;
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace9";
	rename -uid "233052B7-4347-BABB-D0CC-D6AA9C0BB222";
	setAttr ".ics" -type "componentList" 1 "f[4]";
	setAttr ".ix" -type "matrix" 3.5895374270531919 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 5.3488275e-008 0.5 0 ;
	setAttr ".rs" 62725;
	setAttr ".lt" -type "double3" 0 7.3955709864469857e-032 0.88907656383492339 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.59825620218334807 0.5 -0.5 ;
	setAttr ".cbx" -type "double3" 0.59825630915989969 0.5 0.5 ;
createNode polyBevel3 -n "polyBevel6";
	rename -uid "4D59CDCF-4032-4317-CFCF-F1B757084EA9";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 3.5895374270531919 0 0 0 0 1 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.56;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode aiStandard -n "aiStandard3";
	rename -uid "C47C6F1D-4B43-6757-566F-7E8575BDF0D3";
	setAttr ".Kd_color" -type "float3" 0.8143 0.2075 0.2075 ;
createNode shadingEngine -n "aiStandard3SG";
	rename -uid "BB36270D-4768-FD2F-858D-E9B799E4EA71";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo3";
	rename -uid "51D8F48E-4412-6BD7-EAD5-D4A7FB526EFF";
createNode polyCylinder -n "polyCylinder4";
	rename -uid "7CB262F4-4DA3-10DC-D01E-619ABF2F07E5";
	setAttr ".sa" 16;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode displayLayer -n "lever1";
	rename -uid "E39CF5E2-4B62-B6CC-92A7-569F7AE50421";
	setAttr ".v" no;
	setAttr ".do" 6;
createNode polyCloseBorder -n "polyCloseBorder1";
	rename -uid "5FA68A7F-4BC9-775B-3DEB-548B2ADDF0BC";
	setAttr ".ics" -type "componentList" 1 "e[0:19]";
createNode deleteComponent -n "deleteComponent2";
	rename -uid "8D8A12F4-4BD5-4768-C3D5-ECBEA4FC59B4";
	setAttr ".dc" -type "componentList" 2 "f[0:79]" "f[180:199]";
createNode deleteComponent -n "deleteComponent1";
	rename -uid "27CFC83F-4547-AE48-7CBD-759883A7DBE1";
	setAttr ".dc" -type "componentList" 2 "vtx[0:79]" "vtx[200]";
createNode polyCylinder -n "polyCylinder5";
	rename -uid "CB1B2438-4419-9571-90B4-C7977FBF5B11";
	setAttr ".sc" 5;
	setAttr ".cuv" 3;
	setAttr ".rcp" yes;
createNode polyCylinder -n "polyCylinder6";
	rename -uid "35C08665-4928-B882-565D-F4992ADD63FD";
	setAttr ".sa" 16;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode aiStandard -n "aiStandard4";
	rename -uid "81A84791-4F27-1A9F-C62B-61B418E69EFE";
	setAttr ".Kd_color" -type "float3" 1 0.18300003 0.18300003 ;
createNode shadingEngine -n "aiStandard4SG";
	rename -uid "1E0FBD76-4F94-D3D4-F2B1-779E35FB360A";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo4";
	rename -uid "E5EF2787-4B0A-E634-708B-2A9FD0FE44B8";
createNode displayLayer -n "button2";
	rename -uid "F06AB885-4E15-1D19-EB10-458367E93FE3";
	setAttr ".v" no;
	setAttr ".do" 7;
createNode polyCylinder -n "polyCylinder7";
	rename -uid "55475AFE-4169-5D61-C8F6-32B821696966";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyBevel3 -n "polyBevel7";
	rename -uid "BE3E791F-4E0A-4BC9-DD7C-8BA9400B226A";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.25933185624560434 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyCylinder -n "polyCylinder8";
	rename -uid "961351D4-420D-4C65-A490-66934F4B88AA";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent3";
	rename -uid "67524B66-4ECF-97AF-61A2-CD8E3E8321A0";
	setAttr ".dc" -type "componentList" 4 "f[0:8]" "f[19:28]" "f[39:48]" "f[59]";
createNode polyCloseBorder -n "polyCloseBorder2";
	rename -uid "0527504D-44B4-2F03-57FC-16AD9FB53B0E";
	setAttr ".ics" -type "componentList" 4 "e[20]" "e[30:31]" "e[41:42]" "e[52]";
createNode polyBevel3 -n "polyBevel8";
	rename -uid "71CF6F87-4CF3-3F2F-67F4-65ABC9C0113B";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.72401440082500135 0 0 0 0 -7.0381386516717514e-017 -0.15848479304525392 0
		 0 0.1769813086088273 -7.8595489498324199e-017 0 0.74875897730209862 0.43710439214574615 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 1;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode displayLayer -n "knob3";
	rename -uid "1B42452B-4326-CC4E-D75C-E783759B6B9E";
	setAttr ".v" no;
	setAttr ".do" 8;
createNode polySphere -n "polySphere1";
	rename -uid "B3E68036-438F-8419-1169-F0A50B5BAF11";
	setAttr ".sa" 16;
	setAttr ".sh" 16;
createNode displayLayer -n "switch2";
	rename -uid "B085FF30-4ADB-F5F5-7348-ACAA65A0BA5F";
	setAttr ".v" no;
	setAttr ".do" 9;
createNode polyCylinder -n "polyCylinder9";
	rename -uid "FECA15CC-4313-4F02-E117-83A95FEF917C";
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode polyCube -n "polyCube6";
	rename -uid "A714C179-4DA6-AFEA-A5D6-BFA804180DEF";
	setAttr ".sw" 2;
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel9";
	rename -uid "792D4A44-42E5-C5F2-9573-93ACC48A53C1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.44033425117997832 0 0 0 0 1 0 0 0.4254198790931436 -0.32300284970994486 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.39999999999999991;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak5";
	rename -uid "618D1B53-4D5A-AC5D-E9A2-4690CF07E3DA";
	setAttr ".uopa" yes;
	setAttr -s 4 ".tk";
	setAttr ".tk[1]" -type "float3" 0 0 0.69936997 ;
	setAttr ".tk[4]" -type "float3" 0 0.12260618 0.69936997 ;
	setAttr ".tk[7]" -type "float3" 0 0.12260618 -0.14675836 ;
	setAttr ".tk[10]" -type "float3" 0 0 -0.14675836 ;
createNode polyBevel3 -n "polyBevel10";
	rename -uid "0B62B22C-4CAD-5673-9DB9-77B32181385E";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.27720315958384456 0 0 0 0 1 0 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".f" 0.4;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode displayLayer -n "knob4";
	rename -uid "CD402B39-4BED-2C2E-68C2-8193B498D449";
	setAttr ".v" no;
	setAttr ".do" 10;
createNode polyCube -n "polyCube7";
	rename -uid "BDDCD9D9-4254-059D-6B8E-128F8489FD7C";
	setAttr ".sw" 2;
	setAttr ".cuv" 4;
createNode polyBevel3 -n "polyBevel11";
	rename -uid "8F789BF0-4742-A269-17C8-A3BD4EEF7A72";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 0.4541302244216846 0 0 0 0 1.4385031862685047 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyTweak -n "polyTweak6";
	rename -uid "6C2EE9F3-4C8D-57FD-E5C5-A7BAAB65A061";
	setAttr ".uopa" yes;
	setAttr -s 5 ".tk";
	setAttr ".tk[2]" -type "float3" 0 -5.9604645e-008 -7.4505806e-009 ;
	setAttr ".tk[3]" -type "float3" 0 -5.9604645e-008 -7.4505806e-009 ;
	setAttr ".tk[4]" -type "float3" 0 0.28057027 7.4505806e-009 ;
	setAttr ".tk[5]" -type "float3" 0 -5.9604645e-008 7.4505806e-009 ;
	setAttr ".tk[7]" -type "float3" 0 0.28057033 0 ;
createNode deleteComponent -n "deleteComponent4";
	rename -uid "F9800AD1-4A58-8D4B-694D-6F9453853857";
	setAttr ".dc" -type "componentList" 7 "f[0:1]" "f[3:4]" "f[6]" "f[18:19]" "f[26:27]" "f[30:32]" "f[39:41]";
createNode polyCloseBorder -n "polyCloseBorder3";
	rename -uid "07F450B9-4F9A-A7C2-7976-00AB95CFD56A";
	setAttr ".ics" -type "componentList" 7 "e[0:2]" "e[6:7]" "e[11:12]" "e[38]" "e[46]" "e[54]" "e[56:57]";
createNode displayLayer -n "button3";
	rename -uid "CAF29A03-4F83-477E-4391-5AA0C35624C0";
	setAttr ".v" no;
	setAttr ".do" 11;
createNode polyCube -n "polyCube8";
	rename -uid "7BC39195-493F-465C-F4FA-00849A745001";
	setAttr ".cuv" 4;
createNode polyExtrudeFace -n "polyExtrudeFace10";
	rename -uid "C45D4238-4A06-FAC7-D526-F497A775CA62";
	setAttr ".ics" -type "componentList" 2 "f[0]" "f[2]";
	setAttr ".ix" -type "matrix" 0.808011447383991 0 0 0 0 0.46913040486683677 0 0 0 0 10.690420645699374 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".rs" 33424;
	setAttr ".lt" -type "double3" 0 0 0.97000543095620095 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -0.4040057236919955 -0.23456520243341838 -5.3452103228496872 ;
	setAttr ".cbx" -type "double3" 0.4040057236919955 0.23456520243341838 5.3452103228496872 ;
createNode polyExtrudeFace -n "polyExtrudeFace11";
	rename -uid "1658AFC8-4879-CF0F-ABF3-8395132C863A";
	setAttr ".ics" -type "componentList" 2 "f[7]" "f[11]";
	setAttr ".ix" -type "matrix" 0.808011447383991 0 0 0 0 0.46913040486683677 0 0 0 0 10.690420645699374 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 0.40400577 0 0 ;
	setAttr ".rs" 39977;
	setAttr ".lt" -type "double3" -1.749840643475258e-015 5.9164567891575894e-031 8.119418330087079 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 0.40400577185323078 -0.23456520243341838 -6.3152160304525591 ;
	setAttr ".cbx" -type "double3" 0.40400577185323078 0.23456520243341838 6.3152160304525591 ;
createNode polyExtrudeFace -n "polyExtrudeFace12";
	rename -uid "59F8953B-4D50-DA7E-B326-13A40E0108C0";
	setAttr ".ics" -type "componentList" 2 "f[7]" "f[11]";
	setAttr ".ix" -type "matrix" 0.808011447383991 0 0 0 0 0.46913040486683677 0 0 0 0 10.690420645699374 0
		 0 0 0 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" 8.5234232 0 0 ;
	setAttr ".rs" 34287;
	setAttr ".lt" -type "double3" 1.7988699754213148e-016 -6.1629758220391547e-032 0.81013901509954067 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" 8.52342361843208 -0.23456520243341838 -6.3152160304525591 ;
	setAttr ".cbx" -type "double3" 8.52342361843208 0.23456520243341838 6.3152160304525591 ;
createNode deleteComponent -n "deleteComponent5";
	rename -uid "6F8D5F64-422E-08F6-3DE6-B29CDFD15390";
	setAttr ".dc" -type "componentList" 1 "f[26]";
createNode deleteComponent -n "deleteComponent6";
	rename -uid "537E186A-44B7-90E3-37C3-E1B2D0253A5B";
	setAttr ".dc" -type "componentList" 1 "f[22]";
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "C94471AA-474E-9D97-F679-87B675AEBF99";
	setAttr ".ics" -type "componentList" 4 "e[30]" "e[38]" "e[44:46]" "e[52:54]";
	setAttr ".ix" -type "matrix" 0.808011447383991 0 0 0 0 0.46913040486683677 0 0 0 0 10.690420645699374 0
		 0 0 0 1;
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 0;
	setAttr ".sv1" 17;
	setAttr ".sv2" 20;
	setAttr ".d" 1;
createNode polyBevel3 -n "polyBevel12";
	rename -uid "C4158303-4EE1-B3D6-BB10-DAB5DB7349CB";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[*]";
	setAttr ".ix" -type "matrix" 0.808011447383991 0 0 0 0 0.46913040486683677 0 0 0 0 10.690420645699374 0
		 -4.2732639424125409 0 0 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".at" 180;
	setAttr ".sn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
createNode polyPlane -n "polyPlane1";
	rename -uid "58C2C011-4C90-E7F3-95A5-33BFE046DA10";
	setAttr ".sw" 1;
	setAttr ".sh" 1;
	setAttr ".cuv" 2;
createNode displayLayer -n "screen1";
	rename -uid "5D6854CE-437B-EB8E-816E-8598B248C5FD";
	setAttr ".v" no;
	setAttr ".do" 12;
createNode aiStandard -n "aiStandard5";
	rename -uid "EE51C862-492C-91DE-8252-50B54C88E681";
createNode shadingEngine -n "aiStandard5SG";
	rename -uid "2D6E3EDA-49FF-E914-7CB8-10AA0F6CB681";
	setAttr ".ihi" 0;
	setAttr ".ro" yes;
createNode materialInfo -n "materialInfo5";
	rename -uid "37B04664-4202-2E88-A240-A88BB55226CA";
createNode file -n "file2";
	rename -uid "2430A60D-4151-0AA3-017B-8A949B697413";
	setAttr ".ftn" -type "string" "C:/Users/emily/Documents/maya/projects/Parallax//images/hide-the-pain-stockphoto-840x560.jpg";
	setAttr ".cs" -type "string" "sRGB";
createNode place2dTexture -n "place2dTexture2";
	rename -uid "1025C926-4581-9174-56AC-9090551BC75D";
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
	setAttr -s 7 ".st";
select -ne :renderGlobalsList1;
select -ne :defaultShaderList1;
	setAttr -s 9 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -s 2 ".u";
select -ne :defaultRenderingList1;
select -ne :defaultTextureList1;
	setAttr -s 2 ".tx";
select -ne :initialShadingGroup;
	setAttr -s 14 ".dsm";
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
connectAttr "button1.di" "key.do";
connectAttr "polyExtrudeFace2.out" "keyShape.i";
connectAttr "pain_meter.di" "pPipe1.do";
connectAttr "polyBevel4.out" "pPipeShape1.i";
connectAttr "pain_meter.di" "pCylinder1.do";
connectAttr "polyCylinder1.out" "pCylinderShape1.i";
connectAttr "switch1.di" "pCube2.do";
connectAttr "polyBevel2.out" "pCubeShape2.i";
connectAttr "switch1.di" "pCube3.do";
connectAttr "polyBevel3.out" "pCubeShape3.i";
connectAttr "knob1.di" "pCylinder2.do";
connectAttr "polyExtrudeFace6.out" "pCylinderShape2.i";
connectAttr "knob2.di" "pCylinder3.do";
connectAttr "polyExtrudeFace8.out" "pCylinderShape3.i";
connectAttr "lever1.di" "pCube4.do";
connectAttr "polyBevel6.out" "pCubeShape4.i";
connectAttr "lever1.di" "pCylinder4.do";
connectAttr "polyCylinder4.out" "pCylinderShape4.i";
connectAttr "button2.di" "pCylinder5.do";
connectAttr "polyCloseBorder1.out" "pCylinderShape5.i";
connectAttr "button2.di" "pCylinder6.do";
connectAttr "polyCylinder6.out" "pCylinderShape6.i";
connectAttr "knob3.di" "pCylinder7.do";
connectAttr "polyBevel7.out" "pCylinderShape7.i";
connectAttr "knob3.di" "pCylinder8.do";
connectAttr "polyBevel8.out" "pCylinderShape8.i";
connectAttr "switch2.di" "pSphere1.do";
connectAttr "polySphere1.out" "pSphereShape1.i";
connectAttr "knob4.di" "pCylinder9.do";
connectAttr "polyBevel10.out" "pCylinderShape9.i";
connectAttr "knob4.di" "pCube5.do";
connectAttr "polyBevel9.out" "pCubeShape5.i";
connectAttr "button3.di" "pCube6.do";
connectAttr "polyCloseBorder3.out" "pCubeShape6.i";
connectAttr "screen1.di" "pCube7.do";
connectAttr "polyBevel12.out" "pCubeShape7.i";
connectAttr "screen1.di" "pPlane1.do";
connectAttr "polyPlane1.out" "pPlaneShape1.i";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandard1SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandard2SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandard3SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandard4SG.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" "aiStandard5SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandard1SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandard2SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandard3SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandard4SG.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" "aiStandard5SG.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "aiStandard1.out" "aiStandard1SG.ss";
connectAttr "keyShape.iog" "aiStandard1SG.dsm" -na;
connectAttr "aiStandard1SG.msg" "materialInfo1.sg";
connectAttr "aiStandard1.msg" "materialInfo1.m";
connectAttr "aiStandard1.msg" "materialInfo1.t" -na;
connectAttr ":defaultArnoldDisplayDriver.msg" ":defaultArnoldRenderOptions.drivers"
		 -na;
connectAttr ":defaultArnoldFilter.msg" ":defaultArnoldRenderOptions.filt";
connectAttr ":defaultArnoldDriver.msg" ":defaultArnoldRenderOptions.drvr";
connectAttr "polyTweak1.out" "polyExtrudeFace1.ip";
connectAttr "keyShape.wm" "polyExtrudeFace1.mp";
connectAttr "polyCube1.out" "polyTweak1.ip";
connectAttr "polyExtrudeFace1.out" "polyExtrudeFace2.ip";
connectAttr "keyShape.wm" "polyExtrudeFace2.mp";
connectAttr "layerManager.dli[1]" "button1.id";
connectAttr "layerManager.dli[2]" "pain_meter.id";
connectAttr "file1.oc" "meter_face.Kd_color";
connectAttr "meter_face.out" "aiStandard2SG.ss";
connectAttr "pCylinderShape1.iog" "aiStandard2SG.dsm" -na;
connectAttr "aiStandard2SG.msg" "materialInfo2.sg";
connectAttr "meter_face.msg" "materialInfo2.m";
connectAttr "meter_face.msg" "materialInfo2.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file1.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file1.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file1.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file1.ws";
connectAttr "place2dTexture1.c" "file1.c";
connectAttr "place2dTexture1.tf" "file1.tf";
connectAttr "place2dTexture1.rf" "file1.rf";
connectAttr "place2dTexture1.mu" "file1.mu";
connectAttr "place2dTexture1.mv" "file1.mv";
connectAttr "place2dTexture1.s" "file1.s";
connectAttr "place2dTexture1.wu" "file1.wu";
connectAttr "place2dTexture1.wv" "file1.wv";
connectAttr "place2dTexture1.re" "file1.re";
connectAttr "place2dTexture1.of" "file1.of";
connectAttr "place2dTexture1.r" "file1.ro";
connectAttr "place2dTexture1.n" "file1.n";
connectAttr "place2dTexture1.vt1" "file1.vt1";
connectAttr "place2dTexture1.vt2" "file1.vt2";
connectAttr "place2dTexture1.vt3" "file1.vt3";
connectAttr "place2dTexture1.vc1" "file1.vc1";
connectAttr "place2dTexture1.o" "file1.uv";
connectAttr "place2dTexture1.ofs" "file1.fs";
connectAttr "layerManager.dli[3]" "switch1.id";
connectAttr "polyCube3.out" "polyBevel2.ip";
connectAttr "pCubeShape2.wm" "polyBevel2.mp";
connectAttr "polyTweak2.out" "polyBevel3.ip";
connectAttr "pCubeShape3.wm" "polyBevel3.mp";
connectAttr "polyCube4.out" "polyTweak2.ip";
connectAttr "polyPipe1.out" "polyBevel4.ip";
connectAttr "pPipeShape1.wm" "polyBevel4.mp";
connectAttr "polyTweak3.out" "polyExtrudeFace3.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace3.mp";
connectAttr "polyCylinder2.out" "polyTweak3.ip";
connectAttr "polyExtrudeFace3.out" "polyExtrudeFace4.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace4.mp";
connectAttr "polyExtrudeFace4.out" "polyExtrudeFace5.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace5.mp";
connectAttr "polyExtrudeFace5.out" "polyBevel5.ip";
connectAttr "pCylinderShape2.wm" "polyBevel5.mp";
connectAttr "polyBevel5.out" "polyExtrudeFace6.ip";
connectAttr "pCylinderShape2.wm" "polyExtrudeFace6.mp";
connectAttr "layerManager.dli[4]" "knob1.id";
connectAttr "polyTweak4.out" "polyExtrudeFace7.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace7.mp";
connectAttr "polyCylinder3.out" "polyTweak4.ip";
connectAttr "polyExtrudeFace7.out" "polyExtrudeFace8.ip";
connectAttr "pCylinderShape3.wm" "polyExtrudeFace8.mp";
connectAttr "layerManager.dli[5]" "knob2.id";
connectAttr "polyCube5.out" "polyExtrudeFace9.ip";
connectAttr "pCubeShape4.wm" "polyExtrudeFace9.mp";
connectAttr "polyExtrudeFace9.out" "polyBevel6.ip";
connectAttr "pCubeShape4.wm" "polyBevel6.mp";
connectAttr "aiStandard3.out" "aiStandard3SG.ss";
connectAttr "pCubeShape4.iog" "aiStandard3SG.dsm" -na;
connectAttr "aiStandard3SG.msg" "materialInfo3.sg";
connectAttr "aiStandard3.msg" "materialInfo3.m";
connectAttr "aiStandard3.msg" "materialInfo3.t" -na;
connectAttr "layerManager.dli[6]" "lever1.id";
connectAttr "deleteComponent2.og" "polyCloseBorder1.ip";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "polyCylinder5.out" "deleteComponent1.ig";
connectAttr "aiStandard4.out" "aiStandard4SG.ss";
connectAttr "pCylinderShape5.iog" "aiStandard4SG.dsm" -na;
connectAttr "aiStandard4SG.msg" "materialInfo4.sg";
connectAttr "aiStandard4.msg" "materialInfo4.m";
connectAttr "aiStandard4.msg" "materialInfo4.t" -na;
connectAttr "layerManager.dli[7]" "button2.id";
connectAttr "polyCylinder7.out" "polyBevel7.ip";
connectAttr "pCylinderShape7.wm" "polyBevel7.mp";
connectAttr "polyCylinder8.out" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "polyCloseBorder2.ip";
connectAttr "polyCloseBorder2.out" "polyBevel8.ip";
connectAttr "pCylinderShape8.wm" "polyBevel8.mp";
connectAttr "layerManager.dli[8]" "knob3.id";
connectAttr "layerManager.dli[9]" "switch2.id";
connectAttr "polyTweak5.out" "polyBevel9.ip";
connectAttr "pCubeShape5.wm" "polyBevel9.mp";
connectAttr "polyCube6.out" "polyTweak5.ip";
connectAttr "polyCylinder9.out" "polyBevel10.ip";
connectAttr "pCylinderShape9.wm" "polyBevel10.mp";
connectAttr "layerManager.dli[10]" "knob4.id";
connectAttr "polyTweak6.out" "polyBevel11.ip";
connectAttr "pCubeShape6.wm" "polyBevel11.mp";
connectAttr "polyCube7.out" "polyTweak6.ip";
connectAttr "polyBevel11.out" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "polyCloseBorder3.ip";
connectAttr "layerManager.dli[11]" "button3.id";
connectAttr "polyCube8.out" "polyExtrudeFace10.ip";
connectAttr "pCubeShape7.wm" "polyExtrudeFace10.mp";
connectAttr "polyExtrudeFace10.out" "polyExtrudeFace11.ip";
connectAttr "pCubeShape7.wm" "polyExtrudeFace11.mp";
connectAttr "polyExtrudeFace11.out" "polyExtrudeFace12.ip";
connectAttr "pCubeShape7.wm" "polyExtrudeFace12.mp";
connectAttr "polyExtrudeFace12.out" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "polyBridgeEdge1.ip";
connectAttr "pCubeShape7.wm" "polyBridgeEdge1.mp";
connectAttr "polyBridgeEdge1.out" "polyBevel12.ip";
connectAttr "pCubeShape7.wm" "polyBevel12.mp";
connectAttr "layerManager.dli[12]" "screen1.id";
connectAttr "file2.oc" "aiStandard5.Kd_color";
connectAttr "aiStandard5.out" "aiStandard5SG.ss";
connectAttr "pPlaneShape1.iog" "aiStandard5SG.dsm" -na;
connectAttr "aiStandard5SG.msg" "materialInfo5.sg";
connectAttr "aiStandard5.msg" "materialInfo5.m";
connectAttr "aiStandard5.msg" "materialInfo5.t" -na;
connectAttr ":defaultColorMgtGlobals.cme" "file2.cme";
connectAttr ":defaultColorMgtGlobals.cfe" "file2.cmcf";
connectAttr ":defaultColorMgtGlobals.cfp" "file2.cmcp";
connectAttr ":defaultColorMgtGlobals.wsn" "file2.ws";
connectAttr "place2dTexture2.c" "file2.c";
connectAttr "place2dTexture2.tf" "file2.tf";
connectAttr "place2dTexture2.rf" "file2.rf";
connectAttr "place2dTexture2.mu" "file2.mu";
connectAttr "place2dTexture2.mv" "file2.mv";
connectAttr "place2dTexture2.s" "file2.s";
connectAttr "place2dTexture2.wu" "file2.wu";
connectAttr "place2dTexture2.wv" "file2.wv";
connectAttr "place2dTexture2.re" "file2.re";
connectAttr "place2dTexture2.of" "file2.of";
connectAttr "place2dTexture2.r" "file2.ro";
connectAttr "place2dTexture2.n" "file2.n";
connectAttr "place2dTexture2.vt1" "file2.vt1";
connectAttr "place2dTexture2.vt2" "file2.vt2";
connectAttr "place2dTexture2.vt3" "file2.vt3";
connectAttr "place2dTexture2.vc1" "file2.vc1";
connectAttr "place2dTexture2.o" "file2.uv";
connectAttr "place2dTexture2.ofs" "file2.fs";
connectAttr "aiStandard1SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandard2SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandard3SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandard4SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandard5SG.pa" ":renderPartition.st" -na;
connectAttr "aiStandard1.msg" ":defaultShaderList1.s" -na;
connectAttr "meter_face.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandard3.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandard4.msg" ":defaultShaderList1.s" -na;
connectAttr "aiStandard5.msg" ":defaultShaderList1.s" -na;
connectAttr "place2dTexture1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "place2dTexture2.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "file1.msg" ":defaultTextureList1.tx" -na;
connectAttr "file2.msg" ":defaultTextureList1.tx" -na;
connectAttr "pPipeShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape2.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape3.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape4.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape7.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape8.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pSphereShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCylinderShape9.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape5.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape6.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pCubeShape7.iog" ":initialShadingGroup.dsm" -na;
// End of useful buttons.ma
