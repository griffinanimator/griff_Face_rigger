//Maya ASCII 2016 scene
//Name: face_layout2.ma
//Last modified: Sat, Aug 20, 2016 09:43:54 PM
//Codeset: 1252
requires maya "2016";
requires -nodeType "ilrOptionsNode" -nodeType "ilrUIOptionsNode" -nodeType "ilrBakeLayerManager"
		 -nodeType "ilrBakeLayer" "Turtle" "2016.0.0";
requires "stereoCamera" "10.0";
requires "maxwell" "2.6.27";
currentUnit -l centimeter -a degree -t ntsc;
fileInfo "application" "maya";
fileInfo "product" "Maya 2016";
fileInfo "version" "2016";
fileInfo "cutIdentifier" "201502261600-953408";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
createNode transform -s -n "persp";
	rename -uid "A9E4A175-42B5-7451-592A-4DAA2E278B9D";
	setAttr ".t" -type "double3" 0.22790595425777974 -0.15933659250540949 4.2262228191273117 ;
	setAttr ".r" -type "double3" 2.0616474280940302 2520.5999999875185 -1.2424722979882843e-017 ;
	setAttr ".rp" -type "double3" 7.1831429693247628e-014 -2.1316282072803006e-014 0 ;
	setAttr ".rpt" -type "double3" -5.8420594377815085e-014 1.5329451621225635e-015 
		-7.1013430067869105e-014 ;
createNode camera -s -n "perspShape" -p "persp";
	rename -uid "F4A15BE6-4234-B9E0-CD67-828D5FF4E50C";
	setAttr -k off ".v";
	setAttr ".fl" 34.999999999999979;
	setAttr ".coi" 4.1621132239241785;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 0 0 0.053217066909310669 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	rename -uid "438991FF-4364-B43D-EC80-9F83D7708639";
	setAttr ".t" -type "double3" 0 100.19365339184971 0.053217066909332915 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	rename -uid "6B80E2D1-46CD-A690-DE4E-1DB6A406DC18";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 1.3965568984403343;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	rename -uid "AF9AEF9D-4642-4342-50E5-CAA9348940E8";
	setAttr ".t" -type "double3" 3.3999301560560053 30.358582471221819 101.41842591709491 ;
createNode camera -s -n "frontShape" -p "front";
	rename -uid "D375E88E-4294-A827-238E-B0981D5EDD7F";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 18.33093545413066;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	rename -uid "6A58A468-4EED-26C3-770F-A4B68BE7CAAB";
	setAttr ".t" -type "double3" 100.70626566923121 25.067849524462225 -1.5059966733173427 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	rename -uid "5F6F7C22-4210-460D-CE71-9E8ACB81BA72";
	setAttr -k off ".v";
	setAttr ".rnd" no;
	setAttr ".coi" 100.1;
	setAttr ".ow" 9.9189821140317154;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode dagContainer -n "FACE_LYT_01_AST";
	rename -uid "02DD6AD3-44A7-7A17-FF43-86B658D8CED8";
	setAttr ".isc" yes;
	setAttr ".ctor" -type "string" "Griffy";
	setAttr ".cdat" -type "string" "2016/08/16 22:41:07";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr ".rp" -type "double3" 0 0 0.053217066909310669 ;
	setAttr ".sp" -type "double3" 0 0 0.053217066909310669 ;
createNode transform -n "FACE_Main_GRP" -p "FACE_LYT_01_AST";
	rename -uid "2DA4B57C-431F-1886-5D92-268549766694";
createNode transform -n "FACE_WORLD" -p "FACE_Main_GRP";
	rename -uid "6171AE8A-4FB1-C5CA-EB9A-F6AAF0C9FAA6";
createNode transform -n "FACE_Surface_GRP" -p "FACE_WORLD";
	rename -uid "CE2EB787-4D96-2A5A-FC51-55884CBD45C4";
createNode transform -n "FACE_Surface" -p "FACE_Surface_GRP";
	rename -uid "EE94A115-4CB2-C72A-1F30-FBB9AA7A6D8C";
createNode nurbsSurface -n "FACE_SurfaceShape" -p "FACE_Surface";
	rename -uid "773DFD57-4A53-F276-F654-C89ECC5B1AF5";
	setAttr -k off ".v";
	setAttr -s 4 ".iog[0].og";
	setAttr ".ove" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
	setAttr ".nufa" 4.5;
	setAttr ".nvfa" 4.5;
createNode nurbsSurface -n "FACE_SurfaceShapeOrig" -p "FACE_Surface";
	rename -uid "60F8AEF8-4186-956E-F3B0-EC98A2B3FB1E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".tw" yes;
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
	setAttr ".dvu" 0;
	setAttr ".dvv" 0;
	setAttr ".cpr" 4;
	setAttr ".cps" 4;
createNode transform -n "DELETE_WORLD" -p "FACE_WORLD";
	rename -uid "6D3A65BF-4C5C-B33B-0F57-ED82461C2729";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FACE_Layout_GRP" -p "DELETE_WORLD";
	rename -uid "296ACC6A-431C-0E27-7466-9BA0311B5936";
createNode transform -n "FACE_L_LOW_CTRL_GRP" -p "FACE_Layout_GRP";
	rename -uid "693E4B9A-4247-285F-8A4B-1BAF128B5E0A";
	setAttr ".t" -type "double3" -0.5 -0.48711943298678356 -4.9999999999999999e-013 ;
createNode transform -n "FACE_L_LOW_CTRL" -p "FACE_L_LOW_CTRL_GRP";
	rename -uid "694E26B7-4E95-79FD-4185-90ABAA9B7C93";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FACE_L_LOW_CTRLShape" -p "FACE_L_LOW_CTRL";
	rename -uid "B84F798C-4285-14E8-35EE-678D17FC3830";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		;
createNode transform -n "FACE_L_LOW_CLSTR" -p "FACE_L_LOW_CTRL";
	rename -uid "C1BB81F8-47F1-C10F-EA53-84BAD55EF755";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.5 0.48711943298678356 4.9999999999999999e-013 ;
	setAttr ".rp" -type "double3" -0.5 -0.5 0 ;
	setAttr ".sp" -type "double3" -0.5 -0.5 0 ;
createNode clusterHandle -n "FACE_L_LOW_CLSTRShape" -p "FACE_L_LOW_CLSTR";
	rename -uid "AE9D0438-41C9-9F82-EA67-8F8DFD8E6290";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".or" -type "double3" -0.5 -0.5 0 ;
createNode transform -n "FACE_C_LOW_CTRL_GRP" -p "FACE_Layout_GRP";
	rename -uid "E87775E5-44E9-6DB8-C5F9-1B9581F20F66";
	setAttr ".t" -type "double3" 0 -0.48711943298678356 -4.9999999999999999e-013 ;
createNode transform -n "FACE_C_LOW_CTRL" -p "FACE_C_LOW_CTRL_GRP";
	rename -uid "DD483E8F-4E1F-E439-1489-A7A37EB0936D";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FACE_C_LOW_CTRLShape" -p "FACE_C_LOW_CTRL";
	rename -uid "1BB423E2-4743-3CC0-ED7B-9580BFE8AB09";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		;
createNode transform -n "FACE_C_LOW_CLSTR" -p "FACE_C_LOW_CTRL";
	rename -uid "23A9CFFD-46BD-506E-1891-4F8CF1C969B2";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 0.48711943298678356 4.9999999999999999e-013 ;
	setAttr ".rp" -type "double3" 0 -0.5 0 ;
	setAttr ".sp" -type "double3" 0 -0.5 0 ;
createNode clusterHandle -n "FACE_C_LOW_CLSTRShape" -p "FACE_C_LOW_CLSTR";
	rename -uid "FC7C8C81-47CC-0517-9FBC-C6AA73B68683";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".or" -type "double3" 0 -0.5 0 ;
createNode transform -n "FACE_R_LOW_CTRL_GRP" -p "FACE_Layout_GRP";
	rename -uid "F5CA3F7A-4321-22FE-5345-2C881D3E094A";
	setAttr ".t" -type "double3" 0.5 -0.48711943298678356 -4.9999999999999999e-013 ;
createNode transform -n "FACE_R_LOW_CTRL" -p "FACE_R_LOW_CTRL_GRP";
	rename -uid "FD5A4625-480D-DD66-BDFC-AFA6E74D9E13";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FACE_R_LOW_CTRLShape" -p "FACE_R_LOW_CTRL";
	rename -uid "475E9B1F-412F-7539-796F-67B0431924B0";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		;
createNode transform -n "FACE_R_LOW_CLSTR" -p "FACE_R_LOW_CTRL";
	rename -uid "F0F98AD1-43C4-EA6A-3A22-E3862F26E2C2";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -0.5 0.48711943298678356 4.9999999999999999e-013 ;
	setAttr ".rp" -type "double3" 0.5 -0.5 0 ;
	setAttr ".sp" -type "double3" 0.5 -0.5 0 ;
createNode clusterHandle -n "FACE_R_LOW_CLSTRShape" -p "FACE_R_LOW_CLSTR";
	rename -uid "F6D7C60D-4EFB-041C-1203-1A906B2778ED";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".or" -type "double3" 0.5 -0.5 0 ;
createNode transform -n "FACE_L_MID_CTRL_GRP3" -p "FACE_Layout_GRP";
	rename -uid "90124431-49FF-EC76-F333-6CA46BB63434";
	setAttr ".t" -type "double3" -0.5 0.0090186712002491842 -4.9999999999999999e-013 ;
createNode transform -n "FACE_L_MID_CTRL" -p "FACE_L_MID_CTRL_GRP3";
	rename -uid "226AA9E4-4D2A-2914-BFB1-60BCC50581CA";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FACE_L_MID_CTRLShape" -p "FACE_L_MID_CTRL";
	rename -uid "452BF07D-4FE6-E23F-88AF-7397139F74BB";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		;
createNode transform -n "FACE_L_MID_CLSTR1" -p "FACE_L_MID_CTRL";
	rename -uid "3D44E41B-4118-39FD-BDBB-0C98ACE94E1A";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.5 -0.0090186712002491842 4.9999999999999999e-013 ;
	setAttr ".rp" -type "double3" -0.5 0 0 ;
	setAttr ".sp" -type "double3" -0.5 0 0 ;
createNode clusterHandle -n "FACE_L_MID_CLSTR1Shape" -p "FACE_L_MID_CLSTR1";
	rename -uid "2D502CEE-4420-C3EB-87FC-75982F1BB6A6";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".or" -type "double3" -0.5 0 0 ;
createNode transform -n "FACE_C_MID_CTRL_GRP" -p "FACE_Layout_GRP";
	rename -uid "AAE3CACD-4755-430C-CCD0-AEA6D21CF4C7";
	setAttr ".t" -type "double3" 0 0.0090186712002491842 -4.9999999999999999e-013 ;
createNode transform -n "FACE_C_MID_CTRL" -p "FACE_C_MID_CTRL_GRP";
	rename -uid "ABF6AE2F-4602-D85A-538B-3693DB0B155A";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FACE_C_MID_CTRLShape" -p "FACE_C_MID_CTRL";
	rename -uid "9FBB71B4-422B-808D-AE27-10A796EBBBD4";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		;
createNode transform -n "FACE_C_MID_CLSTR" -p "FACE_C_MID_CTRL";
	rename -uid "3ADC454D-47A3-C08E-772C-9491476E7D20";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -0.0090186712002491842 4.9999999999999999e-013 ;
createNode clusterHandle -n "FACE_C_MID_CLSTRShape" -p "FACE_C_MID_CLSTR";
	rename -uid "9625F403-4336-13BC-4566-FBB3794D135D";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
createNode transform -n "FACE_R_MID_CTRL_GRP" -p "FACE_Layout_GRP";
	rename -uid "B905748D-4079-D957-23A0-FE959A737F55";
	setAttr ".t" -type "double3" 0.5 0.0090186712002491842 -4.9999999999999999e-013 ;
createNode transform -n "FACE_R_MID_CTRL" -p "FACE_R_MID_CTRL_GRP";
	rename -uid "2C86CFA5-49F6-E0FE-57C8-20870525501E";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FACE_R_MID_CTRLShape" -p "FACE_R_MID_CTRL";
	rename -uid "D007F3F8-45B7-08FD-C937-79A67FE995C7";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		;
createNode transform -n "FACE_R_MID_CLSTR" -p "FACE_R_MID_CTRL";
	rename -uid "5AE5A796-4E36-3F51-F2EA-94BF5B4E3D9F";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -0.5 -0.0090186712002491842 4.9999999999999999e-013 ;
	setAttr ".rp" -type "double3" 0.5 0 0 ;
	setAttr ".sp" -type "double3" 0.5 0 0 ;
createNode clusterHandle -n "FACE_R_MID_CLSTRShape" -p "FACE_R_MID_CLSTR";
	rename -uid "88D65695-40CF-9ABA-1576-7AB57E7B88F2";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".or" -type "double3" 0.5 0 0 ;
createNode transform -n "FACE_R_UP_CTRL_GRP" -p "FACE_Layout_GRP";
	rename -uid "79543A6E-4D64-614F-4E1D-5BB1A5C9F809";
	setAttr ".t" -type "double3" 0.5 0.5 -4.9999999999999999e-013 ;
createNode transform -n "FACE_R_UP_CTRL" -p "FACE_R_UP_CTRL_GRP";
	rename -uid "319A9B65-4039-39FB-9FCC-45B770D68C2C";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FACE_R_UP_CTRLShape" -p "FACE_R_UP_CTRL";
	rename -uid "E0E3FE6A-43E6-567A-4433-4999CB4FB208";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		;
createNode transform -n "FACE_R_UP_CLSTR" -p "FACE_R_UP_CTRL";
	rename -uid "613AAC10-47AB-AB22-C6D1-02B8138A1253";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".t" -type "double3" -0.5 -0.5 4.9999999999999999e-013 ;
	setAttr ".rp" -type "double3" 0.5 0.5 0 ;
	setAttr ".sp" -type "double3" 0.5 0.5 0 ;
