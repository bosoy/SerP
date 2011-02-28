
_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "HMW" : { //
		_veh addMagazineCargo ["HandGrenade_west",10];
		_veh addMagazineCargo ["SmokeShell",5];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",15];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",3];
		_veh addMagazineCargo ["1Rnd_HE_M203",5];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",4];
		_veh addWeaponCargo ["ACE_PRC119",1];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_ACU",4];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 5];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addWeaponCargo ["M136",2];
	};

	case "TRUCK" : { //
		_veh addMagazineCargo ["HandGrenade_west",25];
		_veh addMagazineCargo ["SmokeShell",15];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",36];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",10];
		_veh addMagazineCargo ["1Rnd_HE_M203",15];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",8];
		_veh addWeaponCargo ["ACE_PRC119",3];
		_veh addWeaponCargo ["ACE_Rucksack_MOLLE_ACU",8];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 10];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addWeaponCargo ["M136",4];
	};
	case "MED" : { //
		_veh addWeaponCargo ["M136",1];
		_veh addMagazineCargo ["ACE_Bandage",20];
		_veh addMagazineCargo ["ACE_Morphine",20];
		_veh addMagazineCargo ["ACE_Epinephrine",20];
		_veh addMagazineCargo ["ACE_LargeBandage",20];
		_veh addMagazineCargo ["ACE_Tourniquet",20];
		_veh addMagazineCargo ["ACE_Splint",20];
		_veh addMagazineCargo ["ACE_IV",20];
		_veh addMagazineCargo ["ACE_Plasma",20];
		_veh addMagazineCargo ["ACE_Medkit",20];
		_veh addWeaponCargo ["ACE_Stretcher",2];
		_veh addWeaponCargo ["ACE_PRC119",1];
	};
};
