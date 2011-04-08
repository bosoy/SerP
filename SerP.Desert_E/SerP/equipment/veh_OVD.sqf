_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "UAZ" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["HandGrenade", 5];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
	};
	case "UAZ_E" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",3];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["HandGrenade", 5];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addWeaponCargo ["ACE_RPG27",1];
	};
	case "TRUCK" : { //
		_veh addMagazineCargo ["HandGrenade",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",10];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",20];
		_veh addMagazineCargo ["100Rnd_762x54_PK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",20];
		_veh addWeaponCargo ["ACE_P159_RD90",2];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",8];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
		[_veh,"545M_BIG"] call SerP_cargoCrateProcessor;
		[_veh,"GREN_EAST"] call SerP_cargoCrateProcessor;
		[_veh,"GP25_AMMO"] call SerP_cargoCrateProcessor;
		[_veh,"RPG7_AMMO"] call SerP_cargoCrateProcessor;

	};
	case "TRUCK_E" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_545x39_AK",36];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_545x39_T_AK", 10];
		_veh addMagazineCargo ["HandGrenade", 15];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
		_veh addWeaponCargo ["ACE_RPG27",1];
	};
	case "MED" : { //
		_veh addWeaponCargo ["ACE_RPG27",1];
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
	};
};
