

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
	player addMPEventHandler ["mpkilled", {
		ace_sys_spectator_ShownSides = [playerSide];
	}];
	//disable spectator's map
	ace_sys_spectator_fnc_spectate_events_old = ace_sys_spectator_fnc_spectate_events;
	ace_sys_spectator_fnc_spectate_events = {
		if !(ace_sys_spectator_camSelLast in [0,2,4]) then {
			ace_sys_spectator_NewCameraIdx = 2;
			ace_sys_spectator_camSelLast = 2;
		};
		if (ctrlVisible 55014) then {ctrlShow [55014, false];};
		if (ctrlVisible 55013) then {ctrlShow [55013, false];};
		if (ctrlVisible 55015) then {ctrlShow [55015, false];};

		switch true do {
			case ((_this select 0) in ["ToggleTags","UnitFired","ToggleMapBird","MapClick","MouseZChanged"]): {false};
			case ((_this select 0) == "ToggleMap"): {
				//ctrlShow [55014, false];
				//ctrlShow [55015, false];
				//ctrlShow [55013, false];
				false
			};
			case ((_this select 0) == "MouseZChanged"): {
				false
			};
			case ((_this select 0) == "KeyUp"): {
				_key = (_this select 1) select 1;
				switch(_key) do {
					case 49: {
						if (ace_sys_spectator_UseNVG == 0) then {
							ace_sys_spectator_UseNVG = 1;
							ace_sys_spectator_NVGMode = 2
						} else {
							ace_sys_spectator_UseNVG = 0;
							ace_sys_spectator_NVGMode = -1;
							ace_sys_spectator_OldNVGMode = -5;
						};
					};
					case 37: {};
					default {_this call ace_sys_spectator_fnc_spectate_events_old};
				}
			};
			default {_this call ace_sys_spectator_fnc_spectate_events_old};
		};
	};
	ace_sys_spectator_fnc_menucamslbchange_old = ace_sys_spectator_fnc_menucamslbchange;
	ace_sys_spectator_fnc_menucamslbchange = {
		switch (_this select 1) do {
			case 1: { // separator
			};
			case 3: { // separator
			};
			case 7: { // Special for toggling NVG
				if (ace_sys_spectator_UseNVG == 0) then {
					ace_sys_spectator_UseNVG = 1;
					ace_sys_spectator_NVGMode = 2
				} else {
					ace_sys_spectator_UseNVG = 0;
					ace_sys_spectator_NVGMode = -1;
					ace_sys_spectator_OldNVGMode = -5;
				};
			};
			case 8: { // Special for toggling tags
			};
			default {
				_this call ace_sys_spectator_fnc_menucamslbchange_old;
			};
		};
	};
};

//testing
if (isServer&&!isDedicated) then {
	[] call compile preprocessFileLineNumbers "SerP\template_test.sqf";
};