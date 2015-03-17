/*
	File: fn_vehicleColorCfg.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for vehicle colors.
*/
private["_vehicle","_ret","_path"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
if(_vehicle == "") exitWith {[]};
_ret = [];

switch (_vehicle) do
{
	case "I_Heli_Transport_02_F":
	{
		_path = "\a3\air_f_beta\Heli_Transport_02\Data\Skins\";
		_ret =
		[
			[_path + "heli_transport_02_1_ion_co.paa","civ",_path + "heli_transport_02_2_ion_co.paa",_path + "heli_transport_02_3_ion_co.paa"],
			[_path + "heli_transport_02_1_dahoman_co.paa","civ",_path + "heli_transport_02_2_dahoman_co.paa",_path + "heli_transport_02_3_dahoman_co.paa"]
		];
	};
	
	case "C_Hatchback_01_sport_F":
	{
		_path = "\a3\soft_f_gamma\Hatchback_01\data\";
		_ret =
		[
			[_path + "hatchback_01_ext_sport01_co.paa","civ"],
			[_path + "hatchback_01_ext_sport02_co.paa","civ"],
			[_path + "hatchback_01_ext_sport03_co.paa","civ"],
			[_path + "hatchback_01_ext_sport04_co.paa","civ"],
			[_path + "hatchback_01_ext_sport05_co.paa","civ"],
			["textures\police\hailon-s-gendarmerie.jpg","cop"],
			["textures\civil\hailon-s-Ken.jpg","civ"],
			["textures\civil\hailon-rock.jpg","civ"],
			["textures\civil\redbull.jpg","civ"],
			["textures\civil\gopro.jpg","civ"]
		];
	};
		
	case "C_Offroad_01_F":
	{
		_ret = 
		[
			["textures\civil\ttbleuet blanc.jpg","civ"],
			["\A3\soft_F\Offroad_01\Data\offroad_01_ext_BASE02_CO.paa", "civ"],
			["textures\civil\ttblanc.jpg","civ"],
			["textures\civil\ttbleu.jpg","civ"],
			["textures\civil\ttrouge.jpg","civ"],
			["textures\civil\tout-terrain-depaneur.jpg","civ"],
			["textures\civil\tout-terrain-gulf.jpg","civ"],
			["textures\civil\tout-terrain-pornup.jpg","civ"],
			["textures\civil\tout-terrain-ghost.jpg","civ"],
			["textures\police\tout-terrain-gendaremie.jpg","cop"],
			["textures\medic\tout-terrain-medic.jpg","med"]
			
		];
	};
	
	case "C_Hatchback_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base01_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base02_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base03_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base04_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base06_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base07_co.paa","civ"],
			["\a3\soft_f_gamma\Hatchback_01\data\hatchback_01_ext_base08_co.paa","civ"],
			["textures\police\hailon-gendarmerie.jpg","cop"],
			["textures\civil\hailon-upsilon.jpg","civ"],
			["textures\civil\hailon-321pc.jpg","civ"]
			
			
		];
	};
	
	case "C_SUV_01_F":
	{
		_ret =
		[
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_02_co.paa","cop"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_03_co.paa","civ"],
			["\a3\soft_f_gamma\SUV_01\Data\suv_01_ext_04_co.paa","civ"],
			["textures\police\suv-gendarmerie.jpg","cop"],
			["textures\civil\suv-posteup.jpg","civ"],
			["textures\civil\suv-uptv.jpg","civ"],
			["textures\civil\suv-bierre.jpg","civ"],
			["textures\medic\suv-medical.jpg","med"],
			["textures\teamrebelle\suv-tbs.jpg","reb"],
			["textures\civil\suv_ghost_rider.jpg","civ"],
			["textures\civil\flamme.jpg","civ"]
		];
	};
	
	case "C_Van_01_box_F":
	{
		_ret = 
		[
			["textures\civil\box-castel-front.jpg","civ","textures\civil\box-castel-back.jpg"],
			["textures\civil\box-total-front.jpg","civ","textures\civil\box-total-back.jpg"],
			["textures\civil\box-inter-front.jpg","civ","textures\civil\box-inter-back.jpg"],
			["textures\civil\box-porn-front.jpg","civ","textures\civil\box-porn-back.jpg"],
			["textures\medic\box-medic-front.jpg","med","textures\medic\box-medic-back.jpg"]
			
		];
	};
	
	case "C_Van_01_transport_F":
	{
		_ret = 
		[
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_co.paa","civ"],
			["\a3\soft_f_gamma\Van_01\Data\van_01_ext_red_co.paa","civ"]
		];
	};
	
	case "B_Quadbike_01_F":
	{
		_ret = 
		[
			["\A3\Soft_F\Quadbike_01\Data\Quadbike_01_co.paa","cop"],
			["\A3\Soft_F\Quadbike_01\Data\quadbike_01_opfor_co.paa","reb"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_black_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_blue_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_red_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_civ_white_co.paa","civ"],
			["\A3\Soft_F_beta\Quadbike_01\Data\quadbike_01_indp_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","civ"],
			["\a3\soft_f_gamma\Quadbike_01\data\quadbike_01_indp_hunter_co.paa","reb"]
		];
	};
	
	case "B_Heli_Light_01_F":
	{
		_ret = 
		[
			["textures\police\heli-cop.jpg","cop"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_ion_co.paa","fed"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_blue_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\heli_light_01_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_blueline_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_elliptical_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_furious_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_jeans_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_speedy_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_sunset_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_vrana_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_wave_co.paa","civ"],
			["\a3\air_f\Heli_Light_01\Data\Skins\heli_light_01_ext_digital_co.paa","reb"],
			["textures\medic\heli-medic.jpg","med"],
			["textures\teamrebelle\hemiLFG.jpg","reb"],
			["textures\teamrebelle\lfgH.jpg","reb"],
			["textures\teamrebelle\asoH.jpg","reb"]
	
		];
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		_ret = 
		[
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_co.paa","fed"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_civilian_co.paa","civ"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_indp_co.paa","donate"],
			["\a3\air_f\Heli_Light_02\Data\heli_light_02_ext_opfor_co.paa","reb"],
			["textures\medic\orca-samu.jpg","med"],
			["textures\police\orca police black.jpg","cop"],
			["textures\teamrebelle\orca-tbs.jpg","reb"]
		];
	};

	// Ifrit
	case "O_MRAP_02_F":
	{
		_ret = 
		[
			["textures\rebel\reb_ifrit_red_front1.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"],
			["textures\rebel\reb_ifrit_red_front2.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"],
			["textures\rebel\reb_ifrit_red_front3.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"],
			["textures\rebel\reb_ifrit_red_front4.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"],
			["textures\rebel\reb_ifrit_red_front5.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"],
			["textures\rebel\reb_ifrit_red_front6.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"],
			["textures\rebel\reb_ifrit_red_front7.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"],
			["textures\police\cop_ifrit_red_front.jpg","cop","textures\police\cop_ifrit_red_back.jpg"],
			["textures\teamrebelle\if-ftg-front.jpg","reb","textures\teamrebelle\if-ftg-back.jpg"],
			["textures\teamrebelle\if-collins-front.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"],
			["textures\teamrebelle\if-satanas-front.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"],
			["textures\rebel\if-camo-black-front.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"],
			["textures\teamrebelle\if-dalton-front.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"],
			["textures\teamrebelle\lfg.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"],
			["textures\teamrebelle\aso.jpg","reb","textures\rebel\reb_ifrit_red_back1.jpg"]
			
		];
	};	

	//Hunter
	case "B_MRAP_01_F":
	{
		_ret = 
		[
			["textures\rebel\reb_hunter_red_front1.jpg","reb","textures\rebel\reb_hunter_red_back.jpg"],
			["textures\rebel\reb_hunter_red_front2.jpg","reb","textures\rebel\reb_hunter_red_back.jpg"],
			["textures\rebel\reb_hunter_red_front3.jpg","reb","textures\rebel\reb_hunter_red_back.jpg"],
			["textures\rebel\reb_hunter_red_front4.jpg","reb","textures\rebel\reb_hunter_red_back.jpg"],
			["textures\rebel\reb_hunter_red_front5.jpg","reb","textures\rebel\reb_hunter_red_back.jpg"],
			["textures\rebel\reb_hunter_red_front6.jpg","reb","textures\rebel\reb_hunter_red_back.jpg"],
			["textures\rebel\reb_hunter_red_front7.jpg","reb","textures\rebel\reb_hunter_red_back.jpg"],
			["textures\police\cop_hunter_red_front.jpg","cop","textures\police\cop_hunter_red_back.jpg"],
			["textures\teamrebelle\LFG-HUNTER.jpg","reb","textures\rebel\reb_hunter_red_back.jpg"],
			["textures\teamrebelle\hunt-ftg-front.jpg","reb","textures\teamrebelle\hunt-ftg-back.jpg"],
			["textures\police\BRINKS1.jpg","cop","textures\police\BRINKS2.jpg"]
		];
	};
	
	case "I_Truck_02_covered_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_Truck_02_transport_F":
	{
		_ret = 
		[
			["\A3\Soft_F_Beta\Truck_02\data\truck_02_kab_co.paa","civ","\a3\soft_f_beta\Truck_02\data\truck_02_kuz_co.paa"],
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		_ret = 
		[
			["#(argb,8,8,3)color(0.05,0.05,0.05,1)","fed"]
		];
	};
	
	case "I_MRAP_03_F":
	{
		_ret = 
		[
			["textures\police\strider-gendarmerie.jpg","cop"]
		];
	};

	
	case "B_Truck_01_mover_F":
	{
		_ret = 
		[
			["textures\depanneur\DEPHMTT.jpg","med","textures\police\skinb.jpg","med","textures\depanneur\DEPHMTTCUL.jpg"]
		];
	};
	
	case "O_MRAP_02_hmg_F":
	{
		_ret = 
		[
			["textures\police\cop_ifrit_red_front.jpg","cop","textures\police\skinb.jpg"],
			["textures\teamrebelle\lfg.jpg","reb","textures\police\skinb.jpg"],
			["textures\rebel\if-camo-black-front.jpg","reb","textures\police\skinb.jpg"],
			["textures\teamrebelle\if-ftg-front.jpg","reb","textures\police\skinb.jpg"],
			["textures\teamrebelle\if-dalton-front.jpg","reb","textures\police\skinb.jpg"]
			
		];
	};
	
	
	case "O_Plane_CAS_02_F":
	{
		_ret = 
		[
			["textures\police\chasse-front.jpg","cop","textures\police\chasse-back.jpg"],
			["textures\police\chasse-up-front.jpg","cop","textures\police\chasse-up-back.jpg"],
			["textures\police\henry-front.jpg","cop","textures\police\henry-back.jpg"],
			["textures\police\kami-front.jpg","cop","textures\police\kami-back.jpg"],
			["textures\police\vito-front.jpg","cop","textures\police\vito-back.jpg"]
		
		];
	};
};

_ret;
