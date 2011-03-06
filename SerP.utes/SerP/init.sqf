


//ace_sys_spectator_NoMarkersUpdates = true;

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
