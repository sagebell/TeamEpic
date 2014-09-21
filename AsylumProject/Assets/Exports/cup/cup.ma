//Maya ASCII 2014 scene
//Name: cup.ma
//Last modified: Mon, Sep 15, 2014 10:35:28 PM
//Codeset: 1252
requires maya "2014";
currentUnit -l centimeter -a degree -t film;
fileInfo "application" "maya";
fileInfo "product" "Maya 2014";
fileInfo "version" "2014";
fileInfo "cutIdentifier" "201307170459-880822";
fileInfo "osv" "Microsoft Windows 7 Home Premium Edition, 64-bit Windows 7 Service Pack 1 (Build 7601)\n";
fileInfo "license" "student";
createNode transform -s -n "persp";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 149.07515370177472 -7.3375647274225804 -24.259976812263979 ;
	setAttr ".r" -type "double3" 9.29473361560078 102.99999999994984 -1.7811106216195694e-013 ;
createNode camera -s -n "perspShape" -p "persp";
	setAttr -k off ".v" no;
	setAttr ".fl" 34.999999999999986;
	setAttr ".coi" 109.28036886033804;
	setAttr ".imn" -type "string" "persp";
	setAttr ".den" -type "string" "persp_depth";
	setAttr ".man" -type "string" "persp_mask";
	setAttr ".tp" -type "double3" 43.993649428340667 10.312647819519043 0 ;
	setAttr ".hc" -type "string" "viewSet -p %camera";
createNode transform -s -n "top";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 43.993649428340667 110.29869585425969 2.2201362533889184e-014 ;
	setAttr ".r" -type "double3" -89.999999999999986 0 0 ;
createNode camera -s -n "topShape" -p "top";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 116.04642354658377;
	setAttr ".imn" -type "string" "top";
	setAttr ".den" -type "string" "top_depth";
	setAttr ".man" -type "string" "top_mask";
	setAttr ".hc" -type "string" "viewSet -t %camera";
	setAttr ".o" yes;
createNode transform -s -n "front";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 43.993649428340667 10.312647819519043 109.82623500363276 ;
createNode camera -s -n "frontShape" -p "front";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 116.04642354658377;
	setAttr ".imn" -type "string" "front";
	setAttr ".den" -type "string" "front_depth";
	setAttr ".man" -type "string" "front_mask";
	setAttr ".hc" -type "string" "viewSet -f %camera";
	setAttr ".o" yes;
createNode transform -s -n "side";
	setAttr ".v" no;
	setAttr ".t" -type "double3" 100.57021475304134 10.312647819519043 1.2545520178264269e-014 ;
	setAttr ".r" -type "double3" 0 89.999999999999986 0 ;
createNode camera -s -n "sideShape" -p "side";
	setAttr -k off ".v" no;
	setAttr ".rnd" no;
	setAttr ".coi" 100.10000000000001;
	setAttr ".ow" 50.709109055368529;
	setAttr ".imn" -type "string" "side";
	setAttr ".den" -type "string" "side_depth";
	setAttr ".man" -type "string" "side_mask";
	setAttr ".hc" -type "string" "viewSet -s %camera";
	setAttr ".o" yes;
createNode transform -n "pCylinder1";
	setAttr ".t" -type "double3" 0 10 0 ;
createNode mesh -n "pCylinderShape1" -p "pCylinder1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.65493866801261902 0.82238572835922241 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode transform -n "pTorus1";
	setAttr ".rp" -type "double3" 0 19.90135519595259 0 ;
	setAttr ".sp" -type "double3" 0 19.90135519595259 0 ;
createNode mesh -n "pTorusShape1" -p "pTorus1";
	setAttr -k off ".v";
	setAttr ".vir" yes;
	setAttr ".vif" yes;
	setAttr ".pv" -type "double2" 0.54741330686400147 0.15605174221808871 ;
	setAttr ".uvst[0].uvsn" -type "string" "map1";
	setAttr ".cuvs" -type "string" "map1";
	setAttr ".dcc" -type "string" "Ambient+Diffuse";
	setAttr ".covm[0]"  0 1 1;
	setAttr ".cdvm[0]"  0 1 1;
createNode lightLinker -s -n "lightLinker1";
	setAttr -s 2 ".lnk";
	setAttr -s 2 ".slnk";
createNode displayLayerManager -n "layerManager";
createNode displayLayer -n "defaultLayer";
createNode renderLayerManager -n "renderLayerManager";
createNode renderLayer -n "defaultRenderLayer";
	setAttr ".g" yes;
createNode polyCylinder -n "polyCylinder1";
	setAttr ".r" 10.116092529418474;
	setAttr ".h" 18.556937260782718;
	setAttr ".sa" 15;
	setAttr ".sc" 1;
	setAttr ".cuv" 3;
createNode deleteComponent -n "deleteComponent1";
	setAttr ".dc" -type "componentList" 1 "f[39]";
createNode deleteComponent -n "deleteComponent2";
	setAttr ".dc" -type "componentList" 1 "f[38]";
createNode deleteComponent -n "deleteComponent3";
	setAttr ".dc" -type "componentList" 1 "f[37]";
createNode deleteComponent -n "deleteComponent4";
	setAttr ".dc" -type "componentList" 1 "f[36]";
createNode deleteComponent -n "deleteComponent5";
	setAttr ".dc" -type "componentList" 1 "f[35]";
