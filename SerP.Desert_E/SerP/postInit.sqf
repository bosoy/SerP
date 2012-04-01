

if (isServer) then {
	[] call compile preprocessFileLineNumbers "SerP\startmission_server.sqf";

	_publicVars = ["timeOfDay","weather","briefing_mode","warbegins","readyarray","startZones","SerP_end","SerP_markerCount"];
	{publicVariable _x} forEach _publicVars;
};

if (!isDedicated) then {
	[] call compile preprocessFileLineNumbers "SerP\briefing.sqf";
	enableRadio false;
	[] execVM "SerP\startmission_client.sqf";
	[["AllVehicles"], [ace_sys_interaction_key], 2, ["SerP\interactionMenu.sqf", "main"]] call CBA_ui_fnc_add;
	[["player"], [ace_sys_interaction_key_self], 2, ["SerP\selfInteractionMenu.sqf", "main"]] call CBA_ui_fnc_add;
/*//uncomment to disable spectator's map
ace_sys_spectator_fnc_spectate_events_old = ace_sys_spectator_fnc_spectate_events;
ace_sys_spectator_fnc_spectate_events = {
	switch true do {
		case ((_this select 0) in ["ToggleTags","UnitFired","ToggleMapBird","MapClick"]): {false};
		case ((_this select 0) == "ToggleMap"): {
			ctrlShow [55014, false];
			ctrlShow [55015, false];
			((findDisplay 55001) displayCtrl 55013) ctrlSetPosition [2, 2];
			((findDisplay 55001) displayCtrl 55013) ctrlCommit 0;
			false
		};
		default {_this call ace_sys_spectator_fnc_spectate_events_old};
	};
};
*/
};

//testing
if (isServer&&!isDedicated) then {
	[] call compile preprocessFileLineNumbers "SerP\template_test.sqf";
};