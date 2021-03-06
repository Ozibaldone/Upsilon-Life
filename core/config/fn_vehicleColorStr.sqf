/*
	File: fn_vehicleColorStr.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration for color strings depending on their index location.
*/
private["_vehicle","_color","_index"];
_vehicle = [_this,0,"",[""]] call BIS_fnc_param;
_index = [_this,1,-1,[0]] call BIS_fnc_param;
_color = "";

switch (_vehicle) do
{
	case "C_Offroad_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Ford-bleu&blanc"};
			case 1: {_color = "Yellow"};
			case 2: {_color = "Ford-blanc";};
			case 3: {_color = "Ford-Bleu"};
			case 4: {_color = "Ford-Rouge"};
			case 5: {_color = "TT Depanneur"};
			case 6: {_color = "TT-Gulf"};
			case 7: {_color = "TT-Pornup"};
			case 8: {_color = "TT-ghost"};
			case 9: {_color = "TT-gendarmerie"};
			case 10: {_color = "TT-EMS"};
		};
	};
	
	case "C_Hatchback_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Beige"};
			case 1: {_color = "Green"};
			case 2: {_color = "Blue"};
			case 3: {_color = "Dark Blue"};
			case 4: {_color = "Yellow"};
			case 5: {_color = "White"};
			case 6: {_color = "Grey"};
			case 7: {_color = "H-Gendarmerie"};
			case 8: {_color = "H-Upsilon"};
			case 9: {_color = "H-321pc"};
		};
	};
	
	case "C_Hatchback_01_sport_F":
	{
		switch(_index) do
		{
			case 0: {_color = "Red"};
			case 1: {_color = "Dark Blue"};
			case 2: {_color = "Orange"};
			case 3: {_color = "Black / White"};
			case 4: {_color = "Tan"};
			case 5: {_color = "HS-Gendarmerie"};
			case 6: {_color = "HS-ken"};
			case 7: {_color = "HS-Rock"};
			case 8: {_color = "HS-redbull"};
			case 9: {_color = "HS-GoPro"};
		};
	};
	
	case "C_SUV_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Dark Red";};
			case 1: {_color = "Black"};
			case 2: {_color = "Silver"};
			case 3: {_color = "Orange"};
			case 4: {_color = "SUV-Cop"};
			case 5: {_color = "SUV-PTT"};
			case 6: {_color = "SUV-upsilonTv"};
			case 7: {_color = "SUV-Bierre"};
			case 8: {_color = "SUV-EMS"};
			case 9: {_color = "SUV-TBS"};
			case 10: {_color = "SUV-Ghost-Rider"};
			case 11: {_color = "SUV-Flamme"};
		};
	};
	
	case "C_Van_01_box_F":
	{
		switch (_index) do
		{
			case 0: {_color = "CASTEL"};
			case 1: {_color = "TotalUp"};
			case 2: {_color = "InterUp"};
			case 3: {_color = "PornUp"};
			case 3: {_color = "boxe-EMS"};
		};
	};
	
	case "C_Van_01_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "C_Van_01_fuel_F":
	{
		switch (_index) do
		{
			case 0: {_color = "White"};
			case 1: {_color = "Red"};
		};
	};
	
	case "B_Quadbike_01_F" :
	{
		switch (_index) do
		{
			case 0: {_color = "Brown"};
			case 1: {_color = "Digi Desert"};
			case 2: {_color = "Black"};
			case 3: {_color = "Blue"};
			case 4: {_color = "Red"};
			case 5: {_color = "White"};
			case 6: {_color = "Digi Green"};
			case 7: {_color = "Hunter Camo"};
			case 8: {_color = "Rebel Camo"};
		};
	};
	
	case "B_Heli_Light_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "police"};
			case 1: {_color = "Black"};
			case 2: {_color = "Civ Blue"};
			case 3: {_color = "Civ Red"};
			case 4: {_color = "Digi Green"};
			case 5: {_color = "Blueline"};
			case 6: {_color = "Elliptical"};
			case 7: {_color = "Furious"};
			case 8: {_color = "Jeans Blue"};
			case 9: {_color = "Speedy Redline"};
			case 10: {_color = "Sunset"};
			case 11: {_color = "Vrana"};
			case 12: {_color = "Waves Blue"};
			case 13: {_color = "Rebel Digital"};
			case 14: {_color = "EMS"};
			case 15: {_color = "TEAM-LFG"};
			case 16: {_color = "TEAM-FTG"};
			case 17: {_color = "TEAM-ASO"};
		};
	};
	
	case "O_Heli_Light_02_unarmed_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
			case 1: {_color = "White / Blue"};
			case 2: {_color = "Digi Green"};
			case 3: {_color = "Desert Digi"};
			case 4: {_color = "EMS ORCA"};
			case 5: {_color = "ORCA camo-black"};
			case 6: {_color = "TEAM TBS"};
		};
	};

	case "O_MRAP_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "LIBRE-Root"};
			case 1: {_color = "LIBRE-Expendable"};
			case 2: {_color = "LIBRE-Xzytal"};
			case 3: {_color = "LIBRE-Gorille"};
			case 4: {_color = "LIBRE-Tigers"};
			case 5: {_color = "LIBRE-Troll"};
			case 6: {_color = "LIBRE-Rat"};
			case 7: {_color = "LIBRE-Cop"};
			case 8: {_color = "LIBRE-FTG"};
			case 9: {_color = "LIBRE-COLLINS"};
			case 10: {_color = "TEAM-Satanas"};
			case 11: {_color = "LIBRE-CamoBlack"};
			case 12: {_color = "TEAM-Dalton"};
			case 13: {_color = "TEAM-LFG"};
			case 14: {_color = "TEAM-ASO"};
		};
	};	

	case "B_MRAP_01_F":
	{
		switch (_index) do
		{
			case 0: {_color = "LIBRE-Root"};
			case 1: {_color = "LIBRE-Expendable"};
			case 2: {_color = "LIBRE-Xzytal"};
			case 3: {_color = "LIBRE-Gorille"};
			case 4: {_color = "LIBRE-Tigers"};
			case 5: {_color = "LIBRE-Troll"};
			case 6: {_color = "LIBRE-Rat"};
			case 7: {_color = "LIBRE-Cop"};
			case 8: {_color = "TEAM LFG"};
			case 9: {_color = "TEAM-FTG"};
			case 9: {_color = "brinks Upsilon"};
		};
	};
	
	case "I_Truck_02_covered_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "I_Truck_02_transport_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Orange"};
			case 1: {_color = "Black"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "O_Heli_Attack_02_black_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "I_Heli_Transport_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Ion"};
			case 1: {_color = "Dahoman"};
		};
	};
	
	case "B_APC_Wheeled_01_cannon_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Black"};
		};
	};
	
	case "I_MRAP_03_F":
	{
		switch (_index) do
		{
			case 0: {_color = "St-gendarmerie"};
		};
	};
	
	case "O_Plane_CAS_02_F":
	{
		switch (_index) do
		{
			case 0: {_color = "AV-gendarmerie"};
			case 1: {_color = "AV-upsilon"};
			case 2: {_color = "AV-Henry"};
			case 3: {_color = "AV-Kami"};
			case 4: {_color = "AV-Vito"};
		};
	};
	
	case "O_MRAP_02_hmg_F":
	{
		switch (_index) do
		{
			case 0: {_color = "gendarmerie"};
			case 1: {_color = "TEAM-LFG"};
			case 2: {_color = "LIBRE CAMO BLACK"};
			case 3: {_color = "TEAM-FTG"};
			case 4: {_color = "TEAM-Dalton"};

		};
	};
	
	case "B_Truck_01_mover_F":
	{
		switch (_index) do
		{
			case 0: {_color = "Depanneur"};

		};
	};
};

_color;
