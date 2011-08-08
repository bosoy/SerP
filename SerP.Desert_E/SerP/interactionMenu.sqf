_target = _this select 0;
[
	["main", "test", "popup"],
	[
		["Fix position",
			{_pos = getPos CBA_ui_target;CBA_ui_target setPos [_pos select 0,_pos select 1,-0.2]},
			"", "", "", -1, ((count(crew _target) == 0)&&((vectorUp _target) select 0 == 0)), (_target isKindOf "StaticWeapon")
		]
	]
]