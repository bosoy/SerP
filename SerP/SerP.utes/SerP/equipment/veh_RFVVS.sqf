_RFVVS_processor = {
	_veh = _this select 0;
	_loadout = toUpper (_this select 1);
	switch _loadout do {
		case "MI8" : {//
			_veh addMagazineCargo ["HandGrenade",24];
			_veh addMagazineCargo ["ACE_RDGM",20];
			_veh addMagazineCargo ["30Rnd_545x39_AK",20];
			_veh addMagazineCargo ["10Rnd_762x54_SVD",20];
			_veh addMagazineCargo ["100Rnd_762x54_PK",20];
			_veh addMagazineCargo ["1Rnd_HE_GP25",40];
			_veh addWeaponCargo ["ACE_ANPRC77",4];
			_veh addWeaponCargo ["ACE_BackPack",10];
			_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 20];
			_veh addMagazineCargo ["ACE_Bandage",20];
			_veh addMagazineCargo ["ACE_Morphine",20];
			_veh addMagazineCargo ["ACE_Epinephrine",20];
			if (isServer) then {
				_tbox = "ACE_Tbox_RU" createVehicle [0,0,0];
				_tbox setVariable ["ace_sys_cargo_UnloadPos", [0,7,0], true];
				_tbox addMagazineCargo ["ACE_PG7VM_PGO7", 10];
				_tbox addMagazineCargo ["ACE_OG7_PGO7", 10];
				_tbox addMagazineCargo ["30Rnd_545x39_AK",50];
				_tbox addMagazineCargo ["HandGrenade_East", 20];
				_tbox addMagazineCargo ["1Rnd_SMOKE_GP25",20];
				_tbox addMagazineCargo ["1Rnd_SmokeRed_GP25",5];
				_tbox addMagazineCargo ["1Rnd_SmokeGreen_GP25",5];
				_tbox addMagazineCargo ["ACE_1Rnd_CS_GP25",20];
				_tbox addMagazineCargo ["ACE_SSWhite_GP25",5];
				_tbox addMagazineCargo ["ACE_SSRed_GP25",5];
				_tbox addMagazineCargo ["ACE_SSGreen_GP25",5];
				_tbox addMagazineCargo ["FlareWhite_GP25",5];
				_tbox addMagazineCargo ["FlareRed_GP25",5];
				_tbox addMagazineCargo ["FlareGreen_GP25",5];
				_veh setVariable ["ace_sys_cargo_content",(_veh getVariable ["ace_sys_cargo_content",[]]) + [_tbox],true];
			};
			_veh addWeaponCargo ["ACE_Rope_M_120",4];
			_veh addWeaponCargo ["ACE_ParachuteRoundPack",20];
		};
	};
};
