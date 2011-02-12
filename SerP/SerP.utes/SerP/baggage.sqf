// (c) Zu-23-2
_veh = _this select 0;
_veh disableTIEquipment true;
_boxtype = _this select 1;
_weapons = _this select 2;
_magasines = _this select 3;
if (isServer) then {
	_tbox = _boxtype createVehicle [0,0,0];
	_tbox setVariable ["ace_sys_cargo_UnloadPos", [round(random(4)),5+round(random(2)),0], true];
	if ((count _weapons > 0)||(count _magasines > 0)) then {
		clearWeaponCargoGlobal _tbox;
		clearMagazineCargoGlobal _tbox;
		{ _tbox addMagazineCargoGlobal _x } forEach _magasines;
		{ _tbox addWeaponCargoGlobal _x } forEach _weapons;
	};
	_veh setVariable ["ace_sys_cargo_content",(_veh getVariable ["ace_sys_cargo_content",[]]) + [_tbox],true];
};

	