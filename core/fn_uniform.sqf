/*
    Uniform Script
    Author: Eldayia
    Created for http://altisdev.com
*/

    #define __GETC__(var) (call var)
    
    if (playerSide != independent) then {
        if ((uniform player) == "U_Rangemaster")  then {
		player setObjectTextureGlobal [0, "textures\police\militaire_du_rang.paa"]; //Militaire du Rang - Cop
        };		
    if (playerSide != independent) then {
		if ((uniform player) == "U_B_CTRG_1")  then {
            player setObjectTextureGlobal [0, "textures\police\sous_officier_superieur.paa"]; //Sous-Officier Superieur - Cop
		};
    if (playerSide != independent) then {
		if ((uniform player) == "U_B_CTRG_2")  then {
            player setObjectTextureGlobal [0, "textures\police\generale.paa"]; //Générale - Cop
        };
    } else {
        if ((uniform player) == "U_Rangemaster")  then {
            player setObjectTextureGlobal [0, "textures\medic_uniform.jpg"]; //Tenue d'intendant - Medic
        };
    };