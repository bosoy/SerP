#define addWeapons {_unit addWeapon _x} forEach 
#define addMagazines(a,b) for "_i" from 1 to b do {_unit addMagazine a}
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//командование взвода
	case "OFF" : {//Командир взвода
		addWeapons ["ACE_AK74M_GL_1P29","ACE_P159_RD90","Makarov","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
	};
//Штурм
	case "SL_R" : {//Комод
		addWeapons ["ACE_AK74M_GL_Kobra","ACE_P159_RD90","Makarov","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("8Rnd_9x18_Makarov",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
		_unit setVariable ["ACE_weapononback","ACE_RPG22"];
	};
	case "SL_GP" : {//Комод с ГП
		addWeapons ["ACE_AK74M_GL_Kobra","ACE_P159_RD90","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
	};
	case "TL" : {//Старший стрелок
		addWeapons ["ACE_AK74M_1P29","ACE_RPG22","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools"];
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
	};
	case "MG" : {//Пулеметчик
		addWeapons ["Pecheneg","NVGoggles"];
		addWeapons ["ACE_Earplugs"];
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
	};
	case "AMG" : {//Помошник пулеметчика
		addWeapons ["ACE_AK74M_Kobra","ACE_ALICE_Backpack","Binocular","NVGoggles"];
		addWeapons ["ACE_Earplugs"];
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]]];
	};
	case "AT" : {//1й номер расчета РПГ
		addWeapons ["ACE_AK74M_Kobra","ACE_RPG7V_PGO7","NVGoggles"];
		addWeapons ["ACE_Earplugs"];
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_PG7VM_PGO7",3);
	};
	case "AAT" : {//2й номер расчета РПГ
		addWeapons ["ACE_AK74M_Kobra","ACE_ALICE_Backpack","Binocular","NVGoggles"];
		addWeapons ["ACE_Earplugs"];
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VM_PGO7",4]]];
	};
	case "GL" : {//Стрелок с ГП
		addWeapons ["ACE_AK74M_GL_Kobra","NVGoggles"];
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",8);
	};
	case "GLAT" : {//Стрелок с ГП РПГ22
		addWeapons ["ACE_AK74M_GL","ACE_RPG22","NVGoggles"];
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",8);
	};
	case "LAT" : {// Стрелок РПГ-22
		addWeapons ["ACE_AK74M_Kobra","ACE_RPG22","NVGoggles"];
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		_unit setVariable ["ACE_weapononback","ACE_RPG22"];
	};
