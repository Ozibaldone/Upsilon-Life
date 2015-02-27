#include <macro.h>
/*
	File:
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master configuration list / array for buyable vehicles & prices and their shop.
*/
private["_shop","_return"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {[]};
_return = [];
switch (_shop) do
{
	case "kart_shop":
	{
		_return = [
			["C_Kart_01_Blu_F",15000],
			["C_Kart_01_Fuel_F",15000],
			["C_Kart_01_Red_F",15000],
			["C_Kart_01_Vrana_F",15000]
		];
	};
	case "med_shop":
	{
		_return = [
			["C_Offroad_01_F",13500],
			["C_Van_01_box_F",20000]
		];
	};
	
	case "med_air_hs": {
		_return = [
			["B_Heli_Light_01_F",50000],
			["O_Heli_Light_02_unarmed_F",75000]
		];
	};
	
	case "civ_car":
	{
		_return = 
		[
			["B_Quadbike_01_F",2000],
			["C_Hatchback_01_F",7500],
			["C_Offroad_01_F",11500],
			["C_SUV_01_F",19000],
			["C_Van_01_transport_F",30000]
		];
	};
	
	case "civ_truck":
	{
		_return =
		[
			["C_Van_01_box_F",60000],
			["I_Truck_02_transport_F",75000],
			["I_Truck_02_covered_F",100000],
			["B_Truck_01_transport_F",275000],
			["B_Truck_01_box_F",350000],
			["O_Truck_03_covered_F",600000],
			["O_Truck_03_transport_F",525000]
		];	
	};
	
	case "reb_car":
	{
		if(license_civ_delinquant) then
		{
			_return pushBack
			["O_G_Offroad_01_F",30000];
			_return pushBack
			["O_G_Offroad_01_armed_F",600000];
			_return pushBack
			["B_MRAP_01_F",400000];
			_return pushBack
			["O_MRAP_02_F",400000];
			_return pushBack
			["B_Heli_Light_01_F",400000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",450000];
		
		};
		
		if(license_civ_rebel) then
		{
			_return pushBack
			["O_G_Offroad_01_F",30000];
			_return pushBack
			["O_G_Offroad_01_armed_F",600000];
			_return pushBack
			["B_Heli_Light_01_F",400000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",450000];
		};
		
		if(license_civ_terroriste) then
		{		
			_return pushBack
			["O_G_Offroad_01_F",30000];
			_return pushBack
			["O_G_Offroad_01_armed_F",600000];
			_return pushBack
			["B_MRAP_01_F",400000];
			_return pushBack
			["B_MRAP_01_hmg_F",1000000];
			_return pushBack
			["O_MRAP_02_F",400000];
			_return pushBack
			["O_MRAP_02_hmg_F",1000000];
			_return pushBack
			["B_Heli_Light_01_F",400000];
//			_return pushBack
//			["B_Heli_Light_01_armed_F",900000];
//			_return pushBack
//			["O_Heli_Light_02_F",1200000];
			_return pushBack
			["B_Heli_Transport_03_unarmed_F",500000];
			_return pushBack
			["B_Heli_Transport_03_F",750000]
		};
	};
	
	case "cop_car":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["C_Hatchback_01_F",10000];
			_return pushBack
			["C_Offroad_01_F",10000];
			_return pushBack
			["C_SUV_01_F",10000];	
		};
		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack
			["C_Hatchback_01_sport_F",26000];
			_return pushBack
			["B_MRAP_01_F",35000];
		};
		
		if(__GETC__(life_coplevel) > 12) then
		{
			_return pushBack
			["O_MRAP_02_F",35000];
			_return pushBack
			["I_MRAP_03_F",45000];	
			_return pushBack
			["B_MRAP_01_hmg_F",175000];	
		};
		
		if(__GETC__(life_coplevel) > 17) then
		{
			_return pushBack
			["O_MRAP_02_hmg_F",175000];
			_return pushBack
			["I_MRAP_03_hmg_F",190000];
		};
		
		if(__GETC__(life_coplevel) > 21) then
		{
			_return pushBack
			["B_UGV_01_rcws_F",100];
			_return pushBack
			["B_UGV_01_F",100];
			_return pushBack
			["B_APC_Tracked_01_CRV_F",100];	
		};
	};
	
	case "civ_air":
	{
		_return =
		[
			["B_Heli_Light_01_F",400000],
			["O_Heli_Light_02_unarmed_F",700000]
		];
	};
	
	case "cop_air":
	{
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack
			["B_Heli_Light_01_F",100000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",125000];
			_return pushBack
			["I_Heli_Transport_02_F",200000];
		};
	
		if(__GETC__(life_coplevel) > 12) then
		{
//			_return pushBack
//			["B_Heli_Light_01_armed_F",200000];
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",125000];
		};
		
		if(__GETC__(life_coplevel) > 17) then
		{
			_return pushBack
			["B_Heli_Transport_03_unarmed_F",200000];
			_return pushBack
			["O_Heli_Light_02_F",250000];
		};
		
		if(__GETC__(life_coplevel) > 21) then
		{
			_return pushBack
			["B_Heli_Transport_03_F",10];
			_return pushBack
			["I_Plane_Fighter_03_AA_F",10];
			_return pushBack
			["I_Plane_Fighter_03_CAS_F",10];
			_return pushBack
			["B_Plane_CAS_01_F",10];
			_return pushBack
			["O_Plane_CAS_02_F",10];
			_return pushBack
			["B_UAV_02_CAS_F",10];
			_return pushBack
			["B_UAV_02_F",10];
			_return pushBack
			["I_Heli_light_03_F",10];
		};
	};
	
	case "cop_airhq":
	{
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack
			["B_Heli_Light_01_F",100000];
			_return pushBack
			["O_Heli_Light_02_unarmed_F",125000];
			_return pushBack
			["I_Heli_Transport_02_F",200000];
		};
	
		if(__GETC__(life_coplevel) > 12) then
		{
//			_return pushBack
//			["B_Heli_Light_01_armed_F",200000];
			_return pushBack
			["B_Heli_Transport_01_F",200000];
			_return pushBack
			["I_Heli_light_03_unarmed_F",125000];
		};
		
		if(__GETC__(life_coplevel) > 17) then
		{
			_return pushBack
			["B_Heli_Transport_03_unarmed_F",200000];
			_return pushBack
			["O_Heli_Light_02_F",250000];
		};
		
		if(__GETC__(life_coplevel) > 21) then
		{
			_return pushBack
			["B_Heli_Transport_03_F",10];
			_return pushBack
			["I_Plane_Fighter_03_AA_F",10];
			_return pushBack
			["I_Plane_Fighter_03_CAS_F",10];
			_return pushBack
			["B_Plane_CAS_01_F",10];
			_return pushBack
			["O_Plane_CAS_02_F",10];
			_return pushBack
			["B_UAV_02_CAS_F",10];
			_return pushBack
			["B_UAV_02_F",10];
			_return pushBack
			["I_Heli_light_03_F",10];
		};
	};
	
	case "civ_ship":
	{
		_return =
		[
			["C_Rubberboat",5000],
			["C_Boat_Civil_01_F",22000]
		];
	};

	case "cop_ship":
	{
		if(__GETC__(life_coplevel) > 2) then
		{
			_return pushBack
			["C_Rubberboat",200000];
		};
		
		if(__GETC__(life_coplevel) > 6) then
		{
			_return pushBack
			["B_SDV_01_F",200000];
			_return pushBack
			["C_Boat_Civil_01_F",200000];
		};
		
		if(__GETC__(life_coplevel) > 17) then
		{
			_return pushBack
			["B_Boat_Armed_01_minigun_F",200000];
		};
	};
};

_return;
