#include <macro.h>
/*
	File: fn_clothing_med.sqf
	Author original file fn_clothing_cop.sqf: Bryan "Tonic" Boardwine
        Modifi by Warsheep
	
	Description:
	Master config file for med clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Vetement"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret = 
		[
			["U_Rangemaster","Uniforme Médecin",25]
		];
	};
	
	//Hats
	case 1:
	{
		_ret = 
		[
			["G_Lowprofile",nil,30]
		];
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Combat",nil,55]
		];
	};
	
	//Vest
	case 3:
	{
		_ret  = 
		[
			["V_PlateCarrier2_rgr",nil,1500],
			["V_RebreatherB",nil,0],
			["V_BandollierB_rgr",nil,0],
			["V_PlateCarrier1_blk",nil,0],
			["V_Chestrig_blk",nil,0],
			["V_TacVest_blk_POLICE",nil,0],
			["V_TacVestIR_blk",nil,0],
			["V_TacVestCamo_khk",nil,0],
			["V_HarnessO_brn",nil,0],
			["V_HarnessOGL_brn",nil,0],
			["_HarnessO_gry",nil,0],
			["V_HarnessOSpec_brn",nil,0],
			["V_PlateCarrierIA1_dgtl",nil,0],
			["V_PlateCarrierIA2_dgtl",nil,0],
			["V_PlateCarrierIAGL_dgtl",nil,0],
			["V_PlateCarrier_Kerry",nil,0],
			["V_PlateCarrierL_CTRG",nil,0],
			["V_PlateCarrierH_CTRG",nil,0],
			["V_I_G_resistanceLeader_F",nil,0]
		];
	};
	
	//Backpacks
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_FieldPack_ocamo",nil,3000],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;