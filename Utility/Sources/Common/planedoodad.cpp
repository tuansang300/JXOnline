#include "stdafx.h"
#include "planedoodad.h"


///////////////////////////////////////////////////////////////////////////////////////
//table of the plane
///////////////////////////////////////////////////////////////////////////////////////

CString g_aStrTablePlaneName[TP_NUM+1] = 
{
	"planetype","planelightingtype","planelightedtype","planelightedradius",
	"sorttype","anglexy","anglez",
	"centerx","centery","height",
	"obstacletype",
	"dynamictype",
	"textureuse",
	"kind",
	"versort",
	"anispeed",
	"aniloop",
	"sprwidth","sprheight","sprcenterx","sprcentery",
	"obstaclenum",
	"",
};

CString g_aaStrTablePlaneValue[TP_NUM+1][MAX_VALUE_ITEM] = 
{
	{"ParallelToGround","ParallelAndCut","PerpendicularNoCut","PerpendicularToGround","",},
	{"NoLighting","CutBasedLighting","CenterBasedLighting","ParallelLighting","",},
	{"NoShadow","BottomEdgeShadow","CircularShadow","",},
	{"0.2","0.3","0.4","0.5",},

	{"BelowGround","Ground","BelowVer","Ver","AboveVer","Sky",""},
	{"00","45","135",""},
	{"00","30","60","90",""},

	{"00",""},
	{"00",""},
	{"00",""},
	{"NoBlock","NormalBlock","BlockButCanFly","BlockButCanJump","BlockCanFlyAndJump",""},
	{"StaticObject","NPC","Box","Trap","ClientOnlyNPC","ClientOnlyBox","ClientOnlyTrap","Player","NoSave",""},
	{"UseLocalMap","UseGlobalMap",""},
	{"Generic","IndoorGround","OutdoorRoad",
	"Wall","Tree","CliffWall",				//垂直的plane
	"Forest","House","Platform","River","Mountain",	//平行的obstacle
	"ComponentVerticalPart","ComponentShadow",			//组件
	//特殊存储的部分
	"Sound","Bird",
	},
	{"SortByPoint","SortByEdge","SortByTree"},
	{"20","30","40","50"},
	{"1","0"},
	{"00",""},
	{"00",""},
	{"00",""},
	{"00",""},
	{"00",""},
	{""},
};

_declspec(dllexport) int StringToPlaneTableValue(int table, const CString& strValue)
{
	return NameToID(g_aaStrTablePlaneValue[table],strValue);
}

_declspec(dllexport) CString GetTablePlaneName(int table)
{
	return g_aStrTablePlaneName[table];
}

_declspec(dllexport) LPCSTR GetTablePlaneValue(int table, int index)
{
	return g_aaStrTablePlaneValue[table][index];
}

_declspec(dllexport) CString* GetTablePlaneValue(int e)
{
	return g_aaStrTablePlaneValue[e];
}

CString g_aStrTableDoodadName[TD_NUM+1] = 
{
	"doodadtype","geometry","height","obstacletype",
	"",
};

CString g_aaStrTableDoodadValue[TD_NUM+1][MAX_VALUE_ITEM] = 
{
	{"SplitIntoVerticalPlanes","SplitIntoVerticalAndHorizontalPlanes","EvenSplitParallelPlanes","EvenSplitVerticalPlanes",""},
	{"45DegreeRotation","FreeRotation",""},
	{"400","350","300","250"},
	{"NoBlock","NormalBlock","BlockButCanFly","BlockButCanJump","BlockCanFlyAndJump",""},
	{"",},
};

CString g_aStrTableDoodadDefaultValue[TD_NUM+1] = 
{
	"SplitIntoVerticalPlanes","45DegreeRotation","300","NormalBlock",
	"",
};

_declspec(dllexport) int StringToDoodadTableValue(int table, const CString& strValue)
{
	return NameToID(g_aaStrTableDoodadValue[table],strValue);
}

_declspec(dllexport) CString GetTableDoodadName(int table)
{
	return g_aStrTableDoodadName[table];
}

_declspec(dllexport) CString* GetTableDoodadValue(int e)
{
	return g_aaStrTableDoodadValue[e];
}

_declspec(dllexport) CString GetTableDoodadDefaultValue(int e)
{
	return g_aStrTableDoodadDefaultValue[e];
}


////////////--add--start--///////////////////////////////
//yujiang add 2003 2 15
//功能：将spr的信息添加到模板文件中,并且将模板转换成二进制
//打包可以使用winzip
/*
*/
