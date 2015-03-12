/*
    Uniform Script
    Author: Eldayia
    Created for http://altisdev.com
*/

    #define __GETC__(var) (call var)
    
    if (playerSide == west) then {
        if ((uniform player) == "U_Rangemaster")  then {
		player setObjectTextureGlobal [0, "textures\police\base.paa"]; //Militaire du Rang - Cop
        };		
    if (playerSide == west) then {
		if ((uniform player) == "U_B_CTRG_2")  then {
            player setObjectTextureGlobal [0, "textures\police\uniform_bleu.jpg"]; //Sous-Officier Superieur - Cop
		};
    if (playerSide == west) then {
		if ((uniform player) == "U_B_CombatUniform_mcam_worn")  then {
            player setObjectTextureGlobal [0, "textures\police\Uniforme_raid.jpg"]; //Générale - Cop
        };
    } else {
        if ((uniform player) == "U_Rangemaster")  then {
            player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; //Tenue d'intendant - Medic
        };
    };