createNode clusterHandle -n "FACE_R_UP_CLSTRShape" -p "FACE_R_UP_CLSTR";
	rename -uid "556E72AB-4499-5CD6-2874-AA8F9433B0E1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 7;
	setAttr ".or" -type "double3" 0.5 0.5 0 ;
createNode transform -n "FACE_C_UP_CTRL_GRP" -p "FACE_Layout_GRP";
	rename -uid "DFE5AF86-4E15-9F37-92AF-2583DE9E9ADD";
	setAttr ".t" -type "double3" 0 0.5 -4.9999999999999999e-013 ;
createNode transform -n "FACE_C_UP_CTRL" -p "FACE_C_UP_CTRL_GRP";
	rename -uid "16FC58A8-4D88-406A-08B6-EF867A593FE5";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FACE_C_UP_CTRLShape" -p "FACE_C_UP_CTRL";
	rename -uid "5103ACF3-4B34-0938-44B5-59A6D23AD055";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		;
createNode transform -n "FACE_C_UP_CLSTR" -p "FACE_C_UP_CTRL";
	rename -uid "8C7302DA-46CB-B231-07CC-AC8D5C3B1C16";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".t" -type "double3" 0 -0.5 4.9999999999999999e-013 ;
	setAttr ".rp" -type "double3" 0 0.5 0 ;
	setAttr ".sp" -type "double3" 0 0.5 0 ;
createNode clusterHandle -n "FACE_C_UP_CLSTRShape" -p "FACE_C_UP_CLSTR";
	rename -uid "7193914B-4DB8-99B3-86CB-A3B126A9DF8E";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".or" -type "double3" 0 0.5 0 ;
createNode transform -n "FACE_L_UP_CTRL_GRP" -p "FACE_Layout_GRP";
	rename -uid "A7BDB146-498F-BAD0-F07B-20BA311BDAC3";
	setAttr ".t" -type "double3" -0.5 0.5 -4.9999999999999999e-013 ;
createNode transform -n "FACE_L_UP_CTRL" -p "FACE_L_UP_CTRL_GRP";
	rename -uid "F70E767C-4B14-81AB-FAC1-87A35F4066D9";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FACE_L_UP_CTRLShape" -p "FACE_L_UP_CTRL";
	rename -uid "1B364B1C-47F8-C218-035E-12A3428EAAD9";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 0.04807372184555396 0.10524586098437833
		-0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.10524586098437833
		0.04807372184555396 0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		0.04807372184555396 -0.04807372184555396 0.10524586098437833
		0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		-0.04807372184555396 -0.04807372184555396 0.0090984172932704124
		;
createNode transform -n "FACE_L_UP_CLSTR" -p "FACE_L_UP_CTRL";
	rename -uid "B8CC6692-498E-3B05-3F11-6DAD0A6F17DC";
	setAttr ".v" no;
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".t" -type "double3" 0.5 -0.5 4.9999999999999999e-013 ;
	setAttr ".rp" -type "double3" -0.5 0.5 0 ;
	setAttr ".sp" -type "double3" -0.5 0.5 0 ;
createNode clusterHandle -n "FACE_L_UP_CLSTRShape" -p "FACE_L_UP_CLSTR";
	rename -uid "B82D9F41-4A26-2E54-A637-5587AD41CEA1";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 4;
	setAttr ".or" -type "double3" -0.5 0.5 0 ;
createNode transform -n "FACE_Lattice" -p "FACE_Layout_GRP";
	rename -uid "A6036AB6-49B3-4859-3D0F-BFAC920E9223";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1 9.9999999999999998e-013 ;
	setAttr ".it" no;
createNode lattice -n "FACE_LatticeShape" -p "FACE_Lattice";
	rename -uid "42E933BD-4931-9E55-B8CB-30B79C653D91";
	setAttr -k off ".v";
	setAttr -s 20 ".iog[0].og";
	setAttr ".tw" yes;
	setAttr ".sd" 3;
	setAttr ".td" 3;
createNode lattice -n "FACE_LatticeShapeOrig" -p "FACE_Lattice";
	rename -uid "F206D830-446A-FDA7-92BB-B8A7AC19A66E";
	setAttr -k off ".v";
	setAttr ".io" yes;
	setAttr ".sd" 3;
	setAttr ".td" 3;
	setAttr ".cc" -type "lattice" 3 3 2 18 -0.5 -0.5 -0.5 0 -0.5 -0.5 0.5
		 -0.5 -0.5 -0.5 0 -0.5 0 0 -0.5 0.5 0 -0.5 -0.5 0.5 -0.5 0 0.5 -0.5 0.5 0.5 -0.5 -0.5
		 -0.5 0.5 0 -0.5 0.5 0.5 -0.5 0.5 -0.5 0 0.5 0 0 0.5 0.5 0 0.5 -0.5 0.5 0.5 0 0.5
		 0.5 0.5 0.5 0.5 ;
createNode transform -n "FACE_Lattice_Base" -p "FACE_Layout_GRP";
	rename -uid "AA0BB4BC-4FDD-3C49-5F3D-75B5A55898F6";
	setAttr ".v" no;
	setAttr ".s" -type "double3" 1 1 9.9999999999999998e-013 ;
	setAttr ".it" no;
createNode baseLattice -n "FACE_Lattice_BaseShape" -p "FACE_Lattice_Base";
	rename -uid "0DC2B557-4ACE-6E9D-F879-41A0C679918C";
	setAttr ".ihi" 0;
	setAttr -k off ".v";
createNode parentConstraint -n "FACE_Layout_GRP_parentConstraint1" -p "FACE_Layout_GRP";
	rename -uid "5257A362-4226-A567-0838-EF9E9B451876";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FACE_Main_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "FACE_Layout_GRP_scaleConstraint1" -p "FACE_Layout_GRP";
	rename -uid "0DC58106-4ADC-FE99-E615-02B3061E0918";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FACE_Main_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "DELETE_Main_CTRL_GRP" -p "FACE_Main_GRP";
	rename -uid "556F9C71-4EB3-25FF-2232-5EAD8012DCD4";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FACE_Main_CTRL" -p "DELETE_Main_CTRL_GRP";
	rename -uid "5280B69E-4EA0-8013-E4B9-E48909AE62A2";
	addAttr -ci true -sn "Size" -ln "Size" -dv 1 -at "double";
	addAttr -ci true -sn "SurafceDraw" -ln "SurafceDraw" -min 0 -max 1 -en "Template:Reference" 
		-at "enum";
	addAttr -ci true -sn "Major_Vis" -ln "Major_Vis" -min 0 -max 1 -en "off:on" -at "enum";
	addAttr -ci true -sn "Adj_Vis" -ln "Adj_Vis" -min 0 -max 1 -en "off:on" -at "enum";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".ove" yes;
	setAttr ".ovc" 15;
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr -k on ".Size";
	setAttr -k on ".SurafceDraw" 1;
	setAttr -k on ".Major_Vis" 1;
	setAttr -k on ".Adj_Vis" 1;
createNode nurbsCurve -n "FACE_Main_CTRLShape" -p "FACE_Main_CTRL";
	rename -uid "02785B76-4515-DCB8-DF79-F7B3668A433D";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 16 0 no 3
		17 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16
		17
		-0.66336452675915869 0.66336452675915869 0.1611599167696125
		-0.66336452675915869 0.66336452675915869 0.08770642267926694
		0.66336452675915869 0.66336452675915869 0.08770642267926694
		0.66336452675915869 0.66336452675915869 0.1611599167696125
		-0.66336452675915869 0.66336452675915869 0.1611599167696125
		-0.66336452675915869 -0.66336452675915869 0.1611599167696125
		-0.66336452675915869 -0.66336452675915869 0.08770642267926694
		-0.66336452675915869 0.66336452675915869 0.08770642267926694
		-0.66336452675915869 0.66336452675915869 0.1611599167696125
		-0.66336452675915869 -0.66336452675915869 0.1611599167696125
		0.66336452675915869 -0.66336452675915869 0.1611599167696125
		0.66336452675915869 0.66336452675915869 0.1611599167696125
		0.66336452675915869 0.66336452675915869 0.08770642267926694
		0.66336452675915869 -0.66336452675915869 0.08770642267926694
		0.66336452675915869 -0.66336452675915869 0.1611599167696125
		0.66336452675915869 -0.66336452675915869 0.08770642267926694
		-0.66336452675915869 -0.66336452675915869 0.08770642267926694
		;
createNode transform -n "FACE_LOCAL" -p "FACE_Main_GRP";
	rename -uid "421E5FE6-4940-9F7F-8488-51B0C3BE9187";
createNode transform -n "FACE_Surface_Follicle" -p "FACE_LOCAL";
	rename -uid "80A20BA3-486B-D43C-CDD8-04863DB7A02B";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
	setAttr -l on -k off ".sx";
	setAttr ".it" no;
createNode follicle -n "FACE_Surface_FollicleShape" -p "FACE_Surface_Follicle";
	rename -uid "26D2963E-4799-8D67-0D9F-B0B6720BA07D";
	setAttr -k off ".v" no;
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
	setAttr -s 2 ".sts[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".cws[0:1]"  0 1 3 1 0.2 3;
	setAttr -s 2 ".ats[0:1]"  0 1 3 1 0.2 3;
createNode transform -n "FACE_ZERO" -p "FACE_Surface_Follicle";
	rename -uid "7BD09D57-4B30-6652-7645-4D98653569EA";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FACE_OffsetLCTR" -p "FACE_ZERO";
	rename -uid "AF3C5738-4654-BFC1-FC0E-869CAF83D675";
createNode locator -n "FACE_OffsetLCTRShape" -p "FACE_OffsetLCTR";
	rename -uid "F24D131A-4A20-13FC-C4F6-D18B23CDE66B";
	setAttr -k off ".v" no;
createNode transform -n "FACE_OffsetLCTR_translation" -p "FACE_OffsetLCTR";
	rename -uid "18D020F1-4159-375F-1514-CE8989193021";
createNode locator -n "FACE_OffsetLCTR_translationShape" -p "FACE_OffsetLCTR_translation";
	rename -uid "A5335FA8-4C7C-8A32-395B-48BAB3A03FB6";
	setAttr -k off ".v" no;
createNode transform -n "FACE_OffsetLCTR_rotation" -p "FACE_OffsetLCTR_translation";
	rename -uid "D5CA4A53-4717-8C8A-D20C-46A77D569826";
createNode locator -n "FACE_OffsetLCTR_rotationShape" -p "FACE_OffsetLCTR_rotation";
	rename -uid "F9526519-4408-C640-B499-46BEF20874AA";
	setAttr -k off ".v" no;
createNode transform -n "FACE_OffsetLCTR_scale" -p "FACE_OffsetLCTR_rotation";
	rename -uid "12F940B7-4B97-5A35-5504-5DBA0B47539F";
createNode locator -n "FACE_OffsetLCTR_scaleShape" -p "FACE_OffsetLCTR_scale";
	rename -uid "C46EC8EB-4DD0-35E0-5B3D-F7B489A42923";
	setAttr -k off ".v" no;
createNode transform -n "FACE_OffsetLCTR_SDK" -p "FACE_OffsetLCTR_scale";
	rename -uid "232C0375-45F2-AAA5-39A6-11BE8C8F2B4F";
createNode locator -n "FACE_OffsetLCTR_SDKShape" -p "FACE_OffsetLCTR_SDK";
	rename -uid "2684B5D9-4913-1E0F-DE22-C88658CA0002";
	setAttr -k off ".v" no;
createNode transform -n "FACE_Minor_CTRL_GRP" -p "FACE_OffsetLCTR_SDK";
	rename -uid "728A6C8E-4A9F-FB46-EB21-18A267001770";
	setAttr ".t" -type "double3" 1.3877787807814457e-017 -1.3877787807814457e-017 -1.3002338240547107e-029 ;
createNode transform -n "FACE_Minor_CTRL" -p "FACE_Minor_CTRL_GRP";
	rename -uid "A17FC583-4DB0-EF29-786A-67922C12CA12";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".ovdt" 1;
	setAttr ".ove" yes;
createNode nurbsCurve -n "FACE_Minor_CTRLShape" -p "FACE_Minor_CTRL";
	rename -uid "0AB1BE67-4B88-D5D9-BFCB-C08EF1EB43D5";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".oc" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 69 0 no 3
		70 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27
		 28 29 30 31 32 33 34 35 36 37 38 39 40 41 42 43 44 45 46 47 48 49 50 51 52 53 54
		 55 56 57 58 59 60 61 62 63 64 65 66 67 68 69
		70
		0 0 0.10118752777738917
		0 0 0.050649012278861018
		0 0.019382521539522753 0.046793615689250903
		0 0.035814262987765237 0.035814262987765237
		0 0.046793615689250903 0.019382521539522753
		0 0.050649012278861018 0
		0 0.10118752777738917 0
		0 0.050649012278861018 0
		0 0.046793615689250903 -0.019382521539522753
		0 0.035814262987765237 -0.035814262987765237
		0 0.019382521539522753 -0.046793615689250903
		0 0 -0.050649012278861018
		0 0 -0.10118752777738917
		0 0 -0.050649012278861018
		0 -0.019382521539522753 -0.046793615689250903
		0 -0.035814262987765237 -0.035814262987765237
		0 -0.046793615689250903 -0.019382521539522753
		0 -0.050649012278861018 0
		0 -0.10118752777738917 0
		0 -0.050649012278861018 0
		0 -0.046793615689250903 0.019382521539522753
		0 -0.035814262987765237 0.035814262987765237
		0 -0.019382521539522753 0.046793615689250903
		0 0 0.050649012278861018
		-0.019382521539522753 0 0.046793615689250903
		-0.035814262987765237 0 0.035814262987765237
		-0.046793615689250903 0 0.019382521539522753
		-0.050649012278861018 0 0
		-0.10118752777738917 0 0
		-0.050649012278861018 0 0
		-0.046793615689250903 0 -0.019382521539522753
		-0.035814262987765237 0 -0.035814262987765237
		-0.019382521539522753 0 -0.046793615689250903
		0 0 -0.050649012278861018
		0.019382521539522753 0 -0.046793615689250903
		0.035814262987765237 0 -0.035814262987765237
		0.046793615689250903 0 -0.019382521539522753
		0.050649012278861018 0 0
		0.10118752777738917 0 0
		0.050649012278861018 0 0
		0.046793615689250903 0.019382521539522753 0
		0.035814262987765237 0.035814262987765237 0
		0.019382521539522753 0.046793615689250903 0
		0 0.050649012278861018 0
		-0.019382521539522753 0.046793615689250903 0
		-0.035814262987765237 0.035814262987765237 0
		-0.046793615689250903 0.019382521539522753 0
		-0.050649012278861018 0 0
		-0.046793615689250903 -0.019382521539522753 0
		-0.035814262987765237 -0.035814262987765237 0
		-0.019382521539522753 -0.046793615689250903 0
		0 -0.050649012278861018 0
		0.019382521539522753 -0.046793615689250903 0
		0.035814262987765237 -0.035814262987765237 0
		0.046793615689250903 -0.019382521539522753 0
		0.050649012278861018 0 0
		0.046793615689250903 0 0.019382521539522753
		0.035814262987765237 0 0.035814262987765237
		0.019382521539522753 0 0.046793615689250903
		0 0 0.050649012278861018
		0 0 0
		0 0 -0.050649012278861018
		0 0 0
		0.050649012278861018 0 0
		0 0 0
		-0.050649012278861018 0 0
		0 0 0
		0 -0.050649012278861018 0
		0 0 0
		0 0.050649012278861018 0
		;
