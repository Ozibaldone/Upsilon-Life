#include <macro.h>
/*
    File: fn_adminrestrain.sqf
    Author: ImSuyken

    Description: Disable restrain on admin
*/

if(__GETC__(life_adminlevel) < 3) exitWith {closeDialog 0; hint localize "STR_ANOTF_ErrorLevel";};

[] spawn {
while {dialog} do {
closeDialog 0;
sleep 0.01;
};
};

    player setVariable["restrained",FALSE,TRUE];