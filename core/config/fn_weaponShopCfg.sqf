#include <macro.h>
/*
	File: fn_weaponShopCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration file for the weapon shops.
	
	Return:
	String: Close the menu
	Array: 
	[Shop Name,
	[ //Array of items to add to the store
		[classname,Custom Name (set nil for default),price]
	]]
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0}; //Bad shop type passed.

switch(_shop) do
{
	case "cop_basic":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			default
			{
				["Altis Cop Shop",
					[
						["arifle_sdar_F","Taser Auto",0],
						["20Rnd_556x45_UW_mag","Taser Auto Chargeur",0],
						["hgun_P07_snds_F","Taser",0],
						["hgun_P07_F",nil,0],
						["16Rnd_9x21_Mag",nil,0],
						["ItemRadio","Téléphone",0],
						["Binocular",nil,0],
						["ItemGPS",nil,0],
						["ToolKit",nil,0],
						["Medikit",nil,0],
						["NVGoggles",nil,0]
					]
				];
			};
		};
	};
	
	case "med_basic":
	{
		switch (true) do 
		{
			case (playerSide != independent): {"You are not an EMS Medic"};
			default {
				["Hospital EMS Shop",
					[
						["ItemRadio","Téléphone",500],
						["ItemGPS",nil,123],
						["Binocular",nil,150],
						["ToolKit",nil,500],
						["FirstAidKit",nil,150],
						["Medikit",nil,500],
						["NVGoggles",nil,1000],
						["B_FieldPack_ocamo",nil,3000]

					]
				];
			};
		};
	};

	case "cop_patrol":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'ètes pas Policier !"};
			case (__GETC__(life_coplevel) < 2 ): {"Accessible à la prochaine réunion. Peut-etre."};
			default
			{
				["Militaire du Rang",
					[
						["SMG_01_F",nil,10000],
						["30Rnd_45ACP_Mag_SMG_01",nil,130],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,130],
						["arifle_Mk20_F",nil,20000],
						["30Rnd_556x45_Stanag",nil,130],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,130],
						["arifle_Katiba_F",nil,30000],
						["arifle_Katiba_C_F",nil,30000],
						["30Rnd_65x39_caseless_green",nil,130],
						["30Rnd_65x39_caseless_green_mag_Tracer",nil,130]
					]
				];
			};
		};
	};

	case "Cop_sousofficierssuperieur":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'ètes pas Policier !"};
			case (__GETC__(life_coplevel) < 6 ): {"Accessible à la prochaine réunion. Peut-etre."};
			default
			{
				["Sous-Officier Superieur",
					[
						["arifle_MX_Black_F",nil,35000],
						["arifle_MXC_Black_F",nil,35000],
						["arifle_MXM_Black_F",nil,35000],
						["30Rnd_65x39_caseless_mag",nil,130],
						["arifle_MX_SW_Black_F",nil,35000],
						["100Rnd_65x39_caseless_mag_Tracer",nil,130],
						["HandGrenade_Stone","Grenade Flash",5000]
					]
				];
			};
		};
	};

	case "Cop_officiersubalterne":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'ètes pas Policier !"};
			case (__GETC__(life_coplevel) < 12 ): {"Accessible à la prochaine réunion. Peut-etre."};
			default
			{
				["Officier Subalterne",
					[
						["srifle_DMR_01_F",nil,45000],
						["10Rnd_762x51_Mag",nil,130],
						["srifle_EBR_F",nil,55000],
						["20Rnd_762x51_Mag",nil,130],
						["LMG_Mk200_F",nil,60000],
						["200Rnd_65x39_cased_Box",nil,130],
						["200Rnd_65x39_cased_Box_Tracer",nil,130],
						["LMG_Zafir_F",nil,70000],
						["150Rnd_762x51_Box",nil,130],
						["150Rnd_762x51_Box_Tracer",nil,130]
					]
				];
			};
		};
	};
	
	case "Cop_officiersupérieur":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'ètes pas Policier !"};
			case (__GETC__(life_coplevel) < 17 ): {"Accessible à la prochaine réunion. Peut-etre."};
			default
			{
				["Officier Supérieur",
					[
						["srifle_LRR_F",nil,90000],
						["srifle_LRR_camo_F",nil,95000],
						["7Rnd_408_Mag",nil,130],
						["srifle_GM6_F",nil,100000],
						["srifle_GM6_camo_F",nil,100000],
						["5Rnd_127x108_Mag",nil,100],
						["5Rnd_127x108_APDS_Mag",nil,200]
					]
				];
			};
		};
	};
	
	case "Cop_officiergeneraux":
	{
		switch(true) do
		{
			case (playerSide != west): {"Vous n'ètes pas Policier !"};
			case (__GETC__(life_coplevel) < 21 ): {"Accessible à la prochaine réunion. Peut-etre."};
			default
			{
				["Officier Généraux",
					[
						["B_UavTerminal",nil,500],
						["rien",nil,0]
					]
				];
			};
		};
	};
	
	case "cop_accessoire":
	{
		switch(true) do
		{
			case (playerSide != west): {"You are not a cop!"};
			case (__GETC__(life_coplevel) < 1): {"You are not at a patrol officer rank!"};
			default
			{
				["Accessoire",
					[
						["Rangefinder",nil,500],
						["SmokeShell",nil,500],
						["SmokeShellRed",nil,500],
						["SmokeShellBlue",nil,500],
						["SmokeShellPurple",nil,500],
						["optic_Yorris",nil,500],
						["optic_MRD",nil,500],
						["muzzle_snds_acp",nil,500],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_L",nil,500],
						["muzzle_snds_M",nil,500],
						["muzzle_snds_B",nil,500],
						["muzzle_snds_H_MG",nil,500],
						["optic_Aco_smg",nil,500],
						["optic_Holosight_smg",nil,500],
						["optic_Aco",nil,500],
						["optic_Holosight",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_NVS",nil,500],
						["optic_DMS",nil,500],
						["optic_LRPS",nil,500],
						["optic_SOS",nil,500],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500]
					]
				];
			};
		};
	};
	
	case "reb_basic":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas rebelle!"};
			default
			{
				["Altis rebelle Shop",
					[
						["ItemRadio","Téléphone",500],
						["Binocular",nil,150],
						["ItemGPS",nil,100],
						["ToolKit",nil,500],
						["FirstAidKit",nil,200],
						["Medikit",nil,500],						
						["NVGoggles",nil,2000]
					]
				];
			};
		};
	};
	
	case "reb_accessoire":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"Vous n'etes pas rebelle!"};
			default
			{
				["Accessoire",
					[
						["Rangefinder",nil,500],
						["SmokeShell",nil,500],
						["SmokeShellRed",nil,500],
						["SmokeShellBlue",nil,500],
						["SmokeShellPurple",nil,500],
						["optic_Yorris",nil,500],
						["optic_MRD",nil,500],
						["muzzle_snds_acp",nil,500],
						["muzzle_snds_H",nil,500],
						["muzzle_snds_L",nil,500],
						["muzzle_snds_M",nil,500],
						["muzzle_snds_B",nil,500],
						["muzzle_snds_H_MG",nil,500],
						["optic_Aco_smg",nil,500],
						["optic_Holosight_smg",nil,500],
						["optic_Aco",nil,500],
						["optic_Holosight",nil,500],
						["optic_Arco",nil,500],
						["optic_Hamr",nil,500],
						["optic_MRCO",nil,500],
						["optic_NVS",nil,500],
						["optic_DMS",nil,500],
						["optic_LRPS",nil,500],
						["optic_SOS",nil,500],
						["acc_flashlight",nil,500],
						["acc_pointer_IR",nil,500]
					]
				];
			};
		};
	};
	
	case "rebel":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_rebel): {"You don't have a Rebel training license!"};
			default
			{
				["Equipement Rebel",
					[

						["arifle_Mk20_F",nil,45000],
						["30Rnd_556x45_Stanag",nil,350],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
						["arifle_Katiba_C_F",nil,50000],
						["arifle_Katiba_F",nil,55000],
                        ["30Rnd_65x39_caseless_green",nil,300],
				        ["30Rnd_65x39_caseless_green_mag_Tracer",nil,275],
						["arifle_MXC_F",nil,70000],
						["arifle_MX_F",nil,70000],
						["arifle_MX_SW_F",nil,95000],
						["100Rnd_65x39_caseless_mag",nil,600],
						["100Rnd_65x39_caseless_mag_Tracer",nil,600],
						["arifle_MXM_F",nil,75000],
					    ["30Rnd_65x39_caseless_mag",nil,300],
                        ["30Rnd_65x39_caseless_mag_Tracer",nil,300]
					]
				];
			};
		};
	};
	
	case "delinquant":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_delinquant): {"You don't have a Rebel training license!"};
			default
			{
				["Equipement Delinquant",
					[
						["srifle_DMR_01_F",nil,100000],
						["10Rnd_762x51_Mag",nil,300],
						["srifle_EBR_F",nil,108000],
						["20Rnd_762x51_Mag",nil,300],
						["LMG_Zafir_F",nil,125000],
						["150Rnd_762x51_Box",nil,360],
						["150Rnd_762x51_Box_Tracer",nil,360],
						["srifle_LRR_F",nil,350000],
						["srifle_LRR_camo_F",nil,360000],
						["7Rnd_408_Mag",nil,500]
					]
				];
			};
		};
	};
	
	case "terroriste":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_terorriste): {"You don't have a Rebel training license!"};
			default
			{
				["Equipement Terroriste",
					[
						["srifle_GM6_F",nil,600000],
						["srifle_GM6_camo_F",nil,600000],
						["5Rnd_127x108_Mag",nil,800],
						["5Rnd_127x108_APDS_Mag",nil,8000]
					]
				];
			};
		};
	};
	
	case "gun":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			case (!license_civ_gun): {"You don't have a Firearms license!"};
			default
			{
				["Billy Joe's Firearms",
					[
						["hgun_Rook40_F",nil,25000],
						["16Rnd_9x21_Mag",nil,50],
						["30Rnd_9x21_Mag",nil,150],
						["hgun_ACPC2_F",nil,25000],
						["9Rnd_45ACP_Mag",nil,50],
						["hgun_Pistol_heavy_02_F",nil,25000],
						["6Rnd_45ACP_Cylinder",nil,100],
						["SMG_01_F",nil,45000],
						["30Rnd_45ACP_Mag_SMG_01",nil,350],
						["30Rnd_45ACP_Mag_SMG_01_tracer_green",nil,350],
						["SMG_02_F",nil,45000],
						["30Rnd_9x21_Mag",nil,350],
						["hgun_PDW2000_F",nil,45000],
						["30Rnd_9x21_Mag",nil,350],
						["16Rnd_9x21_Mag",nil,350],
						["arifle_SDAR_F",nil,55000],
						["20Rnd_556x45_UW_mag",nil,350],
						["30Rnd_556x45_Stanag",nil,350],
						["20Rnd_556x45_UW_mag",nil,350],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,350]
					]
				];
			};
		};
	};
	
	case "gang":
	{
		switch(true) do
		{
			case (playerSide != civilian): {"You are not a civilian!"};
			default
			{
				["Hideout Armament",
					[
						["ItemRadio","Téléphone",500],
                        ["arifle_Mk20_F",nil,45000],
						["30Rnd_556x45_Stanag",nil,350],
						["30Rnd_556x45_Stanag_Tracer_Green",nil,350],
						["arifle_Katiba_C_F",nil,50000],
						["arifle_Katiba_F",nil,55000],
                        ["30Rnd_65x39_caseless_green",nil,300],
						["30Rnd_65x39_caseless_green_tracer",nil,300],
						["arifle_MXC_F",nil,70000],
                        ["30Rnd_65x39_caseless_green",nil,275],
					    ["30Rnd_65x39_caseless_green_mag_Tracer",nil,275]
					]
				];
			};
		};
	};
	
	case "genstore":
	{
		["Altis General Store",
			[
				["ItemRadio","Téléphone",500],
				["Binocular",nil,150],
				["ItemGPS",nil,100],
				["ToolKit",nil,500],
				["FirstAidKit",nil,200],
				["NVGoggles",nil,2000]
			]
		];
	};
};