createNode joint -n "FACE_RIGJNT" -p "FACE_Minor_CTRL";
	rename -uid "A4887134-4081-4BFA-0D76-A9B785452997";
	setAttr ".v" no;
	setAttr ".t" -type "double3" -1.3877787807814457e-017 1.3877787807814457e-017 1.3002338240547107e-029 ;
	setAttr ".mnrl" -type "double3" -360 -360 -360 ;
	setAttr ".mxrl" -type "double3" 360 360 360 ;
createNode parentConstraint -n "FACE_LOCAL_parentConstraint1" -p "FACE_LOCAL";
	rename -uid "60361C2C-4D94-8DBC-D795-5785729A927E";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FACE_Main_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode scaleConstraint -n "FACE_LOCAL_scaleConstraint1" -p "FACE_LOCAL";
	rename -uid "C6F752F4-4D7D-11EB-24B8-1C9F27A5B34C";
	addAttr -dcb 0 -ci true -k true -sn "w0" -ln "FACE_Main_CTRLW0" -dv 1 -min 0 -at "double";
	setAttr -k on ".nds";
	setAttr -k off ".v";
	setAttr -k off ".tx";
	setAttr -k off ".ty";
	setAttr -k off ".tz";
	setAttr -k off ".rx";
	setAttr -k off ".ry";
	setAttr -k off ".rz";
	setAttr -k off ".sx";
	setAttr -k off ".sy";
	setAttr -k off ".sz";
	setAttr ".erp" yes;
	setAttr -k on ".w0";
createNode transform -n "DELETE_LOCAL" -p "FACE_LOCAL";
	rename -uid "0A46A50C-43B6-534B-C63C-58B3F14488A1";
	setAttr -l on -k off ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FACE_Major_CTRL_GRP" -p "DELETE_LOCAL";
	rename -uid "41972DC5-41DE-EA5D-66FE-54A4B0265DA3";
	setAttr -k off -cb on ".v";
	setAttr -l on -k off ".tx";
	setAttr -l on -k off ".ty";
	setAttr -l on -k off ".tz";
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode transform -n "FACE_Major_CTRL" -p "FACE_Major_CTRL_GRP";
	rename -uid "5FE994FE-4CF7-6B7E-3ECC-A9A4DD101F4C";
	setAttr -k off -cb on ".v";
	setAttr ".uoc" 1;
	setAttr ".ovc" 15;
	setAttr -l on -k off ".rx";
	setAttr -l on -k off ".ry";
	setAttr -l on -k off ".rz";
	setAttr -l on -k off ".sx";
	setAttr -l on -k off ".sy";
	setAttr -l on -k off ".sz";
createNode nurbsCurve -n "FACE_Major_CTRLShape" -p "FACE_Major_CTRL";
	rename -uid "A1FF02F6-4E27-6587-D860-40B1F6A05025";
	setAttr -k off ".v";
	setAttr ".uoc" 1;
	setAttr ".cc" -type "nurbsCurve" 
		1 12 0 no 3
		13 0 3.2000000000000028 8 12.800000000000004 16 20.800000000000004 25.600000000000001
		 28.800000000000004 33.600000000000001 38.400000000000006 41.600000000000001 46.400000000000006
		 51.200000000000003
		13
		-0.061769749069931566 -0.24707899627972627 0.2076216615960105
		0.061769749069931566 -0.24707899627972627 0.2076216615960105
		0.061769749069931566 -0.061769749069931566 0.2076216615960105
		0.24707899627972627 -0.061769749069931566 0.2076216615960105
		0.24707899627972627 0.061769749069931566 0.2076216615960105
		0.061769749069931566 0.061769749069931566 0.2076216615960105
		0.061769749069931566 0.24707899627972627 0.2076216615960105
		-0.061769749069931566 0.24707899627972627 0.2076216615960105
		-0.061769749069931566 0.061769749069931566 0.2076216615960105
		-0.24707899627972627 0.061769749069931566 0.2076216615960105
		-0.24707899627972627 -0.061769749069931566 0.2076216615960105
		-0.061769749069931566 -0.061769749069931566 0.2076216615960105
		-0.061769749069931566 -0.24707899627972627 0.2076216615960105
		;
createNode lightLinker -s -n "lightLinker1";
	rename -uid "254A37FF-4D3E-028F-60F0-96B78CE1B78F";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
	rename -uid "3C01C842-4114-B592-EE19-F3ACD5667D4F";
	setAttr ".cdl" 1;
	setAttr -s 2 ".dli[1]"  1;
createNode displayLayer -n "defaultLayer";
	rename -uid "2C03864E-4DF0-4061-19BA-17B5194FE22C";
createNode renderLayerManager -n "renderLayerManager";
	rename -uid "6A6D21D3-4517-F0EB-25EC-2DBCFA409F26";
createNode renderLayer -n "defaultRenderLayer";
	rename -uid "D44AE264-4089-FE16-F353-A88CD411A25D";
	setAttr ".g" yes;