createNode deleteComponent -n "deleteComponent6";
	setAttr ".dc" -type "componentList" 1 "f[34]";
createNode deleteComponent -n "deleteComponent7";
	setAttr ".dc" -type "componentList" 1 "f[33]";
createNode deleteComponent -n "deleteComponent8";
	setAttr ".dc" -type "componentList" 1 "f[32]";
createNode deleteComponent -n "deleteComponent9";
	setAttr ".dc" -type "componentList" 1 "f[31]";
createNode deleteComponent -n "deleteComponent10";
	setAttr ".dc" -type "componentList" 1 "f[30]";
createNode deleteComponent -n "deleteComponent11";
	setAttr ".dc" -type "componentList" 1 "f[34]";
createNode deleteComponent -n "deleteComponent12";
	setAttr ".dc" -type "componentList" 1 "f[33]";
createNode deleteComponent -n "deleteComponent13";
	setAttr ".dc" -type "componentList" 1 "f[32]";
createNode deleteComponent -n "deleteComponent14";
	setAttr ".dc" -type "componentList" 1 "f[31]";
createNode deleteComponent -n "deleteComponent15";
	setAttr ".dc" -type "componentList" 1 "f[30]";
createNode deleteComponent -n "deleteComponent16";
	setAttr ".dc" -type "componentList" 1 "f[20]";
createNode deleteComponent -n "deleteComponent17";
	setAttr ".dc" -type "componentList" 1 "f[19]";
createNode deleteComponent -n "deleteComponent18";
	setAttr ".dc" -type "componentList" 1 "f[18]";
createNode deleteComponent -n "deleteComponent19";
	setAttr ".dc" -type "componentList" 1 "f[17]";
createNode deleteComponent -n "deleteComponent20";
	setAttr ".dc" -type "componentList" 1 "f[16]";
createNode deleteComponent -n "deleteComponent21";
	setAttr ".dc" -type "componentList" 1 "f[15]";
createNode deleteComponent -n "deleteComponent22";
	setAttr ".dc" -type "componentList" 1 "f[15]";
createNode deleteComponent -n "deleteComponent23";
	setAttr ".dc" -type "componentList" 1 "f[15]";
createNode deleteComponent -n "deleteComponent24";
	setAttr ".dc" -type "componentList" 1 "f[15]";
createNode deleteComponent -n "deleteComponent25";
	setAttr ".dc" -type "componentList" 1 "f[15]";
createNode deleteComponent -n "deleteComponent26";
	setAttr ".dc" -type "componentList" 1 "f[16]";
createNode deleteComponent -n "deleteComponent27";
	setAttr ".dc" -type "componentList" 1 "f[15]";
createNode deleteComponent -n "deleteComponent28";
	setAttr ".dc" -type "componentList" 1 "f[15]";
createNode deleteComponent -n "deleteComponent29";
	setAttr ".dc" -type "componentList" 1 "f[15]";
createNode deleteComponent -n "deleteComponent30";
	setAttr ".dc" -type "componentList" 0;
createNode deleteComponent -n "deleteComponent31";
	setAttr ".dc" -type "componentList" 1 "f[15]";
createNode polyAppend -n "polyAppend1";
	setAttr -s 7 ".d[0:6]"  -2147483645 -2147483639 -2147483640 -2147483641 -2147483642 -2147483643 
		-2147483644;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend2";
	setAttr -s 3 ".d[0:2]"  -2147483646 -2147483638 -2147483603;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend3";
	setAttr -s 3 ".d[0:2]"  -2147483647 -2147483637 -2147483602;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend4";
	setAttr -s 3 ".d[0:2]"  -2147483634 -2147483601 -2147483648;
	setAttr ".tx" 1;
createNode polyAppend -n "polyAppend5";
	setAttr -s 3 ".d[0:2]"  -2147483635 -2147483636 -2147483600;
	setAttr ".tx" 1;
createNode polyExtrudeEdge -n "polyExtrudeEdge1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[15:29]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.2655093043324115 9.2784686303913588 -0.6501356357377972 1;
	setAttr ".ws" yes;
	setAttr ".pvt" -type "float3" -7.1549783 18.556938 -0.65013516 ;
	setAttr ".rs" 43570;
	setAttr ".lt" -type "double3" -1.5230872119076366e-015 1.2577780365459348 -2.8102520310824275e-016 ;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -17.160540279674208 18.556937716084718 -10.710809349421879 ;
	setAttr ".cbx" -type "double3" 2.8505833775523541 18.556937716084718 9.4105390316206012 ;
createNode polyTweak -n "polyTweak1";
	setAttr ".uopa" yes;
	setAttr -s 29 ".tk[0:28]" -type "float3"  -0.8650201 0 0.38979352 -0.63078648
		 0 0.71218848 -0.28567377 0 0.91143954 0.11064521 0 0.95309442 0.48964316 0 0.82995069
		 0.78578794 0 0.56330073 0.94787335 0 0.19925112 0.94787341 0 -0.19925089 0.785788
		 0 -0.56330061 0.48964334 0 -0.82995057 0.11064541 0 -0.95309442 -0.28567359 0 -0.91143966
		 -0.63078642 0 -0.7121886 -0.86502016 0 -0.38979375 -0.94787341 0 4.5172996e-008 0
		 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0;
