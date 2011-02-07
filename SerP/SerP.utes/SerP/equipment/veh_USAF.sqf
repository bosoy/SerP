_USAF_processor = {
	_veh = _this select 0;
	_loadout = toUpper (_this select 1);
	switch _loadout do {
		case "L" : {//LittleBird, UH1
			_veh addMagazineCargo ["HandGrenade_west",10];
			_veh addMagazineCargo ["SmokeShell",5];
			_veh addMagazineCargo ["30Rnd_556x45_Stanag",15];
			_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",3];
			_veh addMagazineCargo ["1Rnd_HE_M203",5];
			_veh addMagazineCargo ["1Rnd_Smoke_M203",4];
			_veh addWeaponCargo ["ACE_PRC119_ACU",1];
			_veh addWeaponCargo ["ACE_Rucksack_MOLLE_ACU",2];
			_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 5];
			_veh addMagazineCargo ["ACE_Morphine",2];
			_veh addMagazineCargo ["ACE_Epinephrine",2];
			_veh addMagazineCargo ["ACE_Bandage",5];
			_veh addWeaponCargo ["M136",2];
			_veh addWeaponCargo ["ACE_Rope_M_120",2];
			_veh addWeaponCargo ["ACE_ParachuteRoundPack",6];
		};
		case "M" : {//UH1,MH60
			_veh addMagazineCargo ["HandGrenade_west",20];
			_veh addMagazineCargo ["SmokeShell",10];
			_veh addMagazineCargo ["30Rnd_556x45_Stanag",30];
			_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",10];
			_veh addMagazineCargo ["1Rnd_HE_M203",10];
			_veh addMagazineCargo ["1Rnd_Smoke_M203",10];
			_veh addWeaponCargo ["ACE_PRC119_ACU",2];
			_veh addWeaponCargo ["ACE_Rucksack_MOLLE_ACU",5];
			_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 15];
			_veh addMagazineCargo ["ACE_Morphine",15];
			_veh addMagazineCargo ["ACE_Epinephrine",15];
			_veh addMagazineCargo ["ACE_Bandage",15];
			_veh addWeaponCargo ["M136",6];
			_veh addWeaponCargo ["ACE_Rope_M_120",4];
			_veh addWeaponCargo ["ACE_ParachuteRoundPack",16];
		};
		case "H" : {//CH47
			_veh addMagazineCargo ["HandGrenade_west",40];
			_veh addMagazineCargo ["SmokeShell",20];
			_veh addMagazineCargo ["30Rnd_556x45_Stanag",40];
			_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",20];
			_veh addMagazineCargo ["1Rnd_HE_M203",20];
			_veh addMagazineCargo ["1Rnd_Smoke_M203",20];
			_veh addWeaponCargo ["ACE_PRC119_ACU",4];
			_veh addWeaponCargo ["ACE_Rucksack_MOLLE_ACU",10];
			_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag", 20];
			_veh addMagazineCargo ["ACE_Morphine",30];
			_veh addMagazineCargo ["ACE_Epinephrine",30];
			_veh addMagazineCargo ["ACE_Bandage",30];
			_veh addWeaponCargo ["M136",10];
			_veh addWeaponCargo ["ACE_Rope_M_120",6];
			_veh addWeaponCargo ["ACE_ParachuteRoundPack",30];
		};
	};
};