createNode script -n "uiConfigurationScriptNode";
	rename -uid "5034196C-49DC-E3F6-1160-26A0ABDE4CED";
	setAttr ".b" -type "string" (
		"// Maya Mel UI Configuration File.\n//\n//  This script is machine generated.  Edit at your own risk.\n//\n//\n\nglobal string $gMainPane;\nif (`paneLayout -exists $gMainPane`) {\n\n\tglobal int $gUseScenePanelConfig;\n\tint    $useSceneConfig = $gUseScenePanelConfig;\n\tint    $menusOkayInPanels = `optionVar -q allowMenusInPanels`;\tint    $nVisPanes = `paneLayout -q -nvp $gMainPane`;\n\tint    $nPanes = 0;\n\tstring $editorName;\n\tstring $panelName;\n\tstring $itemFilterName;\n\tstring $panelConfig;\n\n\t//\n\t//  get current state of the UI\n\t//\n\tsceneUIReplacement -update $gMainPane;\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Top View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"top\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n"
		+ "                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n"
		+ "                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n"
		+ "                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n"
		+ "                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Top View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"top\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n"
		+ "            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n"
		+ "            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n"
		+ "        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Side View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"side\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n"
		+ "                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Side View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"side\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n"
		+ "            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n"
		+ "            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n"
		+ "            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Front View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"front\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"smoothShaded\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"vp2Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n"
		+ "                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n"
		+ "                -width 1\n                -height 1\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tmodelPanel -edit -l (localizedPanelLabel(\"Front View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"front\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"smoothShaded\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 0\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n"
		+ "            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"vp2Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 0\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n"
		+ "            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n"
		+ "            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1\n            -height 1\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"modelPanel\" (localizedPanelLabel(\"Persp View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `modelPanel -unParent -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            modelEditor -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 1\n                -headsUpDisplay 1\n"
		+ "                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 1\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -rendererName \"base_OpenGL_Renderer\" \n                -objectFilterShowInHUD 1\n                -isFiltered 0\n"
		+ "                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 1\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n"
		+ "                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 1272\n                -height 771\n                -sceneRenderFilter 0\n                $editorName;\n            modelEditor -e -viewSelected 0 $editorName;\n            modelEditor -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tmodelPanel -edit -l (localizedPanelLabel(\"Persp View\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        modelEditor -e \n            -camera \"persp\" \n            -useInteractiveMode 0\n            -displayLights \"default\" \n            -displayAppearance \"wireframe\" \n            -activeOnly 0\n            -ignorePanZoom 0\n            -wireframeOnShaded 1\n            -headsUpDisplay 1\n            -holdOuts 1\n            -selectionHiliteDisplay 1\n            -useDefaultMaterial 0\n            -bufferMode \"double\" \n            -twoSidedLighting 1\n            -backfaceCulling 0\n            -xray 0\n            -jointXray 1\n            -activeComponentsXray 0\n            -displayTextures 0\n            -smoothWireframe 0\n            -lineWidth 1\n            -textureAnisotropic 0\n            -textureHilight 1\n            -textureSampling 2\n            -textureDisplay \"modulate\" \n            -textureMaxSize 16384\n            -fogging 0\n            -fogSource \"fragment\" \n            -fogMode \"linear\" \n"
		+ "            -fogStart 0\n            -fogEnd 100\n            -fogDensity 0.1\n            -fogColor 0.5 0.5 0.5 1 \n            -depthOfFieldPreview 1\n            -maxConstantTransparency 1\n            -rendererName \"base_OpenGL_Renderer\" \n            -objectFilterShowInHUD 1\n            -isFiltered 0\n            -colorResolution 4 4 \n            -bumpResolution 4 4 \n            -textureCompression 0\n            -transparencyAlgorithm \"frontAndBackCull\" \n            -transpInShadows 0\n            -cullingOverride \"none\" \n            -lowQualityLighting 0\n            -maximumNumHardwareLights 1\n            -occlusionCulling 0\n            -shadingModel 0\n            -useBaseRenderer 0\n            -useReducedRenderer 0\n            -smallObjectCulling 0\n            -smallObjectThreshold -1 \n            -interactiveDisableShadows 0\n            -interactiveBackFaceCull 0\n            -sortTransparent 1\n            -nurbsCurves 1\n            -nurbsSurfaces 1\n            -polymeshes 1\n            -subdivSurfaces 1\n            -planes 1\n"
		+ "            -lights 1\n            -cameras 1\n            -controlVertices 1\n            -hulls 1\n            -grid 1\n            -imagePlane 1\n            -joints 1\n            -ikHandles 1\n            -deformers 1\n            -dynamics 1\n            -particleInstancers 1\n            -fluids 1\n            -hairSystems 1\n            -follicles 1\n            -nCloths 1\n            -nParticles 1\n            -nRigids 1\n            -dynamicConstraints 1\n            -locators 1\n            -manipulators 1\n            -pluginShapes 1\n            -dimensions 1\n            -handles 1\n            -pivots 1\n            -textures 1\n            -strokes 1\n            -motionTrails 1\n            -clipGhosts 1\n            -greasePencils 1\n            -shadows 0\n            -captureSequenceNumber -1\n            -width 1272\n            -height 771\n            -sceneRenderFilter 0\n            $editorName;\n        modelEditor -e -viewSelected 0 $editorName;\n        modelEditor -e \n            -pluginObjects \"gpuCacheDisplayFilter\" 1 \n"
		+ "            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"outlinerPanel\" (localizedPanelLabel(\"Outliner\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels `;\n\t\t\t$editorName = $panelName;\n            outlinerEditor -e \n                -docTag \"isolOutln_fromSeln\" \n                -showShapes 1\n                -showReferenceNodes 1\n                -showReferenceMembers 1\n                -showAttributes 0\n                -showConnected 0\n                -showAnimCurvesOnly 0\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 1\n                -showPublishedAsConnected 0\n                -showContainerContents 1\n                -ignoreDagHierarchy 0\n"
		+ "                -expandConnections 0\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 0\n                -highlightActive 1\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"defaultSetFilter\" \n                -showSetMembers 1\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n"
		+ "                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 0\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\toutlinerPanel -edit -l (localizedPanelLabel(\"Outliner\")) -mbv $menusOkayInPanels  $panelName;\n\t\t$editorName = $panelName;\n        outlinerEditor -e \n            -docTag \"isolOutln_fromSeln\" \n            -showShapes 1\n            -showReferenceNodes 1\n            -showReferenceMembers 1\n            -showAttributes 0\n            -showConnected 0\n            -showAnimCurvesOnly 0\n            -showMuteInfo 0\n            -organizeByLayer 1\n            -showAnimLayerWeight 1\n            -autoExpandLayers 1\n            -autoExpand 0\n            -showDagOnly 0\n            -showAssets 1\n            -showContainedOnly 1\n            -showPublishedAsConnected 0\n            -showContainerContents 1\n            -ignoreDagHierarchy 0\n"
		+ "            -expandConnections 0\n            -showUpstreamCurves 1\n            -showUnitlessCurves 1\n            -showCompounds 1\n            -showLeafs 1\n            -showNumericAttrsOnly 0\n            -highlightActive 1\n            -autoSelectNewObjects 0\n            -doNotSelectNewObjects 0\n            -dropIsParent 1\n            -transmitFilters 0\n            -setFilter \"defaultSetFilter\" \n            -showSetMembers 1\n            -allowMultiSelection 1\n            -alwaysToggleSelect 0\n            -directSelect 0\n            -displayMode \"DAG\" \n            -expandObjects 0\n            -setsIgnoreFilters 1\n            -containersIgnoreFilters 0\n            -editAttrName 0\n            -showAttrValues 0\n            -highlightSecondary 0\n            -showUVAttrsOnly 0\n            -showTextureNodesOnly 0\n            -attrAlphaOrder \"default\" \n            -animLayerFilterOptions \"allAffecting\" \n            -sortOrder \"none\" \n            -longNames 0\n            -niceNames 1\n            -showNamespace 1\n            -showPinIcons 0\n"
		+ "            -mapMotionTrails 0\n            -ignoreHiddenAttribute 0\n            -ignoreOutlinerColor 0\n            $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"graphEditor\" (localizedPanelLabel(\"Graph Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"graphEditor\" -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n"
		+ "                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n"
		+ "                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n"
		+ "                -stackedCurvesMax 1\n                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Graph Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 1\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n"
		+ "                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 1\n                -showCompounds 0\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 1\n                -doNotSelectNewObjects 0\n                -dropIsParent 1\n                -transmitFilters 1\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n"
		+ "                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 1\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"GraphEd\");\n            animCurveEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 1\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -showResults \"off\" \n                -showBufferCurves \"off\" \n                -smoothness \"fine\" \n                -resultSamples 1.25\n                -resultScreenSamples 0\n                -resultUpdate \"delayed\" \n                -showUpstreamCurves 1\n                -stackedCurves 0\n                -stackedCurvesMin -1\n                -stackedCurvesMax 1\n"
		+ "                -stackedCurvesSpace 0.2\n                -displayNormalized 0\n                -preSelectionHighlight 0\n                -constrainDrag 0\n                -classicMode 1\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dopeSheetPanel\" (localizedPanelLabel(\"Dope Sheet\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dopeSheetPanel\" -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n"
		+ "                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n"
		+ "                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n"
		+ "                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dope Sheet\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"OutlineEd\");\n            outlinerEditor -e \n                -showShapes 1\n                -showReferenceNodes 0\n                -showReferenceMembers 0\n                -showAttributes 1\n                -showConnected 1\n                -showAnimCurvesOnly 1\n                -showMuteInfo 0\n                -organizeByLayer 1\n                -showAnimLayerWeight 1\n                -autoExpandLayers 1\n                -autoExpand 0\n                -showDagOnly 0\n                -showAssets 1\n                -showContainedOnly 0\n                -showPublishedAsConnected 0\n                -showContainerContents 0\n                -ignoreDagHierarchy 0\n                -expandConnections 1\n                -showUpstreamCurves 1\n                -showUnitlessCurves 0\n                -showCompounds 1\n                -showLeafs 1\n"
		+ "                -showNumericAttrsOnly 1\n                -highlightActive 0\n                -autoSelectNewObjects 0\n                -doNotSelectNewObjects 1\n                -dropIsParent 1\n                -transmitFilters 0\n                -setFilter \"0\" \n                -showSetMembers 0\n                -allowMultiSelection 1\n                -alwaysToggleSelect 0\n                -directSelect 0\n                -displayMode \"DAG\" \n                -expandObjects 0\n                -setsIgnoreFilters 1\n                -containersIgnoreFilters 0\n                -editAttrName 0\n                -showAttrValues 0\n                -highlightSecondary 0\n                -showUVAttrsOnly 0\n                -showTextureNodesOnly 0\n                -attrAlphaOrder \"default\" \n                -animLayerFilterOptions \"allAffecting\" \n                -sortOrder \"none\" \n                -longNames 0\n                -niceNames 1\n                -showNamespace 1\n                -showPinIcons 0\n                -mapMotionTrails 1\n                -ignoreHiddenAttribute 0\n"
		+ "                -ignoreOutlinerColor 0\n                $editorName;\n\n\t\t\t$editorName = ($panelName+\"DopeSheetEd\");\n            dopeSheetEditor -e \n                -displayKeys 1\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"integer\" \n                -snapValue \"none\" \n                -outliner \"dopeSheetPanel1OutlineEd\" \n                -showSummary 1\n                -showScene 0\n                -hierarchyBelow 0\n                -showTicks 1\n                -selectionWindow 0 0 0 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"clipEditorPanel\" (localizedPanelLabel(\"Trax Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"clipEditorPanel\" -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Trax Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = clipEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 0 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n"
		+ "\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"sequenceEditorPanel\" (localizedPanelLabel(\"Camera Sequencer\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"sequenceEditorPanel\" -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Camera Sequencer\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = sequenceEditorNameFromPanel($panelName);\n            clipEditor -e \n"
		+ "                -displayKeys 0\n                -displayTangents 0\n                -displayActiveKeys 0\n                -displayActiveKeyTangents 0\n                -displayInfinities 0\n                -autoFit 0\n                -snapTime \"none\" \n                -snapValue \"none\" \n                -manageSequencer 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperGraphPanel\" (localizedPanelLabel(\"Hypergraph Hierarchy\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperGraphPanel\" -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n"
		+ "                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypergraph Hierarchy\")) -mbv $menusOkayInPanels  $panelName;\n"
		+ "\t\t\t$editorName = ($panelName+\"HyperGraphEd\");\n            hyperGraph -e \n                -graphLayoutStyle \"hierarchicalLayout\" \n                -orientation \"horiz\" \n                -mergeConnections 0\n                -zoom 1\n                -animateTransition 0\n                -showRelationships 1\n                -showShapes 0\n                -showDeformers 0\n                -showExpressions 0\n                -showConstraints 0\n                -showConnectionFromSelected 0\n                -showConnectionToSelected 0\n                -showConstraintLabels 0\n                -showUnderworld 0\n                -showInvisible 0\n                -transitionFrames 1\n                -opaqueContainers 0\n                -freeform 0\n                -imagePosition 0 0 \n                -imageScale 1\n                -imageEnabled 0\n                -graphType \"DAG\" \n                -heatMapDisplay 0\n                -updateSelection 1\n                -updateNodeAdded 1\n                -useDrawOverrideColor 0\n                -limitGraphTraversal -1\n"
		+ "                -range 0 0 \n                -iconSize \"smallIcons\" \n                -showCachedConnections 0\n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"visorPanel\" (localizedPanelLabel(\"Visor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"visorPanel\" -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Visor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"createNodePanel\" (localizedPanelLabel(\"Create Node\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"createNodePanel\" -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n"
		+ "\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Create Node\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"polyTexturePlacementPanel\" (localizedPanelLabel(\"UV Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"polyTexturePlacementPanel\" -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"UV Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\tif ($useSceneConfig) {\n\t\tscriptedPanel -e -to $panelName;\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"renderWindowPanel\" (localizedPanelLabel(\"Render View\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"renderWindowPanel\" -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Render View\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextPanel \"blendShapePanel\" (localizedPanelLabel(\"Blend Shape\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\tblendShapePanel -unParent -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels ;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tblendShapePanel -edit -l (localizedPanelLabel(\"Blend Shape\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynRelEdPanel\" (localizedPanelLabel(\"Dynamic Relationships\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynRelEdPanel\" -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n"
		+ "\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Dynamic Relationships\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"relationshipPanel\" (localizedPanelLabel(\"Relationship Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"relationshipPanel\" -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Relationship Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"referenceEditorPanel\" (localizedPanelLabel(\"Reference Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"referenceEditorPanel\" -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Reference Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"componentEditorPanel\" (localizedPanelLabel(\"Component Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"componentEditorPanel\" -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Component Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"dynPaintScriptedPanelType\" (localizedPanelLabel(\"Paint Effects\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"dynPaintScriptedPanelType\" -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Paint Effects\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"scriptEditorPanel\" (localizedPanelLabel(\"Script Editor\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"scriptEditorPanel\" -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Script Editor\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"profilerPanel\" (localizedPanelLabel(\"Profiler Tool\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"profilerPanel\" -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels `;\n"
		+ "\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Profiler Tool\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"Stereo\" (localizedPanelLabel(\"Stereo\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"Stereo\" -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels `;\nstring $editorName = ($panelName+\"Editor\");\n            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n"
		+ "                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n"
		+ "                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n"
		+ "                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Stereo\")) -mbv $menusOkayInPanels  $panelName;\nstring $editorName = ($panelName+\"Editor\");\n"
		+ "            stereoCameraView -e \n                -camera \"persp\" \n                -useInteractiveMode 0\n                -displayLights \"default\" \n                -displayAppearance \"wireframe\" \n                -activeOnly 0\n                -ignorePanZoom 0\n                -wireframeOnShaded 0\n                -headsUpDisplay 1\n                -holdOuts 1\n                -selectionHiliteDisplay 1\n                -useDefaultMaterial 0\n                -bufferMode \"double\" \n                -twoSidedLighting 1\n                -backfaceCulling 0\n                -xray 0\n                -jointXray 0\n                -activeComponentsXray 0\n                -displayTextures 0\n                -smoothWireframe 0\n                -lineWidth 1\n                -textureAnisotropic 0\n                -textureHilight 1\n                -textureSampling 2\n                -textureDisplay \"modulate\" \n                -textureMaxSize 16384\n                -fogging 0\n                -fogSource \"fragment\" \n                -fogMode \"linear\" \n"
		+ "                -fogStart 0\n                -fogEnd 100\n                -fogDensity 0.1\n                -fogColor 0.5 0.5 0.5 1 \n                -depthOfFieldPreview 1\n                -maxConstantTransparency 1\n                -objectFilterShowInHUD 1\n                -isFiltered 0\n                -colorResolution 4 4 \n                -bumpResolution 4 4 \n                -textureCompression 0\n                -transparencyAlgorithm \"frontAndBackCull\" \n                -transpInShadows 0\n                -cullingOverride \"none\" \n                -lowQualityLighting 0\n                -maximumNumHardwareLights 0\n                -occlusionCulling 0\n                -shadingModel 0\n                -useBaseRenderer 0\n                -useReducedRenderer 0\n                -smallObjectCulling 0\n                -smallObjectThreshold -1 \n                -interactiveDisableShadows 0\n                -interactiveBackFaceCull 0\n                -sortTransparent 1\n                -nurbsCurves 1\n                -nurbsSurfaces 1\n                -polymeshes 1\n"
		+ "                -subdivSurfaces 1\n                -planes 1\n                -lights 1\n                -cameras 1\n                -controlVertices 1\n                -hulls 1\n                -grid 1\n                -imagePlane 1\n                -joints 1\n                -ikHandles 1\n                -deformers 1\n                -dynamics 1\n                -particleInstancers 1\n                -fluids 1\n                -hairSystems 1\n                -follicles 1\n                -nCloths 1\n                -nParticles 1\n                -nRigids 1\n                -dynamicConstraints 1\n                -locators 1\n                -manipulators 1\n                -pluginShapes 1\n                -dimensions 1\n                -handles 1\n                -pivots 1\n                -textures 1\n                -strokes 1\n                -motionTrails 1\n                -clipGhosts 1\n                -greasePencils 1\n                -shadows 0\n                -captureSequenceNumber -1\n                -width 0\n                -height 0\n"
		+ "                -sceneRenderFilter 0\n                -displayMode \"centerEye\" \n                -viewColor 0 0 0 1 \n                -useCustomBackground 1\n                $editorName;\n            stereoCameraView -e -viewSelected 0 $editorName;\n            stereoCameraView -e \n                -pluginObjects \"gpuCacheDisplayFilter\" 1 \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"hyperShadePanel\" (localizedPanelLabel(\"Hypershade\")) `;\n\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"hyperShadePanel\" -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels `;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Hypershade\")) -mbv $menusOkayInPanels  $panelName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\t$panelName = `sceneUIReplacement -getNextScriptedPanel \"nodeEditorPanel\" (localizedPanelLabel(\"Node Editor\")) `;\n"
		+ "\tif (\"\" == $panelName) {\n\t\tif ($useSceneConfig) {\n\t\t\t$panelName = `scriptedPanel -unParent  -type \"nodeEditorPanel\" -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels `;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n"
		+ "                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\t}\n\t} else {\n\t\t$label = `panel -q -label $panelName`;\n\t\tscriptedPanel -edit -l (localizedPanelLabel(\"Node Editor\")) -mbv $menusOkayInPanels  $panelName;\n\n\t\t\t$editorName = ($panelName+\"NodeEditorEd\");\n            nodeEditor -e \n                -allAttributes 0\n                -allNodes 0\n                -autoSizeNodes 1\n                -consistentNameSize 1\n                -createNodeCommand \"nodeEdCreateNodeCommand\" \n                -defaultPinnedState 0\n                -additiveGraphingMode 0\n                -settingsChangedCallback \"nodeEdSyncControls\" \n                -traversalDepthLimit -1\n                -keyPressCommand \"nodeEdKeyPressCommand\" \n                -keyReleaseCommand \"nodeEdKeyReleaseCommand\" \n                -nodeTitleMode \"name\" \n                -gridSnap 0\n                -gridVisibility 1\n                -popupMenuScript \"nodeEdBuildPanelMenus\" \n"
		+ "                -showNamespace 1\n                -showShapes 1\n                -showSGShapes 0\n                -showTransforms 1\n                -useAssets 1\n                -syncedSelection 1\n                -extendToShapes 1\n                -activeTab -1\n                -editorMode \"default\" \n                $editorName;\n\t\tif (!$useSceneConfig) {\n\t\t\tpanel -e -l $label $panelName;\n\t\t}\n\t}\n\n\n\tif ($useSceneConfig) {\n        string $configName = `getPanel -cwl (localizedPanelLabel(\"Current Layout\"))`;\n        if (\"\" != $configName) {\n\t\t\tpanelConfiguration -edit -label (localizedPanelLabel(\"Current Layout\")) \n\t\t\t\t-defaultImage \"vacantCell.xP:/\"\n\t\t\t\t-image \"\"\n\t\t\t\t-sc false\n\t\t\t\t-configString \"global string $gMainPane; paneLayout -e -cn \\\"vertical2\\\" -ps 1 21 100 -ps 2 79 100 $gMainPane;\"\n\t\t\t\t-removeAllPanels\n\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Outliner\")) \n\t\t\t\t\t\"outlinerPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `outlinerPanel -unParent -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 1\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 0\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t\t\"outlinerPanel -edit -l (localizedPanelLabel(\\\"Outliner\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\noutlinerEditor -e \\n    -docTag \\\"isolOutln_fromSeln\\\" \\n    -showShapes 1\\n    -showReferenceNodes 1\\n    -showReferenceMembers 1\\n    -showAttributes 0\\n    -showConnected 0\\n    -showAnimCurvesOnly 0\\n    -showMuteInfo 0\\n    -organizeByLayer 1\\n    -showAnimLayerWeight 1\\n    -autoExpandLayers 1\\n    -autoExpand 0\\n    -showDagOnly 0\\n    -showAssets 1\\n    -showContainedOnly 1\\n    -showPublishedAsConnected 0\\n    -showContainerContents 1\\n    -ignoreDagHierarchy 0\\n    -expandConnections 0\\n    -showUpstreamCurves 1\\n    -showUnitlessCurves 1\\n    -showCompounds 1\\n    -showLeafs 1\\n    -showNumericAttrsOnly 0\\n    -highlightActive 1\\n    -autoSelectNewObjects 0\\n    -doNotSelectNewObjects 0\\n    -dropIsParent 1\\n    -transmitFilters 0\\n    -setFilter \\\"defaultSetFilter\\\" \\n    -showSetMembers 1\\n    -allowMultiSelection 1\\n    -alwaysToggleSelect 0\\n    -directSelect 0\\n    -displayMode \\\"DAG\\\" \\n    -expandObjects 0\\n    -setsIgnoreFilters 1\\n    -containersIgnoreFilters 0\\n    -editAttrName 0\\n    -showAttrValues 0\\n    -highlightSecondary 0\\n    -showUVAttrsOnly 0\\n    -showTextureNodesOnly 0\\n    -attrAlphaOrder \\\"default\\\" \\n    -animLayerFilterOptions \\\"allAffecting\\\" \\n    -sortOrder \\\"none\\\" \\n    -longNames 0\\n    -niceNames 1\\n    -showNamespace 1\\n    -showPinIcons 0\\n    -mapMotionTrails 0\\n    -ignoreHiddenAttribute 0\\n    -ignoreOutlinerColor 0\\n    $editorName\"\n"
		+ "\t\t\t\t-ap false\n\t\t\t\t\t(localizedPanelLabel(\"Persp View\")) \n\t\t\t\t\t\"modelPanel\"\n"
		+ "\t\t\t\t\t\"$panelName = `modelPanel -unParent -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels `;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 4 4 \\n    -bumpResolution 4 4 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1272\\n    -height 771\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t\t\"modelPanel -edit -l (localizedPanelLabel(\\\"Persp View\\\")) -mbv $menusOkayInPanels  $panelName;\\n$editorName = $panelName;\\nmodelEditor -e \\n    -cam `findStartUpCamera persp` \\n    -useInteractiveMode 0\\n    -displayLights \\\"default\\\" \\n    -displayAppearance \\\"wireframe\\\" \\n    -activeOnly 0\\n    -ignorePanZoom 0\\n    -wireframeOnShaded 1\\n    -headsUpDisplay 1\\n    -holdOuts 1\\n    -selectionHiliteDisplay 1\\n    -useDefaultMaterial 0\\n    -bufferMode \\\"double\\\" \\n    -twoSidedLighting 1\\n    -backfaceCulling 0\\n    -xray 0\\n    -jointXray 1\\n    -activeComponentsXray 0\\n    -displayTextures 0\\n    -smoothWireframe 0\\n    -lineWidth 1\\n    -textureAnisotropic 0\\n    -textureHilight 1\\n    -textureSampling 2\\n    -textureDisplay \\\"modulate\\\" \\n    -textureMaxSize 16384\\n    -fogging 0\\n    -fogSource \\\"fragment\\\" \\n    -fogMode \\\"linear\\\" \\n    -fogStart 0\\n    -fogEnd 100\\n    -fogDensity 0.1\\n    -fogColor 0.5 0.5 0.5 1 \\n    -depthOfFieldPreview 1\\n    -maxConstantTransparency 1\\n    -rendererName \\\"base_OpenGL_Renderer\\\" \\n    -objectFilterShowInHUD 1\\n    -isFiltered 0\\n    -colorResolution 4 4 \\n    -bumpResolution 4 4 \\n    -textureCompression 0\\n    -transparencyAlgorithm \\\"frontAndBackCull\\\" \\n    -transpInShadows 0\\n    -cullingOverride \\\"none\\\" \\n    -lowQualityLighting 0\\n    -maximumNumHardwareLights 1\\n    -occlusionCulling 0\\n    -shadingModel 0\\n    -useBaseRenderer 0\\n    -useReducedRenderer 0\\n    -smallObjectCulling 0\\n    -smallObjectThreshold -1 \\n    -interactiveDisableShadows 0\\n    -interactiveBackFaceCull 0\\n    -sortTransparent 1\\n    -nurbsCurves 1\\n    -nurbsSurfaces 1\\n    -polymeshes 1\\n    -subdivSurfaces 1\\n    -planes 1\\n    -lights 1\\n    -cameras 1\\n    -controlVertices 1\\n    -hulls 1\\n    -grid 1\\n    -imagePlane 1\\n    -joints 1\\n    -ikHandles 1\\n    -deformers 1\\n    -dynamics 1\\n    -particleInstancers 1\\n    -fluids 1\\n    -hairSystems 1\\n    -follicles 1\\n    -nCloths 1\\n    -nParticles 1\\n    -nRigids 1\\n    -dynamicConstraints 1\\n    -locators 1\\n    -manipulators 1\\n    -pluginShapes 1\\n    -dimensions 1\\n    -handles 1\\n    -pivots 1\\n    -textures 1\\n    -strokes 1\\n    -motionTrails 1\\n    -clipGhosts 1\\n    -greasePencils 1\\n    -shadows 0\\n    -captureSequenceNumber -1\\n    -width 1272\\n    -height 771\\n    -sceneRenderFilter 0\\n    $editorName;\\nmodelEditor -e -viewSelected 0 $editorName;\\nmodelEditor -e \\n    -pluginObjects \\\"gpuCacheDisplayFilter\\\" 1 \\n    $editorName\"\n"
		+ "\t\t\t\t$configName;\n\n            setNamedPanelLayout (localizedPanelLabel(\"Current Layout\"));\n        }\n\n        panelHistory -e -clear mainPanelHistory;\n        setFocus `paneLayout -q -p1 $gMainPane`;\n        sceneUIReplacement -deleteRemaining;\n        sceneUIReplacement -clear;\n\t}\n\n\ngrid -spacing 5 -size 12 -divisions 5 -displayAxes yes -displayGridLines yes -displayDivisionLines yes -displayPerspectiveLabels no -displayOrthographicLabels no -displayAxesBold yes -perspectiveLabelPosition axis -orthographicLabelPosition edge;\nviewManip -drawCompass 0 -compassAngle 0 -frontParameters \"\" -homeParameters \"\" -selectionLockParameters \"\";\n}\n");
	setAttr ".st" 3;
createNode script -n "sceneConfigurationScriptNode";
	rename -uid "78EC44BB-409D-CC07-E198-10AFE20E9376";
	setAttr ".b" -type "string" "playbackOptions -min 2 -max 31 -ast 1 -aet 60 ";
	setAttr ".st" 6;
createNode polyBridgeEdge -n "polyBridgeEdge1";
	rename -uid "B5A7BD84-4A2E-274D-F9F6-4791B48187B2";
	setAttr ".c[0]"  0 1 1;
	setAttr ".dv" 5;
createNode ilrOptionsNode -s -n "TurtleRenderOptions";
	rename -uid "3E44AF3C-4839-BA3A-0E30-328E396B4608";
lockNode -l 1 ;
createNode ilrUIOptionsNode -s -n "TurtleUIOptions";
	rename -uid "EB4F22CE-4A95-7354-4B8E-378EDF072898";
lockNode -l 1 ;
createNode ilrBakeLayerManager -s -n "TurtleBakeLayerManager";
	rename -uid "3A0F78F0-4BCA-D0CF-12FF-6496CECD3F05";
lockNode -l 1 ;
createNode ilrBakeLayer -s -n "TurtleDefaultBakeLayer";
	rename -uid "3C32C550-4176-F72E-060E-3790B657053D";
lockNode -l 1 ;
createNode makeNurbPlane -n "makeNurbPlane1";
	rename -uid "C9BAAA3D-420B-5293-ADD3-84BFF81594B2";
	setAttr ".ax" -type "double3" 0 1 0 ;
	setAttr ".u" 3;
	setAttr ".v" 3;
createNode transformGeometry -n "transformGeometry1";
	rename -uid "28F57478-4385-B33A-7FE5-329B44F7F2F2";
	setAttr ".txf" -type "matrix" 1 0 0 0 0 2.2204460492503131e-016 -1 0 0 1 2.2204460492503131e-016 0
		 0 0 0 1;
createNode ffd -n "ffd1";
	rename -uid "A3CCA438-4D41-C8CF-1508-EFB00F15EA18";
	setAttr ".lo" yes;
createNode tweak -n "tweak1";
	rename -uid "74AC6C1E-4F3F-4FF4-0ED4-EABD2BC2BAC3";
createNode objectSet -n "ffd1Set";
	rename -uid "3CFC4D9A-48F9-CE2A-EECC-43A7497663D4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "ffd1GroupId";
	rename -uid "89FBD465-46F7-2FE5-2D30-94A5BA7003DF";
	setAttr ".ihi" 0;
createNode groupParts -n "ffd1GroupParts";
	rename -uid "D1301FCA-441A-F97C-E04D-EEB683B48DD4";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode objectSet -n "tweakSet1";
	rename -uid "0CBD8355-492D-91FA-2D42-65B8C89A06BB";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId10";
	rename -uid "D985E194-4703-8420-D02E-E09B00CC08F4";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts7";
	rename -uid "709B1D90-4174-32AD-54EC-8CBF0515FCCB";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "cv[*][*]";
createNode cluster -n "FACE_L_UP_CLSTRCluster";
	rename -uid "A4268990-4AB1-C37C-2727-1C87F89FD000";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.9999999999999998e-013 0 0 0 0 1;
createNode tweak -n "tweak2";
	rename -uid "873FF941-4F85-168B-F659-F98D67C6F409";
createNode objectSet -n "cluster1Set";
	rename -uid "0BF71F34-4895-9C3E-D278-FA93E79E51F4";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster1GroupId";
	rename -uid "17E8969E-4429-7B69-C7D6-E5A2BC51A92C";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster1GroupParts";
	rename -uid "06C40E19-4DF9-3D7C-90BA-B39A06F8E432";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "pt[0][2][0:1]";
createNode objectSet -n "tweakSet2";
	rename -uid "333A21E8-4F80-F55C-C7C6-2D993929396F";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "groupId12";
	rename -uid "3775DD49-4E63-6032-AB8D-1F8A28FF901C";
	setAttr ".ihi" 0;
createNode groupParts -n "groupParts9";
	rename -uid "CF56EBD7-44F4-E0A7-D717-EBA8FF333C51";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "pt[*][*][*]";
createNode cluster -n "FACE_C_UP_CLSTRCluster";
	rename -uid "0AF79B1E-4B1A-1523-EBFA-089C6D142F93";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.9999999999999998e-013 0 0 0 0 1;
createNode objectSet -n "cluster2Set";
	rename -uid "8B9395C7-41D7-365D-C946-5380073DAC77";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster2GroupId";
	rename -uid "7FBF2437-436D-C2E7-4ED8-C7829B3B0D35";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster2GroupParts";
	rename -uid "0EC210C8-41DB-5E11-B592-B199B0BCD260";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "pt[1][2][0:1]";
createNode cluster -n "FACE_R_UP_CLSTRCluster";
	rename -uid "20066F01-4A04-4347-D4C4-F5832FBDEB8D";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.9999999999999998e-013 0 0 0 0 1;
createNode objectSet -n "cluster3Set";
	rename -uid "DC6FF064-40CE-4F86-C00E-D1BCF15B4C41";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster3GroupId";
	rename -uid "9A0F0236-4047-AC22-0E57-628781353ADF";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster3GroupParts";
	rename -uid "C0ED49AC-4976-D5B5-5AAD-C28A1CC46309";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "pt[2][2][0:1]";
createNode cluster -n "FACE_L_MID_CLSTR1Cluster";
	rename -uid "09B53A19-4C5C-117D-DD7C-9781ECF1772D";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.9999999999999998e-013 0 0 0 0 1;
createNode objectSet -n "cluster4Set";
	rename -uid "63D018F2-4B09-4520-5B2C-9C90C2BA6E17";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster4GroupId";
	rename -uid "8AB89547-4C00-E1B9-96E0-33852AA28BAC";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster4GroupParts";
	rename -uid "7412ECDE-4696-5626-CF01-51912C3FEC21";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "pt[0][1][0:1]";
createNode cluster -n "FACE_C_MID_CLSTRCluster";
	rename -uid "2AC9EBCE-4829-CFA6-42CE-22B39232AAE7";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.9999999999999998e-013 0 0 0 0 1;
createNode objectSet -n "cluster5Set";
	rename -uid "F89FB59F-4C6B-17E9-DE78-99868344A766";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster5GroupId";
	rename -uid "78F7B586-48F8-EBB5-252B-7689E1FF3EBA";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster5GroupParts";
	rename -uid "AA12BCFA-48C7-647E-7F7C-DD9CCDDEA553";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "pt[1][1][0:1]";
createNode cluster -n "FACE_R_MID_CLSTRCluster";
	rename -uid "64EED74E-458D-16D4-D29F-0AAFFE8EACC3";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.9999999999999998e-013 0 0 0 0 1;
createNode objectSet -n "cluster6Set";
	rename -uid "A7242766-4A79-ABCB-F918-308D39EB180C";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster6GroupId";
	rename -uid "932A0DDD-4EE1-4885-9C5A-2EB63ACDA17E";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster6GroupParts";
	rename -uid "E87B6FC9-4A04-3CAE-1BC1-18B0B5813508";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "pt[2][1][0:1]";
createNode cluster -n "FACE_R_LOW_CLSTRCluster";
	rename -uid "5EBEFC3B-4909-CE92-2EC7-19A79818ACD8";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.9999999999999998e-013 0 0 0 0 1;
createNode objectSet -n "cluster7Set";
	rename -uid "564B30C3-4097-4177-D074-2986F2F08EC8";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster7GroupId";
	rename -uid "1B935D65-4E65-19E8-3B0A-EA818CFF8A51";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster7GroupParts";
	rename -uid "92B509D1-41E0-60DE-79A6-938FBEF526AF";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "pt[2][0][0:1]";
createNode cluster -n "FACE_C_LOW_CLSTRCluster";
	rename -uid "FC8E9F1B-47CF-3F08-B352-23B396103DE9";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.9999999999999998e-013 0 0 0 0 1;
createNode objectSet -n "cluster8Set";
	rename -uid "1236B4D8-4F21-7812-3623-E0812887BC03";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster8GroupId";
	rename -uid "11C29382-4EA6-61FD-47DC-B58901E6756D";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster8GroupParts";
	rename -uid "8CAD2F2B-471F-63FE-A18D-45A6398EDAF7";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "pt[1][0][0:1]";
createNode cluster -n "FACE_L_LOW_CLSTRCluster";
	rename -uid "34075E34-42EF-C0D6-0DF4-E09F46AB0AEC";
	setAttr ".gm[0]" -type "matrix" 1 0 0 0 0 1 0 0 0 0 9.9999999999999998e-013 0 0 0 0 1;
createNode objectSet -n "cluster9Set";
	rename -uid "E9C41506-4F07-37FE-BF1F-AAA627A0965B";
	setAttr ".ihi" 0;
	setAttr ".vo" yes;
createNode groupId -n "cluster9GroupId";
	rename -uid "42F9690D-46B3-A46F-A828-32B63EDD8697";
	setAttr ".ihi" 0;
createNode groupParts -n "cluster9GroupParts";
	rename -uid "AE1E006B-4C59-E074-224F-66B11F430E9D";
	setAttr ".ihi" 0;
	setAttr ".ic" -type "componentList" 1 "pt[0][0][0:1]";
createNode plusMinusAverage -n "FACE_Surf_PMA";
	rename -uid "FBE05812-45F6-56BB-9446-C78F60B858E3";
	setAttr -s 2 ".i3[0:1]" -type "float3"  0.5 0.5 0 0 0 0;
createNode reverseSurface -n "reverseSurface1";
	rename -uid "63C73C52-4E2A-D2DA-5355-FDA708E9228A";
	setAttr ".d" 2;
createNode reverseSurface -n "reverseSurface2";
	rename -uid "382D8FD3-4E01-BA1A-F363-06BCB2AE5D4B";
createNode hyperLayout -n "hyperLayout1";
	rename -uid "36A62DA7-4131-3B65-3B8E-D6B37B1CEB44";
	setAttr ".ihi" 0;
	setAttr -s 108 ".hyp";
createNode remapValue -n "remapValue1";
	rename -uid "147B5D85-4955-CD33-722C-0F877BC197BA";
	setAttr -s 2 ".vl[0:1]"  0 0 1 1 1 1;
	setAttr -s 2 ".cl";
	setAttr ".cl[0].cli" 1;
	setAttr ".cl[1].clp" 1;
	setAttr ".cl[1].clc" -type "float3" 1 1 1 ;
	setAttr ".cl[1].cli" 1;
createNode nodeGraphEditorInfo -n "MayaNodeEditorSavedTabsInfo";
	rename -uid "8EB4BF37-48CC-5007-6641-AEBE459F85F8";
	setAttr ".tgi[0].tn" -type "string" "Untitled_1";
	setAttr ".tgi[0].vl" -type "double2" -217.08908367895839 -214.33042540581158 ;
	setAttr ".tgi[0].vh" -type "double2" 349.33948774961311 177.09814602275989 ;
	setAttr -s 2 ".tgi[0].ni";
	setAttr ".tgi[0].ni[0].x" 11.237309455871582;
	setAttr ".tgi[0].ni[0].y" -92.5;
	setAttr ".tgi[0].ni[0].nvs" 18304;
	setAttr ".tgi[0].ni[1].x" 14.285714149475098;
	setAttr ".tgi[0].ni[1].y" 48.928569793701172;
	setAttr ".tgi[0].ni[1].nvs" 18304;
createNode plusMinusAverage -n "DELETE_FACE_remap_surfVis_PMA";
	rename -uid "4511D361-4CB5-B44A-CFF6-84A24D3DB9FA";
	setAttr -s 2 ".i1[1]"  1;
	setAttr -s 2 ".i3[0:1]" -type "float3"  0.5 0.5 0 0 0 0;
select -ne :time1;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".o" 1.25;
	setAttr -av ".unw" 1.25;
	setAttr -k on ".etw";
	setAttr -k on ".tps";
	setAttr -av -k on ".tms";
select -ne :hardwareRenderingGlobals;
	setAttr ".otfna" -type "stringArray" 18 "NURBS Curves" "NURBS Surfaces" "Polygons" "Subdiv Surfaces" "Particles" "Fluids" "Image Planes" "UI:" "Lights" "Cameras" "Locators" "Joints" "IK Handles" "Deformers" "Motion Trails" "Components" "Misc. UI" "Ornaments"  ;
	setAttr ".otfva" -type "Int32Array" 18 0 1 1 1 1 1
		 1 0 0 0 0 0 0 0 0 0 0 0 ;
select -ne :renderPartition;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".st";
	setAttr -k on ".an";
	setAttr -k on ".pt";
select -ne :renderGlobalsList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
select -ne :defaultShaderList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 4 ".s";
select -ne :postProcessList1;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 2 ".p";
select -ne :defaultRenderUtilityList1;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -s 3 ".u";
select -ne :defaultRenderingList1;
select -ne :lambert1;
	setAttr ".c" -type "float3" 0.46794844 0.46794844 0.46794844 ;
select -ne :initialShadingGroup;
	setAttr -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr -k on ".ro" yes;
select -ne :initialParticleSE;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k on ".mwc";
	setAttr -k on ".an";
	setAttr -k on ".il";
	setAttr -k on ".vo";
	setAttr -k on ".eo";
	setAttr -k on ".fo";
	setAttr -k on ".epo";
	setAttr -k on ".ro" yes;
select -ne :defaultResolution;
	setAttr -av -k on ".cch";
	setAttr -k on ".ihi";
	setAttr -av -k on ".nds";
	setAttr -k on ".bnm";
	setAttr -av -k on ".w";
	setAttr -av -k on ".h";
	setAttr -av -k on ".pa" 1;
	setAttr -av -k on ".al";
	setAttr -av -k on ".dar";
	setAttr -av -k on ".ldar";
	setAttr -k on ".dpi";
	setAttr -av -k on ".off";
	setAttr -av -k on ".fld";
	setAttr -av -k on ".zsl";
	setAttr -k on ".isu";
	setAttr -k on ".pdu";
select -ne :defaultColorMgtGlobals;
	setAttr ".cme" no;
select -ne :hardwareRenderGlobals;
	setAttr -k on ".cch";
	setAttr -cb on ".ihi";
	setAttr -k on ".nds";
	setAttr -cb on ".bnm";
	setAttr -k off ".ctrs" 256;
	setAttr -av -k off ".btrs" 512;
	setAttr -k off ".fbfm";
	setAttr -k off -cb on ".ehql";
	setAttr -k off -cb on ".eams";
	setAttr -k off -cb on ".eeaa";
	setAttr -k off -cb on ".engm";
	setAttr -k off -cb on ".mes";
	setAttr -k off -cb on ".emb";
	setAttr -av -k off -cb on ".mbbf";
	setAttr -k off -cb on ".mbs";
	setAttr -k off -cb on ".trm";
	setAttr -k off -cb on ".tshc";
	setAttr -k off ".enpt";
	setAttr -k off -cb on ".clmt";
	setAttr -k off -cb on ".tcov";
	setAttr -k off -cb on ".lith";
	setAttr -k off -cb on ".sobc";
	setAttr -k off -cb on ".cuth";
	setAttr -k off -cb on ".hgcd";
	setAttr -k off -cb on ".hgci";
	setAttr -k off -cb on ".mgcs";
	setAttr -k off -cb on ".twa";
	setAttr -k off -cb on ".twz";
	setAttr -k on ".hwcc";
	setAttr -k on ".hwdp";
	setAttr -k on ".hwql";
	setAttr -k on ".hwfr";
	setAttr -k on ".soll";
	setAttr -k on ".sosl";
	setAttr -k on ".bswa";
	setAttr -k on ".shml";
	setAttr -k on ".hwel";
connectAttr "hyperLayout1.msg" "FACE_LYT_01_AST.hl";
connectAttr "ffd1GroupId.id" "FACE_SurfaceShape.iog.og[0].gid";
connectAttr "ffd1Set.mwc" "FACE_SurfaceShape.iog.og[0].gco";
connectAttr "groupId10.id" "FACE_SurfaceShape.iog.og[1].gid";
connectAttr "tweakSet1.mwc" "FACE_SurfaceShape.iog.og[1].gco";
connectAttr "reverseSurface2.os" "FACE_SurfaceShape.cr";
connectAttr "tweak1.pl[0].cp[0]" "FACE_SurfaceShape.twl";
connectAttr "DELETE_FACE_remap_surfVis_PMA.o1" "FACE_SurfaceShape.ovdt";
connectAttr "transformGeometry1.og" "FACE_SurfaceShapeOrig.cr";
connectAttr "FACE_Layout_GRP_parentConstraint1.ctx" "FACE_Layout_GRP.tx";
connectAttr "FACE_Layout_GRP_parentConstraint1.cty" "FACE_Layout_GRP.ty";
connectAttr "FACE_Layout_GRP_parentConstraint1.ctz" "FACE_Layout_GRP.tz";
connectAttr "FACE_Layout_GRP_parentConstraint1.crx" "FACE_Layout_GRP.rx";
connectAttr "FACE_Layout_GRP_parentConstraint1.cry" "FACE_Layout_GRP.ry";
connectAttr "FACE_Layout_GRP_parentConstraint1.crz" "FACE_Layout_GRP.rz";
connectAttr "FACE_Layout_GRP_scaleConstraint1.csx" "FACE_Layout_GRP.sx";
connectAttr "FACE_Layout_GRP_scaleConstraint1.csy" "FACE_Layout_GRP.sy";
connectAttr "FACE_Layout_GRP_scaleConstraint1.csz" "FACE_Layout_GRP.sz";
connectAttr "FACE_Main_CTRL.Adj_Vis" "FACE_Layout_GRP.v";
connectAttr "FACE_L_LOW_CLSTRCluster.og[0]" "FACE_LatticeShape.li";
connectAttr "tweak2.pl[0].cp[0]" "FACE_LatticeShape.twl";
connectAttr "cluster1GroupId.id" "FACE_LatticeShape.iog.og[0].gid";
connectAttr "cluster1Set.mwc" "FACE_LatticeShape.iog.og[0].gco";
connectAttr "groupId12.id" "FACE_LatticeShape.iog.og[1].gid";
connectAttr "tweakSet2.mwc" "FACE_LatticeShape.iog.og[1].gco";
connectAttr "cluster2GroupId.id" "FACE_LatticeShape.iog.og[2].gid";
connectAttr "cluster2Set.mwc" "FACE_LatticeShape.iog.og[2].gco";
connectAttr "cluster3GroupId.id" "FACE_LatticeShape.iog.og[3].gid";
connectAttr "cluster3Set.mwc" "FACE_LatticeShape.iog.og[3].gco";
connectAttr "cluster4GroupId.id" "FACE_LatticeShape.iog.og[4].gid";
connectAttr "cluster4Set.mwc" "FACE_LatticeShape.iog.og[4].gco";
connectAttr "cluster5GroupId.id" "FACE_LatticeShape.iog.og[5].gid";
connectAttr "cluster5Set.mwc" "FACE_LatticeShape.iog.og[5].gco";
connectAttr "cluster6GroupId.id" "FACE_LatticeShape.iog.og[6].gid";
connectAttr "cluster6Set.mwc" "FACE_LatticeShape.iog.og[6].gco";
connectAttr "cluster7GroupId.id" "FACE_LatticeShape.iog.og[7].gid";
connectAttr "cluster7Set.mwc" "FACE_LatticeShape.iog.og[7].gco";
connectAttr "cluster8GroupId.id" "FACE_LatticeShape.iog.og[8].gid";
connectAttr "cluster8Set.mwc" "FACE_LatticeShape.iog.og[8].gco";
connectAttr "cluster9GroupId.id" "FACE_LatticeShape.iog.og[9].gid";
connectAttr "cluster9Set.mwc" "FACE_LatticeShape.iog.og[9].gco";
connectAttr "FACE_Layout_GRP.ro" "FACE_Layout_GRP_parentConstraint1.cro";
connectAttr "FACE_Layout_GRP.pim" "FACE_Layout_GRP_parentConstraint1.cpim";
connectAttr "FACE_Layout_GRP.rp" "FACE_Layout_GRP_parentConstraint1.crp";
connectAttr "FACE_Layout_GRP.rpt" "FACE_Layout_GRP_parentConstraint1.crt";
connectAttr "FACE_Main_CTRL.t" "FACE_Layout_GRP_parentConstraint1.tg[0].tt";
connectAttr "FACE_Main_CTRL.rp" "FACE_Layout_GRP_parentConstraint1.tg[0].trp";
connectAttr "FACE_Main_CTRL.rpt" "FACE_Layout_GRP_parentConstraint1.tg[0].trt";
connectAttr "FACE_Main_CTRL.r" "FACE_Layout_GRP_parentConstraint1.tg[0].tr";
connectAttr "FACE_Main_CTRL.ro" "FACE_Layout_GRP_parentConstraint1.tg[0].tro";
connectAttr "FACE_Main_CTRL.s" "FACE_Layout_GRP_parentConstraint1.tg[0].ts";
connectAttr "FACE_Main_CTRL.pm" "FACE_Layout_GRP_parentConstraint1.tg[0].tpm";
connectAttr "FACE_Layout_GRP_parentConstraint1.w0" "FACE_Layout_GRP_parentConstraint1.tg[0].tw"
		;
connectAttr "FACE_Layout_GRP.pim" "FACE_Layout_GRP_scaleConstraint1.cpim";
connectAttr "FACE_Main_CTRL.s" "FACE_Layout_GRP_scaleConstraint1.tg[0].ts";
connectAttr "FACE_Main_CTRL.pm" "FACE_Layout_GRP_scaleConstraint1.tg[0].tpm";
connectAttr "FACE_Layout_GRP_scaleConstraint1.w0" "FACE_Layout_GRP_scaleConstraint1.tg[0].tw"
		;
connectAttr "FACE_Main_CTRL.Size" "FACE_Main_CTRL.sx";
connectAttr "FACE_Main_CTRL.Size" "FACE_Main_CTRL.sy";
connectAttr "FACE_Main_CTRL.Size" "FACE_Main_CTRL.sz";
connectAttr "FACE_LOCAL_parentConstraint1.ctx" "FACE_LOCAL.tx";
connectAttr "FACE_LOCAL_parentConstraint1.cty" "FACE_LOCAL.ty";
connectAttr "FACE_LOCAL_parentConstraint1.ctz" "FACE_LOCAL.tz";
connectAttr "FACE_LOCAL_parentConstraint1.crx" "FACE_LOCAL.rx";
connectAttr "FACE_LOCAL_parentConstraint1.cry" "FACE_LOCAL.ry";
connectAttr "FACE_LOCAL_parentConstraint1.crz" "FACE_LOCAL.rz";
connectAttr "FACE_LOCAL_scaleConstraint1.csx" "FACE_LOCAL.sx";
connectAttr "FACE_LOCAL_scaleConstraint1.csy" "FACE_LOCAL.sy";
connectAttr "FACE_LOCAL_scaleConstraint1.csz" "FACE_LOCAL.sz";
connectAttr "FACE_Surface_FollicleShape.ot" "FACE_Surface_Follicle.t" -l on;
connectAttr "FACE_Surface_FollicleShape.or" "FACE_Surface_Follicle.r" -l on;
connectAttr "FACE_SurfaceShape.l" "FACE_Surface_FollicleShape.is";
connectAttr "FACE_SurfaceShape.wm" "FACE_Surface_FollicleShape.iwm";
connectAttr "FACE_Surf_PMA.o3x" "FACE_Surface_FollicleShape.pv";
connectAttr "FACE_Surf_PMA.o3y" "FACE_Surface_FollicleShape.pu";
connectAttr "FACE_Major_CTRL.tz" "FACE_OffsetLCTR.tz";
connectAttr "FACE_LOCAL.ro" "FACE_LOCAL_parentConstraint1.cro";
connectAttr "FACE_LOCAL.pim" "FACE_LOCAL_parentConstraint1.cpim";
connectAttr "FACE_LOCAL.rp" "FACE_LOCAL_parentConstraint1.crp";
connectAttr "FACE_LOCAL.rpt" "FACE_LOCAL_parentConstraint1.crt";
connectAttr "FACE_Main_CTRL.t" "FACE_LOCAL_parentConstraint1.tg[0].tt";
connectAttr "FACE_Main_CTRL.rp" "FACE_LOCAL_parentConstraint1.tg[0].trp";
connectAttr "FACE_Main_CTRL.rpt" "FACE_LOCAL_parentConstraint1.tg[0].trt";
connectAttr "FACE_Main_CTRL.r" "FACE_LOCAL_parentConstraint1.tg[0].tr";
connectAttr "FACE_Main_CTRL.ro" "FACE_LOCAL_parentConstraint1.tg[0].tro";
connectAttr "FACE_Main_CTRL.s" "FACE_LOCAL_parentConstraint1.tg[0].ts";
connectAttr "FACE_Main_CTRL.pm" "FACE_LOCAL_parentConstraint1.tg[0].tpm";
connectAttr "FACE_LOCAL_parentConstraint1.w0" "FACE_LOCAL_parentConstraint1.tg[0].tw"
		;
connectAttr "FACE_LOCAL.pim" "FACE_LOCAL_scaleConstraint1.cpim";
connectAttr "FACE_Main_CTRL.s" "FACE_LOCAL_scaleConstraint1.tg[0].ts";
connectAttr "FACE_Main_CTRL.pm" "FACE_LOCAL_scaleConstraint1.tg[0].tpm";
connectAttr "FACE_LOCAL_scaleConstraint1.w0" "FACE_LOCAL_scaleConstraint1.tg[0].tw"
		;
connectAttr "FACE_Main_CTRL.Major_Vis" "FACE_Major_CTRL_GRP.v";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr ":TurtleDefaultBakeLayer.idx" ":TurtleBakeLayerManager.bli[0]";
connectAttr ":TurtleRenderOptions.msg" ":TurtleDefaultBakeLayer.rset";
connectAttr "makeNurbPlane1.os" "transformGeometry1.ig";
connectAttr "ffd1GroupParts.og" "ffd1.ip[0].ig";
connectAttr "ffd1GroupId.id" "ffd1.ip[0].gi";
connectAttr "FACE_LatticeShape.wm" "ffd1.dlm";
connectAttr "FACE_LatticeShape.lo" "ffd1.dlp";
connectAttr "FACE_Lattice_BaseShape.wm" "ffd1.blm";
connectAttr "groupParts7.og" "tweak1.ip[0].ig";
connectAttr "groupId10.id" "tweak1.ip[0].gi";
connectAttr "ffd1GroupId.msg" "ffd1Set.gn" -na;
connectAttr "FACE_SurfaceShape.iog.og[0]" "ffd1Set.dsm" -na;
connectAttr "ffd1.msg" "ffd1Set.ub[0]";
connectAttr "tweak1.og[0]" "ffd1GroupParts.ig";
connectAttr "ffd1GroupId.id" "ffd1GroupParts.gi";
connectAttr "groupId10.msg" "tweakSet1.gn" -na;
connectAttr "FACE_SurfaceShape.iog.og[1]" "tweakSet1.dsm" -na;
connectAttr "tweak1.msg" "tweakSet1.ub[0]";
connectAttr "FACE_SurfaceShapeOrig.ws" "groupParts7.ig";
connectAttr "groupId10.id" "groupParts7.gi";
connectAttr "cluster1GroupParts.og" "FACE_L_UP_CLSTRCluster.ip[0].ig";
connectAttr "cluster1GroupId.id" "FACE_L_UP_CLSTRCluster.ip[0].gi";
connectAttr "FACE_L_UP_CLSTR.wm" "FACE_L_UP_CLSTRCluster.ma";
connectAttr "FACE_L_UP_CLSTRShape.x" "FACE_L_UP_CLSTRCluster.x";
connectAttr "groupParts9.og" "tweak2.ip[0].ig";
connectAttr "groupId12.id" "tweak2.ip[0].gi";
connectAttr "cluster1GroupId.msg" "cluster1Set.gn" -na;
connectAttr "FACE_LatticeShape.iog.og[0]" "cluster1Set.dsm" -na;
connectAttr "FACE_L_UP_CLSTRCluster.msg" "cluster1Set.ub[0]";
connectAttr "tweak2.og[0]" "cluster1GroupParts.ig";
connectAttr "cluster1GroupId.id" "cluster1GroupParts.gi";
connectAttr "groupId12.msg" "tweakSet2.gn" -na;
connectAttr "FACE_LatticeShape.iog.og[1]" "tweakSet2.dsm" -na;
connectAttr "tweak2.msg" "tweakSet2.ub[0]";
connectAttr "FACE_LatticeShapeOrig.wl" "groupParts9.ig";
connectAttr "groupId12.id" "groupParts9.gi";
connectAttr "cluster2GroupParts.og" "FACE_C_UP_CLSTRCluster.ip[0].ig";
connectAttr "cluster2GroupId.id" "FACE_C_UP_CLSTRCluster.ip[0].gi";
connectAttr "FACE_C_UP_CLSTR.wm" "FACE_C_UP_CLSTRCluster.ma";
connectAttr "FACE_C_UP_CLSTRShape.x" "FACE_C_UP_CLSTRCluster.x";
connectAttr "cluster2GroupId.msg" "cluster2Set.gn" -na;
connectAttr "FACE_LatticeShape.iog.og[2]" "cluster2Set.dsm" -na;
connectAttr "FACE_C_UP_CLSTRCluster.msg" "cluster2Set.ub[0]";
connectAttr "FACE_L_UP_CLSTRCluster.og[0]" "cluster2GroupParts.ig";
connectAttr "cluster2GroupId.id" "cluster2GroupParts.gi";
connectAttr "cluster3GroupParts.og" "FACE_R_UP_CLSTRCluster.ip[0].ig";
connectAttr "cluster3GroupId.id" "FACE_R_UP_CLSTRCluster.ip[0].gi";
connectAttr "FACE_R_UP_CLSTR.wm" "FACE_R_UP_CLSTRCluster.ma";
connectAttr "FACE_R_UP_CLSTRShape.x" "FACE_R_UP_CLSTRCluster.x";
connectAttr "cluster3GroupId.msg" "cluster3Set.gn" -na;
connectAttr "FACE_LatticeShape.iog.og[3]" "cluster3Set.dsm" -na;
connectAttr "FACE_R_UP_CLSTRCluster.msg" "cluster3Set.ub[0]";
connectAttr "FACE_C_UP_CLSTRCluster.og[0]" "cluster3GroupParts.ig";
connectAttr "cluster3GroupId.id" "cluster3GroupParts.gi";
connectAttr "cluster4GroupParts.og" "FACE_L_MID_CLSTR1Cluster.ip[0].ig";
connectAttr "cluster4GroupId.id" "FACE_L_MID_CLSTR1Cluster.ip[0].gi";
connectAttr "FACE_L_MID_CLSTR1.wm" "FACE_L_MID_CLSTR1Cluster.ma";
connectAttr "FACE_L_MID_CLSTR1Shape.x" "FACE_L_MID_CLSTR1Cluster.x";
connectAttr "cluster4GroupId.msg" "cluster4Set.gn" -na;
connectAttr "FACE_LatticeShape.iog.og[4]" "cluster4Set.dsm" -na;
connectAttr "FACE_L_MID_CLSTR1Cluster.msg" "cluster4Set.ub[0]";
connectAttr "FACE_R_UP_CLSTRCluster.og[0]" "cluster4GroupParts.ig";
connectAttr "cluster4GroupId.id" "cluster4GroupParts.gi";
connectAttr "cluster5GroupParts.og" "FACE_C_MID_CLSTRCluster.ip[0].ig";
connectAttr "cluster5GroupId.id" "FACE_C_MID_CLSTRCluster.ip[0].gi";
connectAttr "FACE_C_MID_CLSTR.wm" "FACE_C_MID_CLSTRCluster.ma";
connectAttr "FACE_C_MID_CLSTRShape.x" "FACE_C_MID_CLSTRCluster.x";
connectAttr "cluster5GroupId.msg" "cluster5Set.gn" -na;
connectAttr "FACE_LatticeShape.iog.og[5]" "cluster5Set.dsm" -na;
connectAttr "FACE_C_MID_CLSTRCluster.msg" "cluster5Set.ub[0]";
connectAttr "FACE_L_MID_CLSTR1Cluster.og[0]" "cluster5GroupParts.ig";
connectAttr "cluster5GroupId.id" "cluster5GroupParts.gi";
connectAttr "cluster6GroupParts.og" "FACE_R_MID_CLSTRCluster.ip[0].ig";
connectAttr "cluster6GroupId.id" "FACE_R_MID_CLSTRCluster.ip[0].gi";
connectAttr "FACE_R_MID_CLSTR.wm" "FACE_R_MID_CLSTRCluster.ma";
connectAttr "FACE_R_MID_CLSTRShape.x" "FACE_R_MID_CLSTRCluster.x";
connectAttr "cluster6GroupId.msg" "cluster6Set.gn" -na;
connectAttr "FACE_LatticeShape.iog.og[6]" "cluster6Set.dsm" -na;
connectAttr "FACE_R_MID_CLSTRCluster.msg" "cluster6Set.ub[0]";
connectAttr "FACE_C_MID_CLSTRCluster.og[0]" "cluster6GroupParts.ig";
connectAttr "cluster6GroupId.id" "cluster6GroupParts.gi";
connectAttr "cluster7GroupParts.og" "FACE_R_LOW_CLSTRCluster.ip[0].ig";
connectAttr "cluster7GroupId.id" "FACE_R_LOW_CLSTRCluster.ip[0].gi";
connectAttr "FACE_R_LOW_CLSTR.wm" "FACE_R_LOW_CLSTRCluster.ma";
connectAttr "FACE_R_LOW_CLSTRShape.x" "FACE_R_LOW_CLSTRCluster.x";
connectAttr "cluster7GroupId.msg" "cluster7Set.gn" -na;
connectAttr "FACE_LatticeShape.iog.og[7]" "cluster7Set.dsm" -na;
connectAttr "FACE_R_LOW_CLSTRCluster.msg" "cluster7Set.ub[0]";
connectAttr "FACE_R_MID_CLSTRCluster.og[0]" "cluster7GroupParts.ig";
connectAttr "cluster7GroupId.id" "cluster7GroupParts.gi";
connectAttr "cluster8GroupParts.og" "FACE_C_LOW_CLSTRCluster.ip[0].ig";
connectAttr "cluster8GroupId.id" "FACE_C_LOW_CLSTRCluster.ip[0].gi";
connectAttr "FACE_C_LOW_CLSTR.wm" "FACE_C_LOW_CLSTRCluster.ma";
connectAttr "FACE_C_LOW_CLSTRShape.x" "FACE_C_LOW_CLSTRCluster.x";
connectAttr "cluster8GroupId.msg" "cluster8Set.gn" -na;
connectAttr "FACE_LatticeShape.iog.og[8]" "cluster8Set.dsm" -na;
connectAttr "FACE_C_LOW_CLSTRCluster.msg" "cluster8Set.ub[0]";
connectAttr "FACE_R_LOW_CLSTRCluster.og[0]" "cluster8GroupParts.ig";
connectAttr "cluster8GroupId.id" "cluster8GroupParts.gi";
connectAttr "cluster9GroupParts.og" "FACE_L_LOW_CLSTRCluster.ip[0].ig";
connectAttr "cluster9GroupId.id" "FACE_L_LOW_CLSTRCluster.ip[0].gi";
connectAttr "FACE_L_LOW_CLSTR.wm" "FACE_L_LOW_CLSTRCluster.ma";
connectAttr "FACE_L_LOW_CLSTRShape.x" "FACE_L_LOW_CLSTRCluster.x";
connectAttr "cluster9GroupId.msg" "cluster9Set.gn" -na;
connectAttr "FACE_LatticeShape.iog.og[9]" "cluster9Set.dsm" -na;
connectAttr "FACE_L_LOW_CLSTRCluster.msg" "cluster9Set.ub[0]";
connectAttr "FACE_C_LOW_CLSTRCluster.og[0]" "cluster9GroupParts.ig";
connectAttr "cluster9GroupId.id" "cluster9GroupParts.gi";
connectAttr "FACE_Major_CTRL.tx" "FACE_Surf_PMA.i3[1].i3y";
connectAttr "FACE_Major_CTRL.ty" "FACE_Surf_PMA.i3[1].i3x";
connectAttr "ffd1.og[0]" "reverseSurface1.is";
connectAttr "reverseSurface1.os" "reverseSurface2.is";
connectAttr "FACE_Main_GRP.msg" "hyperLayout1.hyp[0].dn";
connectAttr "FACE_C_LOW_CLSTRCluster.msg" "hyperLayout1.hyp[1].dn";
connectAttr "FACE_C_MID_CLSTRCluster.msg" "hyperLayout1.hyp[2].dn";
connectAttr "FACE_C_UP_CLSTRCluster.msg" "hyperLayout1.hyp[3].dn";
connectAttr "FACE_L_LOW_CLSTRCluster.msg" "hyperLayout1.hyp[4].dn";
connectAttr "FACE_L_MID_CLSTR1Cluster.msg" "hyperLayout1.hyp[5].dn";
connectAttr "FACE_L_UP_CLSTRCluster.msg" "hyperLayout1.hyp[6].dn";
connectAttr "FACE_R_LOW_CLSTRCluster.msg" "hyperLayout1.hyp[7].dn";
connectAttr "FACE_R_MID_CLSTRCluster.msg" "hyperLayout1.hyp[8].dn";
connectAttr "FACE_R_UP_CLSTRCluster.msg" "hyperLayout1.hyp[9].dn";
connectAttr "FACE_Surf_PMA.msg" "hyperLayout1.hyp[10].dn";
connectAttr "FACE_Main_CTRL.msg" "hyperLayout1.hyp[11].dn";
connectAttr "FACE_Main_CTRLShape.msg" "hyperLayout1.hyp[12].dn";
connectAttr "FACE_Surface_Follicle.msg" "hyperLayout1.hyp[13].dn";
connectAttr "FACE_Surface_FollicleShape.msg" "hyperLayout1.hyp[14].dn";
connectAttr "FACE_ZERO.msg" "hyperLayout1.hyp[15].dn";
connectAttr "FACE_OffsetLCTR.msg" "hyperLayout1.hyp[16].dn";
connectAttr "FACE_OffsetLCTRShape.msg" "hyperLayout1.hyp[17].dn";
connectAttr "FACE_OffsetLCTR_translation.msg" "hyperLayout1.hyp[18].dn";
connectAttr "FACE_OffsetLCTR_translationShape.msg" "hyperLayout1.hyp[19].dn";
connectAttr "FACE_OffsetLCTR_rotation.msg" "hyperLayout1.hyp[20].dn";
connectAttr "FACE_OffsetLCTR_rotationShape.msg" "hyperLayout1.hyp[21].dn";
connectAttr "FACE_OffsetLCTR_scale.msg" "hyperLayout1.hyp[22].dn";
connectAttr "FACE_OffsetLCTR_scaleShape.msg" "hyperLayout1.hyp[23].dn";
connectAttr "FACE_OffsetLCTR_SDK.msg" "hyperLayout1.hyp[24].dn";
connectAttr "FACE_OffsetLCTR_SDKShape.msg" "hyperLayout1.hyp[25].dn";
connectAttr "FACE_RIGJNT.msg" "hyperLayout1.hyp[26].dn";
connectAttr "FACE_Minor_CTRL_GRP.msg" "hyperLayout1.hyp[27].dn";
connectAttr "FACE_Minor_CTRL.msg" "hyperLayout1.hyp[28].dn";
connectAttr "FACE_Minor_CTRLShape.msg" "hyperLayout1.hyp[29].dn";
connectAttr "FACE_Major_CTRL_GRP.msg" "hyperLayout1.hyp[30].dn";
connectAttr "FACE_Major_CTRL.msg" "hyperLayout1.hyp[31].dn";
connectAttr "FACE_Major_CTRLShape.msg" "hyperLayout1.hyp[32].dn";
connectAttr "FACE_WORLD.msg" "hyperLayout1.hyp[33].dn";
connectAttr "FACE_Layout_GRP.msg" "hyperLayout1.hyp[34].dn";
connectAttr "FACE_L_LOW_CTRL_GRP.msg" "hyperLayout1.hyp[35].dn";
connectAttr "FACE_L_LOW_CTRL.msg" "hyperLayout1.hyp[36].dn";
connectAttr "FACE_L_LOW_CTRLShape.msg" "hyperLayout1.hyp[37].dn";
connectAttr "FACE_L_LOW_CLSTR.msg" "hyperLayout1.hyp[38].dn";
connectAttr "FACE_L_LOW_CLSTRShape.msg" "hyperLayout1.hyp[39].dn";
connectAttr "FACE_C_LOW_CTRL_GRP.msg" "hyperLayout1.hyp[40].dn";
connectAttr "FACE_C_LOW_CTRL.msg" "hyperLayout1.hyp[41].dn";
connectAttr "FACE_C_LOW_CTRLShape.msg" "hyperLayout1.hyp[42].dn";
connectAttr "FACE_C_LOW_CLSTR.msg" "hyperLayout1.hyp[43].dn";
connectAttr "FACE_C_LOW_CLSTRShape.msg" "hyperLayout1.hyp[44].dn";
connectAttr "FACE_R_LOW_CTRL_GRP.msg" "hyperLayout1.hyp[45].dn";
connectAttr "FACE_R_LOW_CTRL.msg" "hyperLayout1.hyp[46].dn";
connectAttr "FACE_R_LOW_CTRLShape.msg" "hyperLayout1.hyp[47].dn";
connectAttr "FACE_R_LOW_CLSTR.msg" "hyperLayout1.hyp[48].dn";
connectAttr "FACE_R_LOW_CLSTRShape.msg" "hyperLayout1.hyp[49].dn";
connectAttr "FACE_L_MID_CTRL_GRP3.msg" "hyperLayout1.hyp[50].dn";
connectAttr "FACE_L_MID_CTRL.msg" "hyperLayout1.hyp[51].dn";
connectAttr "FACE_L_MID_CTRLShape.msg" "hyperLayout1.hyp[52].dn";
connectAttr "FACE_L_MID_CLSTR1.msg" "hyperLayout1.hyp[53].dn";
connectAttr "FACE_L_MID_CLSTR1Shape.msg" "hyperLayout1.hyp[54].dn";
connectAttr "FACE_C_MID_CTRL_GRP.msg" "hyperLayout1.hyp[55].dn";
connectAttr "FACE_C_MID_CTRL.msg" "hyperLayout1.hyp[56].dn";
connectAttr "FACE_C_MID_CTRLShape.msg" "hyperLayout1.hyp[57].dn";
connectAttr "FACE_C_MID_CLSTR.msg" "hyperLayout1.hyp[58].dn";
connectAttr "FACE_C_MID_CLSTRShape.msg" "hyperLayout1.hyp[59].dn";
connectAttr "FACE_R_MID_CTRL_GRP.msg" "hyperLayout1.hyp[60].dn";
connectAttr "FACE_R_MID_CTRL.msg" "hyperLayout1.hyp[61].dn";
connectAttr "FACE_R_MID_CTRLShape.msg" "hyperLayout1.hyp[62].dn";
connectAttr "FACE_R_MID_CLSTR.msg" "hyperLayout1.hyp[63].dn";
connectAttr "FACE_R_MID_CLSTRShape.msg" "hyperLayout1.hyp[64].dn";
connectAttr "FACE_R_UP_CTRL_GRP.msg" "hyperLayout1.hyp[65].dn";
connectAttr "FACE_R_UP_CTRL.msg" "hyperLayout1.hyp[66].dn";
connectAttr "FACE_R_UP_CTRLShape.msg" "hyperLayout1.hyp[67].dn";
connectAttr "FACE_R_UP_CLSTR.msg" "hyperLayout1.hyp[68].dn";
connectAttr "FACE_R_UP_CLSTRShape.msg" "hyperLayout1.hyp[69].dn";
connectAttr "FACE_C_UP_CTRL_GRP.msg" "hyperLayout1.hyp[70].dn";
connectAttr "FACE_C_UP_CTRL.msg" "hyperLayout1.hyp[71].dn";
connectAttr "FACE_C_UP_CTRLShape.msg" "hyperLayout1.hyp[72].dn";
connectAttr "FACE_C_UP_CLSTR.msg" "hyperLayout1.hyp[73].dn";
connectAttr "FACE_C_UP_CLSTRShape.msg" "hyperLayout1.hyp[74].dn";
connectAttr "FACE_L_UP_CTRL_GRP.msg" "hyperLayout1.hyp[75].dn";
connectAttr "FACE_L_UP_CTRL.msg" "hyperLayout1.hyp[76].dn";
connectAttr "FACE_L_UP_CTRLShape.msg" "hyperLayout1.hyp[77].dn";
connectAttr "FACE_L_UP_CLSTR.msg" "hyperLayout1.hyp[78].dn";
connectAttr "FACE_L_UP_CLSTRShape.msg" "hyperLayout1.hyp[79].dn";
connectAttr "FACE_Lattice.msg" "hyperLayout1.hyp[80].dn";
connectAttr "FACE_LatticeShape.msg" "hyperLayout1.hyp[81].dn";
connectAttr "FACE_LatticeShapeOrig.msg" "hyperLayout1.hyp[82].dn";
connectAttr "FACE_Lattice_Base.msg" "hyperLayout1.hyp[83].dn";
connectAttr "FACE_Lattice_BaseShape.msg" "hyperLayout1.hyp[84].dn";
connectAttr "FACE_Layout_GRP_parentConstraint1.msg" "hyperLayout1.hyp[85].dn";
connectAttr "FACE_Layout_GRP_scaleConstraint1.msg" "hyperLayout1.hyp[86].dn";
connectAttr "FACE_Surface_GRP.msg" "hyperLayout1.hyp[87].dn";
connectAttr "FACE_Surface.msg" "hyperLayout1.hyp[88].dn";
connectAttr "FACE_SurfaceShape.msg" "hyperLayout1.hyp[89].dn";
connectAttr "FACE_SurfaceShapeOrig.msg" "hyperLayout1.hyp[90].dn";
connectAttr "transformGeometry1.msg" "hyperLayout1.hyp[91].dn";
connectAttr "groupId10.msg" "hyperLayout1.hyp[92].dn";
connectAttr "groupParts7.msg" "hyperLayout1.hyp[93].dn";
connectAttr "makeNurbPlane1.msg" "hyperLayout1.hyp[94].dn";
connectAttr "ffd1.msg" "hyperLayout1.hyp[95].dn";
connectAttr "tweak1.msg" "hyperLayout1.hyp[96].dn";
connectAttr "ffd1GroupId.msg" "hyperLayout1.hyp[97].dn";
connectAttr "ffd1GroupParts.msg" "hyperLayout1.hyp[98].dn";
connectAttr "reverseSurface1.msg" "hyperLayout1.hyp[99].dn";
connectAttr "reverseSurface2.msg" "hyperLayout1.hyp[100].dn";
connectAttr "DELETE_WORLD.msg" "hyperLayout1.hyp[101].dn";
connectAttr "DELETE_Main_CTRL_GRP.msg" "hyperLayout1.hyp[102].dn";
connectAttr "FACE_LOCAL.msg" "hyperLayout1.hyp[103].dn";
connectAttr "FACE_LOCAL_parentConstraint1.msg" "hyperLayout1.hyp[104].dn";
connectAttr "FACE_LOCAL_scaleConstraint1.msg" "hyperLayout1.hyp[105].dn";
connectAttr "DELETE_FACE_remap_surfVis_PMA.msg" "hyperLayout1.hyp[106].dn";
connectAttr "DELETE_LOCAL.msg" "hyperLayout1.hyp[107].dn";
connectAttr "FACE_LYT_01_AST.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[0].dn";
connectAttr "remapValue1.msg" "MayaNodeEditorSavedTabsInfo.tgi[0].ni[1].dn";
connectAttr "FACE_Main_CTRL.SurafceDraw" "DELETE_FACE_remap_surfVis_PMA.i1[0]";
connectAttr "FACE_Surf_PMA.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "remapValue1.msg" ":defaultRenderUtilityList1.u" -na;
connectAttr "DELETE_FACE_remap_surfVis_PMA.msg" ":defaultRenderUtilityList1.u" -na
		;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
connectAttr "FACE_SurfaceShape.iog" ":initialShadingGroup.dsm" -na;
// End of face_layout2.ma