createNode polyExtrudeFace -n "polyExtrudeFace1";
	setAttr ".ics" -type "componentList" 1 "f[20:34]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.2655093043324115 9.2784686303913588 -0.6501356357377972 1;
	setAttr ".ws" yes;
	setAttr ".s" -type "double3" 1.0666666685799995 1.0666666685799995 1.0666666685799995 ;
	setAttr ".pvt" -type "float3" -7.154963 19.185043 -0.65013516 ;
	setAttr ".rs" 58146;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -17.221901592540419 18.556937716084718 -10.772605537776371 ;
	setAttr ".cbx" -type "double3" 2.9119752079966901 19.813148043233156 9.4723352199750934 ;
createNode polyBevel -n "polyBevel1";
	setAttr ".ics" -type "componentList" 29 "e[66]" "e[68]" "e[70:71]" "e[73]" "e[75:76]" "e[78]" "e[80:81]" "e[83]" "e[85:86]" "e[88]" "e[90:91]" "e[93]" "e[95:96]" "e[98]" "e[100:101]" "e[103]" "e[105:106]" "e[108]" "e[110:111]" "e[113]" "e[115:116]" "e[118]" "e[120:121]" "e[123]" "e[125:126]" "e[128]" "e[130:131]" "e[133]" "e[135:138]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.2655093043324115 9.2784686303913588 -0.6501356357377972 1;
	setAttr ".ws" yes;
	setAttr ".oaf" yes;
	setAttr ".o" 0.5;
	setAttr ".at" 180;
	setAttr ".fn" yes;
	setAttr ".mv" yes;
	setAttr ".mvt" 0.0001;
	setAttr ".sa" 30;
	setAttr ".ma" 180;
createNode polyExtrudeEdge -n "polyExtrudeEdge2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "e[0:14]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 -7.2655093043324115 9.2784686303913588 -0.6501356357377972 1;
	setAttr ".ws" yes;
	setAttr ".t" -type "double3" 1.3322676295501878e-014 -0.76396725896112194 0 ;
	setAttr ".pvt" -type "float3" -7.1549788 -0.76396674 -0.65013516 ;
	setAttr ".rs" 48334;
	setAttr ".c[0]"  0 1 1;
	setAttr ".cbn" -type "double3" -14.879085239696181 -4.5530200054599845e-007 -8.4167867893022503 ;
	setAttr ".cbx" -type "double3" 0.56912738390001039 1.4520466322665015e-006 7.1165164715009723 ;
createNode polyTweak -n "polyTweak2";
	setAttr ".uopa" yes;
	setAttr -s 15 ".tk[0:14]" -type "float3"  -1.21701467 1.5052265e-007
		 0.54840857 -0.88746661 1.5052265e-007 1.0019925833 -0.40192032 0 1.28232288 0.15566885
		 0 1.34092808 0.68888897 -1.5052265e-007 1.16767466 1.10554099 -1.5052265e-007 0.79251951
		 1.3335824 -1.5052265e-007 0.28033054 1.33358264 -1.5052265e-007 -0.28033012 1.10554123
		 -1.5052265e-007 -0.79251921 0.68888915 -1.5052265e-007 -1.1676743 0.15566927 0 -1.34092808
		 -0.40192017 0 -1.28232312 -0.88746649 1.5052265e-007 -1.0019929409 -1.21701479 1.5052265e-007
		 -0.54840881 -1.33358264 1.5052265e-007 6.1430022e-008;
createNode polyTorus -n "polyTorus1";
	setAttr ".r" 1.4000000000000001;
	setAttr ".sr" 0.1;
	setAttr ".sa" 18;
	setAttr ".sh" 15;
createNode script -n "sceneConfigurationScriptNode";
	setAttr ".b" -type "string" "playbackOptions -min 1 -max 24 -ast 1 -aet 48 ";
	setAttr ".st" 6;
createNode polyCylProj -n "polyCylProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 4.76837158203125e-007 10.312646865844727 0 ;
	setAttr ".ps" -type "double2" 180 2 ;
	setAttr ".r" 2;
createNode polyCylProj -n "polyCylProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:269]";
	setAttr ".ix" -type "matrix" 7.4297579886290999 0 0 0 0 7.7059646628629936 0 0 0 0 7.4297579886290999 0
		 0 19.90135519595259 0 1;
	setAttr ".ws" yes;
	setAttr ".pc" -type "double3" 4.76837158203125e-007 10.312646865844727 0 ;
	setAttr ".ps" -type "double2" 180 20.710166931152344 ;
	setAttr ".r" 22.256802558898926;
