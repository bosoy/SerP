_menu = [
	["main", "test", "popup"],
	[
		["End mission",
			{["end_admin"] call SerP_endMission},
			"", "", "", -1, 1, ((serverCommandAvailable "#kick")||isServer)
		]
	]
];
_menu