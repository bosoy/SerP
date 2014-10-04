
_isAdmin = ((serverCommandAvailable "#kick")||isServer);
_veh = vehicle player;
_role = assignedVehicleRole _veh;
_isCargo = if (count(_role)==0) then {true}else{"Cargo"==(_role select 0)};


_endMission = {
	if (!isNil{SerP_lastCommand}) then {
		if (SerP_lastCommand == "endMission") then {
			["end_admin"] call SerP_endMission;
			SerP_lastCommand = nil;
		};
	}else{
		SerP_lastCommand = "endMission";
		hint "Press it again in 5 seconds to end mission";
		[] spawn {
			sleep 5;
			if (!isNil{SerP_lastCommand}) then {hint "Time out"};
			SerP_lastCommand = nil;
		};
	};
};
_endBriefing = {
	if (!isNil{SerP_lastCommand}) then {
		if (SerP_lastCommand == "endBriefing") then {
			[format["All are ready (%1)",name player]] call SerP_msg;
			warbegins=1;
			publicVariable "warbegins";
			SerP_lastCommand = nil;
		};
	}else{
		SerP_lastCommand = "endBriefing";
		hint "Press it again in 5 seconds to end briefing";
		[] spawn {
			sleep 5;
			if (!isNil{SerP_lastCommand}) then {hint "Time out"};
			SerP_lastCommand = nil;
		};
	};
};

_isBriefing = if (!isNil{warbegins}) then {warbegins==0}else{false};
_menu = [
	["main", "test", "popup"],
	[
		["End mission",
			_endMission,
			"", "", "", -10, 1, _isAdmin
		],
		["Lock",
			{(vehicle player) lock true},
			"", "", "", -10, 1, (_veh!=player&&!_isCargo&&!locked(_veh))
		],
		["Unlock",
			{(vehicle player) lock false},
			"", "", "", -10, 1, (_veh!=player&&locked(_veh))
		],
		["End briefing",
			_endBriefing,
			"", "", "", -10, 1, (_isAdmin&&_isBriefing)
		]
	]
];
_menu