createNode polyTweakUV -n "polyTweakUV1";
	setAttr ".uopa" yes;
	setAttr -s 158 ".uvtk[0:157]" -type "float2" 2.35607076 0 2.35607076 0
		 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076
		 0 2.35607076 0 2.35607052 0 2.35607076 0 2.356071 0 2.35607076 0 2.35607076 0 2.35607076
		 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607052
		 0 2.35607076 0 2.35607052 0 2.356071 0 2.356071 0 2.35607076 0 2.35607052 0 2.35607052
		 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.356071 0 2.35607076
		 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076
		 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076
		 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.356071 0 2.35607076 0 2.35607076
		 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076
		 0 2.35607076 0 2.35607052 0 2.35607076 0 2.35607076 0 2.35607052 0 2.356071 0 2.35607052
		 0 2.35607052 0 2.35607052 0 2.35607076 0 2.35607076 0 2.35607076 0 2.356071 0 2.35607076
		 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.356071 0 2.35607076 0 2.356071
		 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076
		 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076
		 0 2.35607052 0 2.35607076 0 2.35607076 0 2.35607052 0 2.35607076 0 2.35607076 0 2.35607076
		 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607052 0 2.35607076 0 2.35607076 0 2.35607076
		 0 2.35607076 0 2.35607076 0 2.35607052 0 2.35607076 0 2.35607076 0 2.356071 0 2.35607076
		 0 2.35607076 0 2.35607076 0 2.356071 0 2.35607076 0 2.356071 0 2.35607076 0 2.356071
		 0 2.35607052 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076
		 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607052 0 2.356071 0 2.35607076
		 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607052 0 2.35607052 0 2.356071 0 2.35607052
		 0 2.35607052 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076 0 2.35607076
		 0 2.35607076 0 2.35607076 0;
createNode polyTweakUV -n "polyTweakUV2";
	setAttr ".uopa" yes;
createNode polyAutoProj -n "polyAutoProj1";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:154]";
	setAttr ".ix" -type "matrix" 1 0 0 0 0 1 0 0 0 0 1 0 0 10 0 1;
	setAttr ".s" -type "double3" 22.256803458549118 22.256803458549118 22.256803458549118 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode polyAutoProj -n "polyAutoProj2";
	setAttr ".uopa" yes;
	setAttr ".ics" -type "componentList" 1 "f[0:269]";
	setAttr ".ix" -type "matrix" 7.4297579886290999 0 0 0 0 7.7059646628629936 0 0 0 0 7.4297579886290999 0
		 0 19.90135519595259 0 1;
	setAttr ".s" -type "double3" 22.256803458549118 22.256803458549118 22.256803458549118 ;
	setAttr ".ps" 0.20000000298023224;
	setAttr ".dl" yes;
createNode transformGeometry -n "transformGeometry1";
	setAttr ".txf" -type "matrix" 7.4297579886290999 0 0 0 0 7.7059646628629936 0 0
		 0 0 7.4297579886290999 0 0 19.90135519595259 0 1;
createNode deleteComponent -n "deleteComponent32";
	setAttr ".dc" -type "componentList" 15 "f[21]" "f[23]" "f[25]" "f[27]" "f[29]" "f[31]" "f[33]" "f[35]" "f[37]" "f[39]" "f[41]" "f[43]" "f[45]" "f[47]" "f[49:139]";
createNode deleteComponent -n "deleteComponent33";
	setAttr ".dc" -type "componentList" 1 "f[20:34]";