//Разведотделение
	case "R_SL_GP" : {//Командир отделения разведки
		addWeapons ["ACE_AKS74P_GL_Kobra","ACE_P159_RD90","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
	};
	case "R_TL" : {//Старший разведчик
		addWeapons ["ACE_AKS74P_1P29","ACE_RPG27","ACE_APSB","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
		addMagazines("30Rnd_545x39_AK",6);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
	};
	case "R_SN" : {//Разведчик - снайпер
		addWeapons ["ACE_gr1sdsp","ACE_APSB","ACE_YardAge450","NVGoggles"];
		addMagazines("ACE_Battery_Rangefinder", 2);
		addMagazines("ACE_30Rnd_762x39_SD_AK47",7);
		addMagazines("ACE_30Rnd_762x39_T_AK47",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
	};
	case "R_MG" : {//Разведчик - пулеметчик
		addWeapons ["Pecheneg","NVGoggles"];
		addWeapons ["ACE_Earplugs"];
		addMagazines("100Rnd_762x54_PK",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]]];
	};
	case "R_R" : {// Разведчик - радиотелефонист
		addWeapons ["ACE_AKS74P_GL_Kobra","ACE_P159_RD90","NVGoggles"];
		addMagazines("30Rnd_545x39_AK",7);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("1Rnd_HE_GP25",4);
	};
	case "R_SAP" : {// Разведчик - сапер
		addWeapons ["ACE_AKS74P_Kobra","ACE_ALICE_Backpack","NVGoggles"];
		addWeapons ["ACE_Map"];
		addMagazines("30Rnd_545x39_AK" ,8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		_unit setVariable ["ACE_RuckMagContents",[["ACE_MON50_M",5],["PipeBomb",2]]];
	};
	case "R_ASD" : {// Разведчик - AKMSD
		addWeapons ["ACE_AKMS_SD","ACE_RPG22","NVGoggles"];
		addWeapons ["ACE_Map"];
		addMagazines("ACE_30Rnd_762x39_SD_AK47",8);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
	};

// Снайперские пары
	case "MR" : {//Стрелок СВД
		addWeapons ["SVD","ACE_APSB","Binocular","NVGoggles"];
		addMagazines("10Rnd_762x54_SVD",7);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
	};
	case "MRN" : {//Стрелок СВД-NSPU
		addWeapons ["SVD_NSPU_EP1","ACE_APSB","Binocular","NVGoggles"];
		addMagazines("10Rnd_762x54_SVD",7);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
	};
	case "SN" : {//Снайпер
		addWeapons ["ACE_SVD_Bipod","ACE_APSB","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ItemGPS"];
		addMagazines("10Rnd_762x54_SVD",7);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10]]];
	};
	case "HSN" : {//Снайпер КСВК
		addWeapons ["KSVK","ACE_APSB","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ItemGPS"];
		addMagazines("5Rnd_127x108_KSVK",8);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_MON50_M",2);
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x108_KSVK",10],["ACE_MON50_M",1]]];
	};
	case "ASL" : {//наблюдатель-наводчик СВД
		addWeapons ["VSS_vintorez","ACE_APSB","Binocular_Vector","NVGoggles"];
		addWeapons ["ACE_Map","ItemGPS","ACE_Kestrel4500"];
		addMagazines("20Rnd_9x39_SP5_VSS",5);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",1);
		addMagazines("ACE_MON50_M",2);
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",5],["20Rnd_9x39_SP5_VSS",5],["ACE_MON50_M",3]]];
		
	};
	case "ASH" : {//наблюдатель-наводчик КВСК
		addWeapons ["VSS_vintorez","ACE_APSB","Binocular_Vector","NVGoggles"];
		addWeapons ["ACE_Map","ItemGPS","ACE_Kestrel4500"];
		addMagazines("20Rnd_9x39_SP5_VSS",5);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",1);
		addMagazines("ACE_MON50_M",2);
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x108_KSVK",5],["20Rnd_9x39_SP5_VSS",5],["ACE_MON50_M",3]]];
		
	};
	case "ASKSL" : {//наблюдатель-наводчик СВД
		addWeapons ["ACE_AKS74P_GL_1P29","ACE_APSB","Binocular_Vector","NVGoggles"];
		addWeapons ["ACE_Map","ItemGPS","ACE_Kestrel4500"];
		addMagazines("ACE_30Rnd_545x39_S_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",1);
		addMagazines("ACE_MON50_M",2);
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",5],["ACE_30Rnd_545x39_S_AK",5],["ACE_MON50_M",3]]];
		
	};
	case "ASKSH" : {//наблюдатель-наводчик КВСК
		addWeapons ["ACE_AKS74P_GL_1P29","ACE_APSB","Binocular_Vector","NVGoggles"];
		addWeapons ["ACE_Map","ItemGPS","ACE_Kestrel4500"];
		addMagazines("ACE_30Rnd_545x39_S_AK",4);
		addMagazines("ACE_30Rnd_545x39_T_AK",2);
		addMagazines("ACE_20Rnd_9x18_APSB",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_Battery_Rangefinder",1);
		addMagazines("ACE_MON50_M",2);
		_unit setVariable ["ACE_weapononback","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x108_KSVK",5],["ACE_30Rnd_545x39_S_AK",5],["ACE_MON50_M",3]]];
		
	};


//экипаж
	case "CRWVC" : {//Командир техники
		addWeapons ["AKS_74_U","Makarov","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
	};
	case "CRW" : {//Экипаж
		addWeapons ["AKS_74_U","NVGoggles"];
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("ACE_RDGM",2);
	};
	case "PL" : {//Пилот
		addWeapons ["AKS_74_U","Makarov","NVGoggles"];
		addWeapons ["ACE_Map","ACE_GlassesSunglasses","ItemGPS"];
		addMagazines("30Rnd_545x39_AK",5);
		addMagazines("ACE_30Rnd_545x39_T_AK",1);
		addMagazines("8Rnd_9x18_Makarov",4);
		addMagazines("ACE_RDGM",2);
	};
};