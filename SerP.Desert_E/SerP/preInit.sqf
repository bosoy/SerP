enableSaving [false, false];
//process parameters
for [ { _i = 0 }, { _i < count(paramsArray) }, { _i = _i + 1 } ] do	{
	_paramName =(configName ((missionConfigFile >> "Params") select _i));
	_paramValue = (paramsArray select _i);
	_paramCode = ( getText (missionConfigFile >> "Params" >> _paramName >> "code"));
	_code = format[_paramCode, _paramValue];
	call compile _code;
};
//init global variables
if (isClass(configFile >> "cfgPatches" >> "ace_main")) then {
	ace_sys_wounds_enabled = true;
	ace_sys_repair_default_tyres= true;
	ace_sys_tracking_markers_enabled_override = true;
	ace_sys_tracking_markers_enabled = false;
	ace_sys_spectator_playable_only = true;
	//ace_sys_spectator_NoMarkersUpdates = true;
	ace_sys_nvg_rangelimit_enabled = true;
};

enableEngineArtillery false;

//functions
SerP_isCrew = compile preprocessFileLineNumbers "SerP\isCrew.sqf";
SerP_isPilot = compile preprocessFileLineNumbers "SerP\isPilot.sqf";
[] execVM "SerP\endmission.sqf";
//server
if (isServer) then {
	publicVars = ["timeOfDay","weather","briefing_mode","warbegins","readyarray","startZones","SerP_end"];
	onPlayerConnected ("{publicVariable _x} forEach publicVars;"+getText(missionConfigFile >> "SerP_const" >> "onPlayerConnected"));
	[] call compile preprocessFileLineNumbers "SerP\setMissionConditions.sqf";
	if isNil{briefing_mode} then {
		briefing_mode = 1;publicVariable "briefing_mode";
	};
};
//client
if (!isDedicated) then {
	SerP_server_message = "";
	"SerP_server_message" addPublicVariableEventHandler {hint (_this select 1)};
	SerP_taskhint = "";
	"SerP_taskhint" addPublicVariableEventHandler {taskHint [(_this select 1),[1, 0, 0, 1], "taskNew"];};
	setViewDistance 1;
};