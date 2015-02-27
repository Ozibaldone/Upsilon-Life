/*
	File: fn_sendChannel.sqf
	Author: alleskapot & Lifted
	Thanks again for all the help alleskapot!
	Description:
	Ermöglicht senden bzw. die Abfrage des Geschriebenen.

*/

private["_message"];
disableSerialization;

waitUntil {!isnull (findDisplay 9000)};

if ( life_cash < 6000 ) exitWith { systemChat "Il vous faut 6000 € pour envoyer un message!"; }; // Hint if person haves no 6000 dollar
if ( playerSide != civilian ) exitWith { systemChat "Vous devez être un civil pour envoyer un message!"; }; // Hint if not civilian
if !( life_channel_send ) exitWith { systemChat "Attendre 10 minutes avant d'envoyer un nouveau message!"; }; //Gives Player the Hint to Wait 10 mins
life_cash = life_cash - 6000;

_message = ctrlText 9001;
[[3,format ["FLASH INFO: %2",name player,_message]],"life_fnc_broadcast",true,false] call life_fnc_MP;

[] spawn
{
	sleep 600;
	life_channel_send = true;
};