#include <macro.h>

_uniform = uniform player;
_backpack = backpack player;
// WEST PART
if (playerSide == west) then {
	_coplevel = (__GETC__(life_coplevel));
// Switch texture only if cop is wearing a specific uniform!
	if ( (_coplevel > 2) && (uniform player == "U_Rangemaster") ) then {
		player setObjectTextureGlobal [0, "textures\Police\base.paa"]; // this is for all cops whitelisted or public.
	};

	if ((_coplevel > 6) && (uniform player == "U_B_CTRG_1") ) then {
		player setObjectTextureGlobal [0, "textures\Police\hautgrade.paa"]; // this is for all cops whitelisted or public.
	};

	if ((_coplevel > 12) && (uniform player == "U_B_CTRG_2") ) then {
		player setObjectTextureGlobal [0, "textures\Police\officier.paa"]; // this is for all cops whitelisted or public.
	};

	if ((_coplevel > 17) && (uniform player == "U_B_CombatUniform_mcam_worn") ) then {
		player setObjectTextureGlobal [0, "textures\Police\generale.paa"]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};

	if ((_coplevel > 21) && (uniform player == "U_B_CombatUniform_mcam") ) then {
		player setObjectTextureGlobal [0, ""]; // this is for all whitelisted cops above the rank of 2 on the database (these numbers can be adjusted as needed)
	};

};