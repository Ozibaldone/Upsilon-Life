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
if((__GETC__(life_medicLevel)) exitWith {
	player forceAddUniform "U_Rangemaster";
	player setObjectTextureGlobal [0,"textures\medic_uniform.jpg"];
	hint "Vous prenez votre service.";
		player addBackpackGlobal "B_Carryall_cbr";
	[] call life_fnc_medicLoadout;
};
};