createNode polyTweakUV -n "polyTweakUV3";
	setAttr ".uopa" yes;
	setAttr -s 395 ".uvtk";
	setAttr ".uvtk[0:249]" -type "float2" -0.33930135 -0.48756668 -0.33930135
		 -0.48756668 -0.33930141 -0.48756668 -0.33930141 -0.48756662 -0.33930129 -0.48756662
		 -0.33930129 -0.48756668 -0.33930135 -0.48756665 -0.33930141 -0.48756665 -0.33930147
		 -0.48756668 -0.33930147 -0.48756662 -0.33930135 -0.48756668 -0.33930141 -0.48756662
		 -0.33930147 -0.48756662 -0.33930147 -0.48756668 -0.33930129 -0.48756665 -0.33930129
		 -0.48756662 -0.33930135 -0.48756665 -0.33930141 -0.48756665 -0.33930147 -0.48756665
		 -0.33930147 -0.48756668 -0.33930147 -0.48756665 -0.33930147 -0.48756668 -0.33930129
		 -0.48756665 -0.33930135 -0.48756665 -0.33930141 -0.48756665 -0.33930147 -0.48756665
		 -0.33930147 -0.48756665 -0.33930129 -0.48756665 -0.33930135 -0.48756665 -0.33930141
		 -0.48756665 -0.33930147 -0.48756665 -0.33930147 -0.48756665 -0.33930129 -0.48756665
		 -0.33930147 -0.48756665 -0.33930147 -0.48756665 -0.1065241 -0.45689192 -0.1065241
		 -0.45689192 -0.10652409 -0.45689192 -0.10652409 -0.45689192 -0.10652408 -0.45689192
		 -0.10652408 -0.45689192 -0.10652408 -0.45689192 -0.10652408 -0.45689192 -0.1065241
		 -0.45689192 -0.10652409 -0.45689192 -0.1065241 -0.45689192 -0.1065241 -0.45689192
		 -0.10652408 -0.45689192 -0.10652408 -0.45689192 -0.1065241 -0.45689192 -0.10652409
		 -0.45689192 -0.1065241 -0.45689192 -0.10652408 -0.45689192 -0.10652408 -0.45689192
		 -0.10652408 -0.45689192 -0.10652408 -0.45689192 -0.1065241 -0.45689192 -0.10652409
		 -0.45689192 -0.1065241 -0.45689192 -0.1065241 -0.45689192 -0.1065241 -0.45689192
		 -0.10652408 -0.45689192 -0.10652408 -0.45689192 -0.1065241 -0.45689192 -0.040331282
		 -0.46496424 -0.040331282 -0.46496424 -0.040331282 -0.46496424 -0.040331282 -0.46496424
		 -0.040331282 -0.46496424 -0.040331282 -0.46496424 -0.040331282 -0.46496424 -0.040331282
		 -0.46496424 -0.040331282 -0.46496424 -0.040331282 -0.46496424 -0.040331282 -0.46496424
		 -0.040331282 -0.46496424 -0.040331282 -0.46496424 -0.040331282 -0.46496424 -0.040331282
		 -0.46496424 -0.040331282 -0.46496424 -0.040331282 -0.46496424 -0.040331282 -0.46496424
		 -0.040331282 -0.46496424 -0.040331282 -0.46496424 -0.040331282 -0.46496424 -0.040331282
		 -0.46496424 -0.040331282 -0.46496424 -0.040331282 -0.46496424 -0.040331282 -0.46496424
		 -0.040331282 -0.46496424 -0.040331282 -0.46496424 -0.040331282 -0.46496424 -0.040331282
		 -0.46496424 -0.040331282 -0.46496424 0.078118399 -0.45366302 0.078118399 -0.45366302
		 0.078118384 -0.45366302 0.078118384 -0.45366302 0.078118399 -0.45366302 0.078118399
		 -0.45366302 0.078118384 -0.45366302 0.078118384 -0.45366302 0.078118399 -0.45366302
		 0.078118384 -0.45366302 0.078118369 -0.45366302 0.078118369 -0.45366302 0.078118399
		 -0.45366302 0.078118384 -0.45366302 0.078118399 -0.45366302 0.078118384 -0.45366302
		 0.078118369 -0.45366302 0.078118399 -0.45366302 0.078118384 -0.45366302 0.078118384
		 -0.45366302 0.078118384 -0.45366302 0.078118369 -0.45366302 0.078118369 -0.45366302
		 0.078118369 -0.45366302 0.23625571 -0.022240862 0.26546293 -0.0053778924 0.26456574
		 -0.0029128678 0.23456958 -0.020231217 0.29867607 0.00047850236 0.29867607 0.0031016115
		 0.26353541 -8.1991777e-005 0.23263317 -0.017923504 0.21457732 -0.048076011 0.21230564
		 -0.046764262 0.33188927 -0.0053780898 0.3327865 -0.0029128678 0.29867607 0.0061141755
		 0.26255009 0.0026249997 0.23078141 -0.015716702 0.20969662 -0.045258261 0.20304257
		 -0.079767734 0.20045906 -0.07931219 0.36109647 -0.022240862 0.36278281 -0.020231217
		 0.33381683 -8.1991777e-005 0.29867607 0.0089949332 0.26178029 0.0047401898 0.22933435
		 -0.01399231 0.20720178 -0.043817796 0.1974923 -0.078788996 0.38277489 -0.048076011
		 0.38504681 -0.046764441 0.36471903 -0.017923504 0.33480215 0.0026249997 0.29867607
		 0.011245999 0.20525229 -0.042692356 0.19465521 -0.078288794 0.20045906 -0.11394884
		 0.1974923 -0.11447185 0.39430967 -0.079767734 0.39689314 -0.07931219 0.38765562 -0.045258261
		 0.36657077 -0.015716702 0.33557212 0.0047401898 0.19243857 -0.077897996 0.19465521
		 -0.11497223 0.21230543 -0.14649659 0.20969662 -0.14800277 0.39985991 -0.078788996
		 0.3901504 -0.043817796 0.36801782 -0.01399231 0.19243836 -0.11536302 0.20720178 -0.14944324
		 0.21457732 -0.14518502 0.20304257 -0.11349329 0.23456946 -0.17302981 0.23263296 -0.17533752
		 0.39689314 -0.11394884 0.39985991 -0.11447202 0.40269697 -0.078288794 0.39209995
		 -0.042692356 0.20525229 -0.15056866 0.23078129 -0.17754433 0.23625571 -0.17102018
		 0.26456574 -0.19034815 0.26353541 -0.19317904 0.38504681 -0.14649659 0.38765562 -0.14800277
		 0.40269697 -0.11497223 0.40491384 -0.077897996 0.22933435 -0.17926872 0.26255009
		 -0.19588602 0.26546293 -0.18788296 0.29867607 -0.19636264 0.29867607 -0.19937521
		 0.39430967 -0.11349329 0.38277489 -0.14518502 0.36278281 -0.17302981 0.36471903 -0.17533752
		 0.3901504 -0.14944324 0.40491384 -0.11536302 0.26178008 -0.19800121 0.29867607 -0.20225593
		 0.29867607 -0.19373953 0.3327865 -0.19034815 0.33381683 -0.19317904 0.36109647 -0.17102036
		 0.36657077 -0.17754433 0.39209995 -0.15056866 0.29867607 -0.20450702 0.33480215 -0.19588602
		 0.33188927 -0.18788314 0.36801782 -0.17926872 0.33557212 -0.19800121 -0.059013397
		 -0.4859522 -0.059013397 -0.4859522 -0.059013307 -0.4859522 -0.059013307 -0.4859522
		 -0.059013397 -0.4859522 -0.059013307 -0.4859522 -0.059013397 -0.4859522 -0.059013397
		 -0.4859522 -0.059013397 -0.4859522 -0.059013307 -0.4859522 -0.059013397 -0.4859522
		 -0.059013307 -0.4859522 -0.059013397 -0.4859522 -0.059013337 -0.4859522 -0.059013337
		 -0.4859522 -0.059013397 -0.4859522 -0.059013397 -0.4859522 -0.059013307 -0.4859522
		 -0.059013397 -0.4859522 -0.059013337 -0.4859522 -0.059013367 -0.4859522 -0.059013367
		 -0.4859522 -0.059013337 -0.4859522 -0.059013397 -0.4859522 -0.059013307 -0.4859522
		 -0.059013397 -0.4859522 -0.059013337 -0.4859522 -0.059013367 -0.4859522 -0.059013397
		 -0.4859522 -0.059013337 -0.4859522 -0.059013367 -0.4859522 -0.059013337 -0.4859522
		 -0.059013367 -0.4859522 -0.077470779 -0.4905237 -0.077470779 -0.4905237 -0.077470511
		 -0.4905237 -0.077470511 -0.4905237 -0.077470511 -0.4905237 -0.077470511 -0.4905237
		 -0.077470779 -0.4905237 -0.077470511 -0.4905237 -0.077470601 -0.4905237;
	setAttr ".uvtk[250:394]" -0.077470601 -0.4905237 -0.077470511 -0.4905237 -0.077470779
		 -0.4905237 -0.077470511 -0.4905237 -0.077470601 -0.4905237 -0.077470601 -0.4905237
		 -0.077470601 -0.4905237 -0.077470511 -0.4905237 -0.077470779 -0.4905237 -0.077470511
		 -0.4905237 -0.077470601 -0.4905237 -0.077470601 -0.4905237 -0.077470601 -0.4905237
		 -0.077470601 -0.4905237 -0.077470511 -0.4905237 -0.077470601 -0.4905237 -0.077470601
		 -0.4905237 -0.077470511 -0.4905237 -0.077470511 -0.4905237 -0.077470601 -0.4905237
		 -0.11465505 -0.47687224 -0.11465505 -0.4768723 -0.11465505 -0.4768723 -0.11465505
		 -0.47687224 -0.11465505 -0.4768723 -0.11465505 -0.4768723 -0.11465505 -0.47687224
		 -0.11465505 -0.4768723 -0.11465505 -0.4768723 -0.11465505 -0.4768723 -0.11465505
		 -0.47687224 -0.11465505 -0.4768723 -0.11465505 -0.4768723 -0.11465505 -0.4768723
		 -0.11465505 -0.4768723 -0.11465505 -0.4768723 -0.11465505 -0.4768723 -0.11465505
		 -0.47687224 -0.11465505 -0.4768723 -0.11465505 -0.4768723 -0.11465505 -0.4768723
		 -0.11465505 -0.4768723 -0.11465505 -0.4768723 -0.11465505 -0.4768723 -0.11465505
		 -0.4768723 -0.11465505 -0.4768723 -0.11465505 -0.4768723 -0.11465505 -0.4768723 -0.11465505
		 -0.4768723 -0.25182542 -0.49079558 -0.25182542 -0.49079558 -0.25182542 -0.49079558
		 -0.25182542 -0.49079558 -0.25182542 -0.49079558 -0.25182542 -0.49079558 -0.25182542
		 -0.49079558 -0.25182542 -0.49079558 -0.25182542 -0.49079558 -0.25182542 -0.49079558
		 -0.25182542 -0.49079558 -0.25182542 -0.49079558 -0.25182542 -0.49079558 -0.25182542
		 -0.49079558 -0.25182542 -0.49079558 -0.25182542 -0.49079558 -0.25182542 -0.49079558
		 -0.25182542 -0.49079558 -0.25182542 -0.49079558 -0.25182542 -0.49079558 -0.25182542
		 -0.49079558 -0.25182542 -0.49079558 -0.25182542 -0.49079558 -0.25182542 -0.49079558
		 0.22894546 -0.51643836 0.19717684 -0.4980967 0.19619152 -0.50080377 0.22709385 -0.51864523
		 0.16105087 -0.49172676 0.16105087 -0.49460751 0.19516119 -0.50363457 0.22515741 -0.52095288
		 0.25252515 -0.54453945 0.25003034 -0.54597986 0.12492479 -0.4980967 0.12591012 -0.50080377
		 0.16105087 -0.49761999 0.19426402 -0.50609958 0.22347119 -0.52296245 0.24742147 -0.54748601
		 0.26507163 -0.57901049 0.26223457 -0.57951081 0.093156062 -0.51643836 0.0950078 -0.51864523
		 0.1269405 -0.50363457 0.16105087 -0.50024331 0.24514957 -0.54879767 0.25926793 -0.58003384
		 0.26507163 -0.61569387 0.26223457 -0.61519355 0.069576524 -0.54453945 0.072071336
		 -0.54597986 0.096944235 -0.52095288 0.12783761 -0.5060997 0.25668454 -0.5804894 0.25926793
		 -0.61467046 0.25252527 -0.6501649 0.25003034 -0.6487245 0.057030052 -0.57901049 0.059867054
		 -0.57951081 0.074680232 -0.54748613 0.098630451 -0.52296245 0.24742147 -0.64721829
		 0.22894558 -0.67826599 0.22709385 -0.67605913 0.057030052 -0.61569387 0.059867054
		 -0.61519361 0.062833749 -0.58003384 0.076952063 -0.54879767 0.25668454 -0.61421496
		 0.24514969 -0.64590663 0.22515741 -0.67375147 0.19717696 -0.69660765 0.19619164 -0.69390064
		 0.069576524 -0.65016496 0.072071336 -0.64872456 0.062833749 -0.61467052 0.065417193
		 -0.5804894 0.22347131 -0.6717419 0.19516131 -0.69106978 0.16105087 -0.7029776 0.16105087
		 -0.70009685 0.093156181 -0.67826599 0.0950078 -0.67605919 0.074680232 -0.64721829
		 0.19426414 -0.68860471 0.16105087 -0.69708437 0.12492479 -0.69660771 0.12591012 -0.69390064
		 0.096944235 -0.67375147 0.076952063 -0.64590669 0.065417193 -0.61421502 0.16105087
		 -0.69446111 0.1269405 -0.69106984 0.098630451 -0.67174196 0.12783761 -0.68860477;
