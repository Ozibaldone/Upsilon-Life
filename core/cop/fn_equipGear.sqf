/*
	File: fn_equipGear.sqf
	Author: Le Aphec
	
	Description:
	Initializes custom gear texture
*/
if (playerSide == west) then {
	if ((uniform player) == "U_Rangemaster") then
	{
		[[player,"textures\uniforme.jpg"], "life_fnc_setUniform", true, true] spawn BIS_fnc_MP;
	};
};