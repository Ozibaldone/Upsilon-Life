#include <macro.h>
/*
	File: fn_seizeCfg.sqf
	Author: Tabakhase
	Slightly adapted by Daniel Larusso (Keep Calm and Roleplay)
	
	Description:
	Master configuration file for seize player everything.
	
	Parameters:
	0 = All
	1 = Weapons
	2 = Uniform
	3 = Backpack
	4 = Vest
	5 = Items
	
	ToDo:
	Adding list 0,2,3,4&5
*/
private["_mode"];
_mode = [_this,0,objNull,[""]] call BIS_fnc_param;

switch(_mode) do
{
	case 1: 
	{
		[
			// Weapons
			"srifle_EBR_F",
			"srifle_GM6_F",
			"srifle_LRR_F",
			"LMG_Mk200_F",
			"hgun_P07_F",
			"hgun_Rook40_F",
			"hgun_ACPC2_F",
			"hgun_Pistol_heavy_01_F",
			"hgun_Pistol_heavy_01_snds_F",
			"hgun_Pistol_heavy_02_F",
			"hgun_PDW2000_F",
			"hgun_Pistol_Signal_F",
			"arifle_Katiba_F",
			"arifle_Katiba_C_F",
			"arifle_Katiba_GL_F",
			"arifle_MXC_F",
			"arifle_MXC_Black_F",
			"arifle_MX_F",
			"arifle_MX_Black_F",
			"arifle_MX_GL_F",
			"arifle_MX_GL_Black_F",
			"arifle_MX_SW_F",
			"arifle_MX_SW_Black_F",
			"arifle_MXM_F",
			"arifle_MXM_Black_F",
			"arifle_SDAR_F",
			"arifle_TRG21_F",
			"arifle_TRG20_F",
			"arifle_TRG21_GL_F",
			"arifle_Mk20_F",
			"arifle_Mk20_plain_F",
			"arifle_Mk20C_F",
			"arifle_Mk20C_plain_F",
			"arifle_Mk20_GL_F",
			"arifle_Mk20_GL_plain_F",
			"LMG_Zafir_F",
			"SMG_01_F",
			"SMG_02_F",
			"srifle_DMR_01_F",
			
			// Mags
			"30Rnd_556x45_Stanag",
			"20Rnd_556x45_UW_mag",
			"30Rnd_65x39_caseless_mag",
			"30Rnd_65x39_caseless_green",
			"20Rnd_762x51_Mag",
			"7Rnd_408_Mag",
			"5Rnd_127x108_Mag",
			"100Rnd_65x39_caseless_mag",
			"200Rnd_65x39_cased_Box",
			"30Rnd_9x21_Mag",
			"16Rnd_9x21_Mag",
			"RPG32_F",
			"RPG32_HE_F",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_Smoke_Grenade_shell",
			"1Rnd_SmokeGreen_Grenade_shell",
			"3Rnd_SmokeGreen_Grenade_shell",
			"HandGrenade_Stone",
			"SmokeShell",
			"SmokeShellGreen",
			"200Rnd_65x39_Belt",
			"ATMine_Range_Mag",
			"APERSMine_Range_Mag",
			"APERSBoundingMine_Range_Mag",
			"SLAMDirectionalMine_Wire_Mag",
			"APERSTripMine_Wire_Mag",
			"ClaymoreDirectionalMine_Remote_Mag",
			"SatchelCharge_Remote_Mag",
			"DemoCharge_Remote_Mag",
			"30Rnd_45ACP_Mag_SMG_01",
			"9Rnd_45ACP_Mag",
			"150Rnd_762x51_Box",
			"11Rnd_45ACP_Mag",
			"6Rnd_45ACP_Cylinder",
			"10Rnd_762x51_Mag",
			"5Rnd_127x108_APDS_Mag",
			"6Rnd_GreenSignal_F",
			"6Rnd_RedSignal_F"
		];
	};
	
	case 2: 
	{
		[
			//Vetement
			"U_IG_Guerilla1_1",
			"U_I_G_resistanceLeader_F",
			"U_IG_Guerilla3_1",
			"U_IG_Guerilla3_2",
			"U_IG_leader",
			"U_O_CombatUniform_oucamo",
			"U_O_SpecopsUniform_ocamo",
			"U_O_OfficerUniform_ocamo",
			"U_I_CombatUniform",
			"U_O_CombatUniform_oucamo",
			"U_I_OfficerUniform",
			"U_I_GhillieSuit",
			
			//Chapeau
			"H_Booniehat_dgtl",
			"H_Cap_brn_SPECOPS",
			"H_Cap_blk_Raven",
			"H_HelmetO_ocamo",
			"H_MilCap_ocamo",
			"H_HelmetO_oucamo",
			"H_Bandanna_camo",
			"H_Shemag_khk",
			"H_Shemag_tan",
			"H_Shemag_olive",
			"H_Shemag_olive_hs",
			"H_ShemagOpen_khk",
			"H_ShemagOpen_tan",
			"H_Watchcap_sgg",
			"H_Hat_camo",

			//Lunette
			"G_Combat",
			"G_Bandanna_aviator",
			"G_Bandanna_beast",
			"G_Bandanna_blkt",
			"G_Bandanna_oli",
			"G_Bandanna_shades",
			"G_Bandanna_sport"
		];
	};
	
	case 4: 
	{	
		[
			//Vest
			"V_Chestrig_khk",
			"V_Chestrig_rgr",
			"V_Chestrig_blk",
			"V_Chestrig_oli",
			"V_TacVest_khk",
			"V_TacVest_brn",
			"V_TacVest_oli",
			"V_HarnessO_brn",
			"V_HarnessO_gry",
			"V_PlateCarrierIA1_dgtl",
			"V_PlateCarrierIA2_dgtl",
			"V_HarnessOGL_gry"
		];
	};
};