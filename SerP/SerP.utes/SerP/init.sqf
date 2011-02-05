enableSaving [false, false];
SerP_isCrew = compile preprocessFileLineNumbers "SerP\isCrew.sqf";
SerP_isPilot = compile preprocessFileLineNumbers "SerP\isPilot.sqf";
[] call compile preprocessFileLineNumbers "SerP\setMissionConditions.sqf";
[] call compile preprocessFileLineNumbers "SerP\briefing.sqf";
[] execVM "SerP\startmission.sqf";
[] execVM "SerP\endmission.sqf";
//load modules
if (isClass(configFile >> "cfgPatches" >> "ace_main")) then {
	ace_sys_wounds_enabled = true;
	ace_sys_repair_default_tyres= true;
	ace_sys_tracking_markers_enabled_override = true;
	ace_sys_tracking_markers_enabled = false;
	execVM "x\ace\addons\sys_wounds\XEH_preInit.sqf";
};
if (isServer) then {
	//эти глобальные переменные будут переданы подключающимся клиентам
	publicVars = ["timeOfDay","weather","briefing_mode","warbegins","readyarray","startZones","Server_initalized"];
	onPlayerConnected "{publicVariable _x} forEach publicVars";
};
enableEngineArtillery false;
SerP_server_message = "";
"SerP_server_message" addPublicVariableEventHandler {hint (_this select 1)};
//ace_sys_spectator_NoMarkersUpdates = true;
ace_sys_spectator_playable_only = true;
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
player setVariable ["BIS_noCoreConversations", true];
SepP_init_complete = true;
diag_log "SerP - init complete";