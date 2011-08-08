_menu = [
	["main", "test", "popup"],
	[
		["Build trench",
			{_trench = ("Fort_EnvelopeSmall_EP1" createVehicle getPos player); _trench setDir getDir player; _trench setPos getPos player;},
			"", "", "", -1, (count(position player isFlatEmpty [3, 0, 0.2, 3, 0, false, player])==3), false
		]
	]
];
_menu