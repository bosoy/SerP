_menu = [
	["main", "test", "popup"],
	[
		["End mission",
			{["end_admin"] call SerP_endMission},
			"", "", "", -10, 1, ((serverCommandAvailable "#kick")||isServer)
		],
		["Lock",
			{(vehicle player) lock true},
			"", "", "", -10, 1, ((vehicle player)!=player&&local(vehicle player)&&!locked(vehicle player))
		],
		["Unlock",
			{(vehicle player) lock false},
			"", "", "", -10, 1, ((vehicle player)!=player&&local(vehicle player)&&locked(vehicle player))
		]
	]
];
_menu