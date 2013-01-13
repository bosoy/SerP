
_isAdmin = ((serverCommandAvailable "#kick")||isServer);
_veh = vehicle player;
_role = assignedVehicleRole _veh;
_isCargo = if (count(_role)==0) then {true}else{"Cargo"==(_role select 0)};

_isBriefing = if (!isNil{warbegins}) then {warbegins==0}else{false};
_menu = [
	["main", "test", "popup"],
	[
		["End mission",
			{["end_admin"] call SerP_endMission},
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
			{[format["All are ready (%1)",name player]] call SerP_msg;warbegins=1;publicVariable "warbegins"},
			"", "", "", -10, 1, (_isAdmin&&_isBriefing)
		]
	]
];
_menu