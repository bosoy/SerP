enableSaving [false, false];
//process parameters
for [ { _i = 0 }, { _i < count(paramsArray) }, { _i = _i + 1 } ] do	{
	_paramName =(configName ((missionConfigFile >> "Params") select _i));
	_paramValue = (paramsArray select _i);
	_paramCode = ( getText (missionConfigFile >> "Params" >> _paramName >> "code"));
	call compile format[_paramCode, _paramValue];
};
//init global variables
if (isClass(configFile >> "cfgPatches" >> "ace_main")) then {
	ace_sys_wounds_enabled = true;
	ace_sys_repair_default_tyres= true;
	ace_sys_tracking_markers_enabled_override = true;
	ace_sys_tracking_markers_enabled = false;
	ace_sys_spectator_playable_only = true;
	//ace_sys_spectator_NoMarkersUpdates = true;
	//ace_sys_nvg_rangelimit_enabled = true;
	ace_settings_enable_vd_change = true;
	missionNamespace setVariable ["ace_viewdistance_limit",getNumber(missionConfigFile >> "SerP_const" >> "viewDistance")];
	ACE_NoStaminaEffects = true;
	[] spawn {_s = time+100;waitUntil{sleep 1;!ACE_SYS_STAMINA||_s>time};ACE_SYS_STAMINA=true;};
};

enableEngineArtillery false;

//functions
SerP_isCrew = compile preprocessFileLineNumbers "SerP\isCrew.sqf";
SerP_isPilot = compile preprocessFileLineNumbers "SerP\isPilot.sqf";
SerP_msg = {//["Hello world!",west] call SerP_msg;
		if (count(_this)==2) then {
			if ((side player)==(_this select 1)) then {
				taskHint [(_this select 0),[1, 0, 0, 1], "taskNew"];
			};
		}else{
			taskHint [(_this select 0),[0, 1, 0, 1], "taskNew"];
		};
	SerP_msgText = _this;
	publicVariable "SerP_msgText";
};

[] execVM "SerP\endmission.sqf";
//server
if (isServer) then {
	SerP_markerCount = [0,0,0,0];
	SerP_addMarker = {
		_side = _this select 0;
		_pos = _this select 1;
		_type = _this select 2;
		_color = _this select 3;
		_text = _this select 4;


		_index = switch _side do {
			case east: {0};
			case west: {1};
			case resistance: {2};
			case civilian: {3};
		};
		_count = SerP_markerCount select _index;
		_name = "SerP_marker"+str(_side) + str(_count);
		SerP_markerCount set [_index,_count+1];

		createMarker [_name,_pos];
		_name setMarkerType _type;
		_name setMarkerText _text;
		_name setMarkerColor _color;
		_name setMarkerAlpha 0;

	};

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
	SerP_msgText = "";
	"SerP_msgText" addPublicVariableEventHandler {
		if (count(_this select 1)==2) then {
			if ((side player)==(_this select 1) select 1) then {
				taskHint [(_this select 1) select 0,[1, 0, 0, 1], "taskNew"];
			};
		}else{
			taskHint [(_this select 1) select 0,[0, 1, 0, 1], "taskNew"];
		};
	};
	setViewDistance 1;
};