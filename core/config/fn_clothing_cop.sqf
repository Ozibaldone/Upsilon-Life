#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Police Department Shop"];

_ret = [];
switch (_filter) do
{
	//Uniforme
	case 0:
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret =
			[
				["U_Rangemaster","Militaire du rang",0],
				["U_B_CTRG_1","Sous-Officier Superieur",0],
				["U_B_CTRG_2","Officier Subalterne",0],
				["U_B_CombatUniform_mcam_worn","Officier Superieur",0],
				["U_B_CombatUniform_mcam","Générale",0],				
				["U_B_GhillieSuit",nil,0],
				["U_B_Wetsuit",nil,0],
				["U_B_PilotCoveralls",nil,0]
			];
		};
	};
	
	//Chapeaux
	case 1:
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret = 
			[
				["H_Booniehat_indp",nil,0],
				["H_HelmetB_camo",nil,0],
				["H_HelmetB_light",nil,0],
				["H_HelmetB_black",nil,0],
				["H_CrewHelmetHeli_B",nil,0],
				["H_HelmetLeaderO_ocamo",nil,0],
				["H_HelmetB_light_black",nil,0],
				["H_HelmetSpecO_blk",nil,0],
				["H_Beret_red",nil,0],
				["H_Beret_blk_POLICE",nil,0],
				["H_Beret_Colonel",nil,0]
			];
		};
	};
	
	//Lunettes
	case 2:
	{
		_ret = 
		[
			["G_Balaclava_blk",nil,25],
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
	
	//Ceinture
	case 3:
	{
		_ret pushBack ["V_Rangemaster_belt",nil,800];
		if(__GETC__(life_coplevel) > 2) then
		{
			_ret = 
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
	};
	
	//Sac à Dos
	case 4:
	{
		_ret =
		[
			["B_Kitbag_cbr",nil,800],
			["B_FieldPack_cbr",nil,500],
			["B_AssaultPack_cbr",nil,700],
			["B_Bergen_sgg",nil,2500],
			["B_Carryall_cbr",nil,3500]
		];
	};
};

_ret;