createNode polyTweakUV -n "polyTweakUV4";
	setAttr ".uopa" yes;
	setAttr -s 91 ".uvtk[0:90]" -type "float2" 0.059609622 -0.088082962
		 0.048844308 -0.088082902 0.051476315 0.60344529 0.065421447 0.60344523 0.036481485
		 -0.088082962 0.035462096 0.60344529 0.066916332 -0.088082962 0.074886322 0.60344523
		 0.024659203 -0.088082962 0.020147568 0.60344523 0.015421183 -0.088082962 0.0081812385
		 0.60344523 0.055824406 0.26310995 0.05781902 0.26310995 0.057496559 -0.39856842 0.054912694
		 -0.39856842 0.060002457 0.26310995 0.060325097 -0.39856842 0.061997246 0.26310995
		 0.062908962 -0.39856842 0.063458398 0.26310995 0.064801469 -0.39856842 -0.20518936
		 0.27314997 -0.20237155 0.27314997 -0.2026145 0.28562745 -0.20626463 0.28562745 -0.19942494
		 0.27314997 -0.1987976 0.28562751 -0.19685902 0.27315 -0.19547381 0.28562751 -0.19511755
		 0.27315 -0.19321789 0.28562751 0.18247518 0.52963835 0.064021423 0.52963835 0.064021319
		 -0.16238673 0.21746272 -0.16238673 -0.054431934 0.52963835 -0.089419663 -0.1623867
		 0.70049924 -0.66550171 0.68198705 -0.66046607 0.68198705 -0.73841405 0.70049924 -0.73337841
		 0.71496445 -0.72247458 0.7228815 -0.70758784 0.7228815 -0.69129229 0.71496451 -0.67640555
		 0.66262883 -0.66216946 0.66262889 -0.73671067 0.6457718 -0.67031723 0.6457718 -0.72856289
		 0.63433081 -0.68350059 0.63028365 -0.69944006 0.63433063 -0.71537954 -0.20481837
		 -0.27897564 -0.11250335 -0.33546743 -0.099140048 -0.31362984 -0.19145495 -0.25713816
		 -0.024223298 -0.38949016 -0.010859638 -0.3676528 -0.28520551 -0.22978258 -0.27184209
		 -0.20794499 0.044757992 -0.43170306 0.058121055 -0.40986559 -0.3397657 -0.19639489
		 -0.32640228 -0.17455727 -0.024384171 -0.12655546 -0.11890665 -0.17844753 -0.10554323
		 -0.20278887 -0.01102075 -0.15089689 -0.22237417 -0.23525037 -0.20901075 -0.25959182
		 -0.31689635 -0.28714263 -0.30353293 -0.3114841 -0.38612977 -0.32515132 -0.37276635
		 -0.34949279 -0.038461715 -0.41218346 -0.13404724 -0.35816061 -0.14741033 -0.38180524
		 -0.05182457 -0.43582797 -0.23400095 -0.30166894 -0.24736434 -0.32531351 -0.3210409
		 -0.25247592 -0.33440405 -0.27612072 -0.3801159 -0.21908802 -0.39347917 -0.24273252
		 -0.40998662 -0.12001695 -0.32689327 -0.17557859 -0.31352985 -0.15559351 -0.39662331
		 -0.10003201 -0.24379987 -0.23114026 -0.23043633 -0.21115518;
