_veh = _this select 0;
_loadout = toUpper(_this select 1);
switch _loadout do {
	case "HQVEH" : {//������� ������
		_veh addMagazineCargo ["HandGrenade_west",10];
		_veh addMagazineCargo ["SmokeShell",10];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",20];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",20];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",5];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",10];
		_veh addMagazineCargo ["ACE_Claymore_M",5];
		_veh addMagazineCargo ["IRStrobe",4];
		_veh addWeaponCargo ["ACE_PRC119_MAR",1];
		_veh addMagazineCargo ["ACE_Morphine",10];
		_veh addMagazineCargo ["ACE_Epinephrine",10];
		_veh addMagazineCargo ["ACE_Bandage",10];
		_veh addMagazineCargo ["ACE_Medkit",10];
		_veh addWeaponCargo ["M136",1];
		_veh addMagazineCargo ["PipeBomb",2];
	};
	case "MORVEH" : {//������ ��������� ��������
		_veh addMagazineCargo ["HandGrenade_west",10];
		_veh addMagazineCargo ["SmokeShell",10];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",20];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",20];
		_veh addMagazineCargo ["ACE_Claymore_M",5];
		_veh addMagazineCargo ["IRStrobe",4];
		_veh addMagazineCargo ["ACE_Morphine",3];
		_veh addMagazineCargo ["ACE_Epinephrine",3];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Medkit",5];
		_veh addMagazineCargo ["ACE_M224HE_CSWDM",5];
		_veh addMagazineCargo ["ACE_M224WP_CSWDM",5];
	};
	case "PLVEH" : {//���������� �������� ������
		_veh addMagazineCargo ["HandGrenade_west",10];
		_veh addMagazineCargo ["SmokeShell",10];
		_veh addMagazineCargo ["30Rnd_556x45_Stanag",20];
		_veh addMagazineCargo ["ACE_30Rnd_556x45_T_Stanag",20];
		_veh addMagazineCargo ["5Rnd_86x70_L115A1",5];
		_veh addMagazineCargo ["ACE_200Rnd_556x45_T_M249",5];
		_veh addMagazineCargo ["1Rnd_HE_M203",20];
		_veh addMagazineCargo ["1Rnd_Smoke_M203",10];
		_veh addMagazineCargo ["ACE_Claymore_M",5];
		_veh addMagazineCargo ["IRStrobe",4];
		_veh addWeaponCargo ["ACE_PRC119_MAR",1];
		_veh addMagazineCargo ["ACE_Morphine",5];
		_veh addMagazineCargo ["ACE_Epinephrine",5];
		_veh addMagazineCargo ["ACE_Bandage",5];
		_veh addMagazineCargo ["ACE_Medkit",5];
		_veh addWeaponCargo ["M136",2];
	};
};
