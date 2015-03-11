waitUntil {!(isNull (findDisplay 46))};
disableSerialization;

_rscLayer = "statusBar" call BIS_fnc_rscLayer;
_rscLayer cutRsc["statusBar","PLAIN"];
systemChat format["Reboot toutes les 6 Heures", _rscLayer];

[] spawn {
	sleep 5;
	_statusText = "Reboot toutes les 6 Heures";
	_counter = 160;
	_timeSinceLastUpdate = 0;
	while {true} do
	{
		sleep 1;
		_uptime = [time,"HH:MM"] call BIS_fnc_secondsToString;
		_counter = _counter - 1;
		_statusText = "Reboot toutes les 6 Heures";
		((uiNamespace getVariable "statusbar")displayCtrl 1000)ctrlSetText format["Reboot à 6H: %1 | Cops: %2 | Civs: %3 | Medics: %4 | FPS: %8", _uptime, west countSide playableUnits, civilian countSide playableUnits, independent countSide playableUnits,[gsn_life_cash] call life_fnc_numberText,[gsn_lifeatm_cash] call life_fnc_numberText,mapGridPosition player,round diag_fps];
	};
};