select -ne :time1;
	setAttr ".o" 1;
	setAttr ".unw" 1;
select -ne :renderPartition;
	setAttr -s 2 ".st";
select -ne :initialShadingGroup;
	setAttr -s 2 ".dsm";
	setAttr ".ro" yes;
select -ne :initialParticleSE;
	setAttr ".ro" yes;
select -ne :defaultShaderList1;
	setAttr -s 2 ".s";
select -ne :postProcessList1;
	setAttr -s 2 ".p";
select -ne :defaultRenderingList1;
select -ne :renderGlobalsList1;
select -ne :defaultRenderGlobals;
	setAttr ".ep" 1;
select -ne :defaultResolution;
	setAttr ".w" 640;
	setAttr ".h" 480;
	setAttr ".dar" 1.3333332538604736;
select -ne :hardwareRenderGlobals;
	setAttr ".ctrs" 256;
	setAttr ".btrs" 512;
select -ne :defaultHardwareRenderGlobals;
	setAttr ".fn" -type "string" "im";
	setAttr ".res" -type "string" "ntsc_4d 646 485 1.333";
select -ne :ikSystem;
	setAttr -s 4 ".sol";
connectAttr "polyTweakUV4.out" "pCylinderShape1.i";
connectAttr "polyTweakUV4.uvtk[0]" "pCylinderShape1.uvst[0].uvtw";
connectAttr "polyTweakUV3.out" "pTorusShape1.i";
connectAttr "polyTweakUV3.uvtk[0]" "pTorusShape1.uvst[0].uvtw";
relationship "link" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "link" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialShadingGroup.message" ":defaultLightSet.message";
relationship "shadowLink" ":lightLinker1" ":initialParticleSE.message" ":defaultLightSet.message";
connectAttr "layerManager.dli[0]" "defaultLayer.id";
connectAttr "renderLayerManager.rlmi[0]" "defaultRenderLayer.rlid";
connectAttr "polyCylinder1.out" "deleteComponent1.ig";
connectAttr "deleteComponent1.og" "deleteComponent2.ig";
connectAttr "deleteComponent2.og" "deleteComponent3.ig";
connectAttr "deleteComponent3.og" "deleteComponent4.ig";
connectAttr "deleteComponent4.og" "deleteComponent5.ig";
connectAttr "deleteComponent5.og" "deleteComponent6.ig";
connectAttr "deleteComponent6.og" "deleteComponent7.ig";
connectAttr "deleteComponent7.og" "deleteComponent8.ig";
connectAttr "deleteComponent8.og" "deleteComponent9.ig";
connectAttr "deleteComponent9.og" "deleteComponent10.ig";
connectAttr "deleteComponent10.og" "deleteComponent11.ig";
connectAttr "deleteComponent11.og" "deleteComponent12.ig";
connectAttr "deleteComponent12.og" "deleteComponent13.ig";
connectAttr "deleteComponent13.og" "deleteComponent14.ig";
connectAttr "deleteComponent14.og" "deleteComponent15.ig";
connectAttr "deleteComponent15.og" "deleteComponent16.ig";
connectAttr "deleteComponent16.og" "deleteComponent17.ig";
connectAttr "deleteComponent17.og" "deleteComponent18.ig";
connectAttr "deleteComponent18.og" "deleteComponent19.ig";
connectAttr "deleteComponent19.og" "deleteComponent20.ig";
connectAttr "deleteComponent20.og" "deleteComponent21.ig";
connectAttr "deleteComponent21.og" "deleteComponent22.ig";
connectAttr "deleteComponent22.og" "deleteComponent23.ig";
connectAttr "deleteComponent23.og" "deleteComponent24.ig";
connectAttr "deleteComponent24.og" "deleteComponent25.ig";
connectAttr "deleteComponent25.og" "deleteComponent26.ig";
connectAttr "deleteComponent26.og" "deleteComponent27.ig";
connectAttr "deleteComponent27.og" "deleteComponent28.ig";
connectAttr "deleteComponent28.og" "deleteComponent29.ig";
connectAttr "deleteComponent29.og" "deleteComponent30.ig";
connectAttr "deleteComponent30.og" "deleteComponent31.ig";
connectAttr "deleteComponent31.og" "polyAppend1.ip";
connectAttr "polyAppend1.out" "polyAppend2.ip";
connectAttr "polyAppend2.out" "polyAppend3.ip";
connectAttr "polyAppend3.out" "polyAppend4.ip";
connectAttr "polyAppend4.out" "polyAppend5.ip";
connectAttr "polyTweak1.out" "polyExtrudeEdge1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge1.mp";
connectAttr "polyAppend5.out" "polyTweak1.ip";
connectAttr "polyExtrudeEdge1.out" "polyExtrudeFace1.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeFace1.mp";
connectAttr "polyExtrudeFace1.out" "polyBevel1.ip";
connectAttr "pCylinderShape1.wm" "polyBevel1.mp";
connectAttr "polyTweak2.out" "polyExtrudeEdge2.ip";
connectAttr "pCylinderShape1.wm" "polyExtrudeEdge2.mp";
connectAttr "polyBevel1.out" "polyTweak2.ip";
connectAttr "polyExtrudeEdge2.out" "polyCylProj1.ip";
connectAttr "pCylinderShape1.wm" "polyCylProj1.mp";
connectAttr "polyTorus1.out" "polyCylProj2.ip";
connectAttr "pTorusShape1.wm" "polyCylProj2.mp";
connectAttr "polyCylProj1.out" "polyTweakUV1.ip";
connectAttr "polyCylProj2.out" "polyTweakUV2.ip";
connectAttr "polyTweakUV1.out" "polyAutoProj1.ip";
connectAttr "pCylinderShape1.wm" "polyAutoProj1.mp";
connectAttr "polyTweakUV2.out" "polyAutoProj2.ip";
connectAttr "pTorusShape1.wm" "polyAutoProj2.mp";
connectAttr "polyAutoProj2.out" "transformGeometry1.ig";
connectAttr "polyAutoProj1.out" "deleteComponent32.ig";
connectAttr "deleteComponent32.og" "deleteComponent33.ig";
connectAttr "transformGeometry1.og" "polyTweakUV3.ip";
connectAttr "deleteComponent33.og" "polyTweakUV4.ip";
connectAttr "pCylinderShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "pTorusShape1.iog" ":initialShadingGroup.dsm" -na;
connectAttr "defaultRenderLayer.msg" ":defaultRenderingList1.r" -na;
// End of cup.ma
