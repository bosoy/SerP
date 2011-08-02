﻿_veh = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
	case "UAZ" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",10];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47", 10];
		_veh addMagazineCargo ["HandGrenade", 5];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
	};
	case "UAZ_E" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",10];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",3];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47", 10];
		_veh addMagazineCargo ["HandGrenade", 5];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addWeaponCargo ["ACE_RPG22",1];
	};
	case "UAZ_SN" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",5];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",1];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47", 5];
		_veh addMagazineCargo ["10Rnd_762x54_SVD", 20];
		_veh addMagazineCargo ["HandGrenade", 5];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
		_veh addWeaponCargo ["ACE_RPG22",1];
	};
	case "BTR" : { //
		_veh addMagazineCargo ["HandGrenade",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",10];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",20];
		_veh addMagazineCargo ["100Rnd_762x54_PK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",20];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",8];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47", 5];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
		[_veh,"762M_BIG"] call SerP_cargoCrateProcessor;
		[_veh,"GREN_EAST"] call SerP_cargoCrateProcessor;
		[_veh,"GP25_AMMO"] call SerP_cargoCrateProcessor;
		[_veh,"RPG7_AMMO"] call SerP_cargoCrateProcessor;
	};
	case "BTR_E" : { //
		_veh addMagazineCargo ["HandGrenade",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",10];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",20];
		_veh addMagazineCargo ["100Rnd_762x54_PK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",20];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",8];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47", 5];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
	};
	case "TRUCK" : { //
		_veh addMagazineCargo ["HandGrenade",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",39];
		_veh addMagazineCargo ["ACE_75Rnd_762x39_B_AK47",20];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",20];
		_veh addMagazineCargo ["100Rnd_762x54_PK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",20];
		_veh addWeaponCargo ["ACE_P159_RD90",2];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",8];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47", 10];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
	};
	case "TRUCK_MORTAR" : { //
		_veh addMagazineCargo ["HandGrenade",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",39];
		_veh addMagazineCargo ["ACE_75Rnd_762x39_B_AK47",20];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",20];
		_veh addMagazineCargo ["100Rnd_762x54_PK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",20];
		_veh addWeaponCargo ["ACE_P159_RD90",2];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",8];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47", 10];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
		_veh addWeaponCargo ["ACE_2b14Proxy",1];
		_veh addWeaponCargo ["ACE_2b14TripodProxy",1];
		_veh addWeaponCargo ["ace_arty_rangeTable_2b14_legacy",2];
		[_veh,"82MMHE",10] call SerP_cargoCrateProcessor;
		[_veh,"82MMWP",2] call SerP_cargoCrateProcessor;
	};
	case "RECON" : { //
		_veh addMagazineCargo ["HandGrenade_East",12];
		_veh addMagazineCargo ["ACE_RDGM",10];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",36];
		_veh addMagazineCargo ["30Rnd_545x39_AK",36];
		_veh addMagazineCargo ["10Rnd_762x54_SVD",20];
		_veh addMagazineCargo ["100Rnd_762x54_PK",10];
		_veh addMagazineCargo ["1Rnd_HE_GP25",20];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_SD_AK47",10];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",4];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47", 10];
		_veh addMagazineCargo ["HandGrenade", 15];
		_veh addMagazineCargo ["ACE_Bandage",9];
		_veh addMagazineCargo ["ACE_Morphine",9];
		_veh addMagazineCargo ["ACE_Epinephrine",9];
		_veh addMagazineCargo ["ACE_MON50_M",10];
		_veh addMagazineCargo ["BAF_ied_v2",5];
		_veh addMagazineCargo ["ACE_Pomz_M",10];
		_veh addMagazineCargo ["BAF_ied_v4",5];
		_veh addWeaponCargo ["ACE_RPG22",2];
	};
	case "MED" : { //
		_veh addWeaponCargo ["ACE_RPG22",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",4];
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
	case "TL" : { //
		_veh addMagazineCargo ["HandGrenade_East",6];
		_veh addMagazineCargo ["ACE_RDGM",6];
		_veh addMagazineCargo ["30Rnd_762x39_AK47",6];
		_veh addWeaponCargo ["ACE_P159_RD90",1];
		_veh addWeaponCargo ["ACE_Rucksack_RD90",2];
		_veh addMagazineCargo ["ACE_30Rnd_762x39_T_AK47", 6];
		_veh addMagazineCargo ["100Rnd_762x51_M240", 2];
		_veh addMagazineCargo ["PG7V",4];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Morphine",2];
		_veh addMagazineCargo ["ACE_Epinephrine",2];
	};
};
