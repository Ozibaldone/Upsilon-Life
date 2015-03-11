#include <macro.h>
/*
	Author: TheTotenkopf
	
	Description: Löscht alles für den Respawn und setzt alles neu
*/

// Setzt den Medic nach Respawn zurück
removeUniform player;
removeHeadgear player;
removeBackpack player;
removeAllItems player;
removeVest player;
removeAllWeapons player;
removeAllAssignedItems player;
{player removeMagazine _x;} foreach (magazines player);
RemoveGoggles player;

//Medic Gear + Setup
if((__GETC__(life_medicLevel)) == 1) exitWith {
	player forceAddUniform "U_O_OfficerUniform_ocamo";
	player setObjectTextureGlobal [0,"textures\vetements\medic\medic_uniform.jpg"];
	player addBackpackGlobal "B_Kitbag_sgg";
	hint "Vous prenez votre service.";
	[] call life_fnc_medicLoadout;
};

//ADAC Gear + Setup
if((__GETC__(life_medicLevel)) == 2) exitWith {
	player forceAddUniform "U_B_HeliPilotCoveralls";
	player setObjectTextureGlobal [0,"textures\vetements\medic\adac_uniform.jpg"];
	player addHeadgear "H_Cap_marshal";
	player addBackpackGlobal "B_Kitbag_cbr";
	hint "Vous prenez votre service.";
	[] call life_fnc_medicLoadout;
};