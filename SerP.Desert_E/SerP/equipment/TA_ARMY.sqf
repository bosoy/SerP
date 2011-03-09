#define addWeapons {_unit addWeapon _x} forEach
#define addMagazines(a,b) for "_i" from 1 to b do {_unit addMagazine a}
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//командование взвода
	case "OFF" : { //Командир взвода
		addWeapons ["Makarov","ACE_AKMS","ACE_ANPRC77"];
		addMagazines("ACE_30Rnd_762x39_T_AK47",4);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_RDGM",4 2);
		addMagazines("HandGrenade_East",2);
		addMagazines("8Rnd_9x18_Makarov",5) ;
		addWeapons ["NVGoggles", "Binocular","ACE_Map","ACE_Map_Tools","ItemGPS"];
	};
//МСВ
	case "SL" : { //Комод
		addWeapons ["Makarov","ACE_AKM","ACE_ANPRC77"];
		addMagazines("ACE_30Rnd_762x39_T_AK47",4);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("8Rnd_9x18_Makarov",5);
		addWeapons ["NVGoggles", "Binocular","ACE_Map","ACE_Map_Tools","ItemGPS"];
	};
	case "TL" : { //Старший стрелок
		addMagazines("ACE_30Rnd_762x39_T_AK47",4);
		addMagazines("30Rnd_762x39_AK47",4);
		addMagazines("1Rnd_HE_GP25",8);
		addWeapons ["ACE_AKM_GL"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",4);
		addWeapons ["ACE_Map","Binocular","NVGoggles"];
	};
	case "MG" : { //Пулеметчик
		addMagazines("100Rnd_762x54_PK",3);
		addWeapons ["PK"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["NVGoggles"];
		addWeapons ["ACE_Earplugs"];
	};
	case "AR" : { //Пулеметчик РПК
		addMagazines("ACE_75Rnd_762x39_B_AK47",7);
		addWeapons ["ACE_RPK"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["NVGoggles"];
		addWeapons ["ACE_Earplugs"];
	};
	case "AMG" : { //Помошник пулеметчика
		addMagazines("30Rnd_762x39_AK47",6);
		addWeapons ["ACE_AKM","ACE_Rucksack_EAST"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["Binocular"];
		addWeapons ["ACE_Earplugs"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]]];
	};
	case "AT" : { //1й номер расчета РПГ
		addMagazines("30Rnd_762x39_AK47",8);
		addWeapons ["ACE_AKM","ACE_RPG7V_PGO7"];
		addMagazines("ACE_PG7VM_PGO7",3);
		addWeapons ["ACE_Earplugs"];
		addWeapons ["NVGoggles"];
	};
	case "AAT" : { //2й номер расчета РПГ
		addMagazines("30Rnd_762x39_AK47",6);
		addWeapons ["ACE_AKM","ACE_Rucksack_EAST"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_Earplugs"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VM_PGO7",4]]];
	};
	case "GL" : { //Стрелок с ГП
		addMagazines("30Rnd_762x39_AK47", 6);
		addMagazines("1Rnd_HE_GP25", 8);
		addWeapons ["ACE_AKM_GL"];
		addMagazines("ACE_RDGM", 3);
		addMagazines("HandGrenade_East", 3);
	};
	case "GLAT" : { //Стрелок с ГП РПГ27
		addMagazines("30Rnd_762x39_AK47", 6);
		addMagazines("1Rnd_HE_GP25", 8);
		addWeapons ["ACE_AKM_GL","ACE_RPG22"];
		addMagazines("ACE_RDGM", 3);
		addMagazines("HandGrenade_East", 3);
	};
	case "LAT" : { // Стрелок РПГ-27
		addMagazines("30Rnd_762x39_AK47", 8);
		addWeapons ["ACE_AKM","ACE_RPG22"];
		addMagazines("ACE_RDGM", 2);
		addMagazines("HandGrenade_East", 2);
	};
	case "RF" : { // Стрелок
		addMagazines("30Rnd_762x39_AK47", 8);
		addWeapons ["ACE_AKM"];
		addMagazines("ACE_RDGM", 2);
		addMagazines("HandGrenade_East", 2);
	};
//разведотделение
	case "R_SL" : { //Командир отделения разведки
		addMagazines("ACE_20Rnd_762x51_B_G3",4);
		addMagazines("ACE_20Rnd_762x51_T_G3",4);
		addMagazines("15Rnd_9x19_M9SD",5);
		addWeapons ["ACE_G3A3_RSAS","ACE_RPG22","M9SD"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["NVGoggles","Binocular","ACE_Map","ACE_Map_Tools","ItemGPS"];
	};
	case "R_TL" : { //Старший разведчик
		addMagazines("ACE_20Rnd_762x51_B_G3",8);
		addMagazines("15Rnd_9x19_M9SD",5);
		addWeapons ["ACE_G3A3_RSAS","M79_EP1","M9SD"];
		addMagazines("1Rnd_HE_M203",6);
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["M9SD"];
		addWeapons ["NVGoggles","Binocular","ACE_Map","ItemGPS"];
	};
	case "R_MG" : { //Разведчик - пулеметчик
		addMagazines("100Rnd_762x54_PK",8);
		addWeapons ["PK","ACE_Rucksack_EAST"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["NVGoggles","ACE_Map"];
		addWeapons ["ACE_Earplugs"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]]];
	};
	case "R_R" : { // Разведчик - радиотелефонист
		addMagazines("ACE_20Rnd_762x51_B_G3",8);
		addMagazines("15Rnd_9x19_M9SD",5);
		addWeapons ["ACE_G3A3","M9SD","ACE_ANPRC77"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["NVGoggles"];
	};
	case "R_SN" : { // Разведчик - снайпер
		addMagazines("ACE_20Rnd_762x51_B_G3",8);
		addMagazines("15Rnd_9x19_M9SD",5);
		addWeapons ["ACE_G3SG1","M9SD"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["NVGoggles","ACE_Map"];
	};
	case "R_SAP" : { // Разведчик - сапер
		addMagazines("ACE_20Rnd_762x51_B_G3",8);
		addMagazines("15Rnd_9x19_M9SD",5);
		addWeapons ["ACE_G3A3","M9SD","ACE_Rucksack_EAST"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["NVGoggles","ACE_Map"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_MON50_M",5],["PipeBomb",2]]];
	};
	case "R_SD" : { // Разведчик - ВСС
		addMagazines("ACE_30Rnd_762x39_SD_AK47",8);
		addWeapons ["ACE_AKMS_SD","ACE_RPG22"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["NVGoggles","ACE_Map"];
	};
//отделение ПТУР
	case "ATGM" : { //Старший оператор
		addMagazines("30Rnd_762x39_AK47",6);
		addWeapons ["ACE_AKM"];
		addWeapons ["ACE_KonkursTripodProxy"];
		_unit addMagazine "ACE_Konkurs_CSWDM";
		addWeapons ["NVGoggles","ACE_Map","ACE_Map_Tools"];
	};
	case "ATGMA" : { //Оператор
		addMagazines("30Rnd_762x39_AK47",6);
		addWeapons ["ACE_AKM","ACE_Rucksack_EAST"];
		addMagazines("ACE_RDGM",2);
		addWeapons ["Binocular"];
		addWeapons ["NVGoggles"];
		_unit addMagazine "ACE_Konkurs_CSWDM";
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Konkurs_CSWDM",1],["30Rnd_762x39_AK47",10]]];
	};
	case "HAT" : { //1й номер расчета РПГ-29
		addMagazines("30Rnd_762x39_AK47",6);
		addWeapons ["ACE_AKM"];
		addMagazines("ACE_RPG29_PG29",3);
		addWeapons ["ACE_RPG29"];
		addWeapons ["ACE_Earplugs"];
		addWeapons ["NVGoggles"];
	};
	case "AHAT" : { //2й номер расчета РПГ-29
		addMagazines("30Rnd_762x39_AK47",6);
		addWeapons ["ACE_AKM","ACE_Rucksack_EAST"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["NVGoggles","Binocular"];
		addWeapons ["ACE_Earplugs"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_RPG29_PG29",2],["ACE_RPG29_TBG29",2]]];
	};
//отделение АГС
	case "AGL" : { //Старший наводчик
		addWeapons ["ACE_Map"];
		addWeapons ["ACE_Map_Tools"];
		addMagazines("30Rnd_762x39_AK47",6);
		addWeapons ["ACE_AKM"];
		addWeapons ["ACE_AGS30Proxy"];
		addWeapons ["ACE_Earplugs"];
		addMagazines("ACE_AGS30_CSWDM",2);
		addWeapons ["NVGoggles"];
	};
	case "AGLAG" : { //Наводчик
		addMagazines("30Rnd_762x39_AK47",6);
		addWeapons ["ACE_AKM"];
		addWeapons ["ACE_AGS30TripodProxy"];
		addMagazines("ACE_AGS30_CSWDM",2);
		addMagazines("ACE_RDGM",2);
		addWeapons ["Binocular"];
		addWeapons ["NVGoggles"];
		addWeapons ["ACE_Earplugs"];
	};
	case "AGLAB" : { //Номер расчета
		addMagazines("30Rnd_762x39_AK47",4);
		addWeapons ["ACE_AKM","ACE_Rucksack_EAST"];
		addMagazines("ACE_RDGM",2);
		addMagazines("ACE_AGS30_CSWDM",3);
		addWeapons ["NVGoggles"];
		addWeapons ["ACE_Earplugs"];
		_unit setVariable ["ACE_RuckMagContents",[["HandGrenade_East",4],["30Rnd_762x39_AK47",4]]];
	};
//стрелковое отделение
	case "MR" : { //Стрелок СВД
		addMagazines("10Rnd_762x54_SVD",7);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addWeapons ["SVD"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		_unit addMagazine "ACE_MON50_M";
		addWeapons ["Binocular"];
		addMagazines("ACE_20Rnd_9x18_APSB",3);
		addWeapons ["ACE_APSB"];
	};
	case "SN" : { //Снайпер
		addWeapons ["ACE_Map"];
		addWeapons ["ItemGPS"];
		addMagazines("10Rnd_762x54_SVD",7);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addWeapons ["ACE_SVD_Bipod"];
		_unit addMagazine "ACE_MON50_M";
		addMagazines("ACE_RDGM",2);
		addWeapons ["NVGoggles"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10]]];
	};
	case "HSN" : { //Снайпер КСВК
		addWeapons ["ACE_Map"];
		addWeapons ["ItemGPS"];
		addMagazines("5Rnd_127x108_KSVK",6);
		addWeapons ["KSVK"];
		_unit addMagazine "ACE_MON50_M";
		addMagazines("ACE_RDGM",2);
		addWeapons ["NVGoggles"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x108_KSVK",10],["ACE_MON50_M",1]]];
	};
	case "ASN" : { //Снайпер-наблюдатель
		addWeapons ["ACE_SVD_Bipod"];
		addWeapons ["Binocular_Vector"];
		addMagazines("ACE_Battery_Rangefinder";,2);
		addMagazines("10Rnd_762x54_SVD",5);
		addMagazines("ACE_10Rnd_762x54_T_SVD",1);
		addWeapons ["ACE_Kestrel4500"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["NVGoggles"];
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10],["ACE_MON50_M",1]]];

	};
//отделение сбора и эвакуации раненых
	case "MED_SL" : { //Командир отделения - санитарный инструктор
		addWeapons ["ACE_Map"];
		addMagazines("30Rnd_762x39_AK47",8);
		addWeapons ["ACE_AKM"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["NVGoggles"];
		addWeapons ["ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3],["ACE_Splint",3],["ACE_IV",3],["ACE_Plasma",3]]]
	};
	case "MED" : { //Санитар
		addMagazines("30Rnd_762x39_AK47",4);
		addWeapons ["ACE_AKM"];
		addMagazines("ACE_RDGM",2);
		addMagazines("HandGrenade_East",2);
		addWeapons ["ACE_Rucksack_MOLLE_DMARPAT_Medic"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
	};
//экипаж
	case "CRWVC" : { //Командир техники
		addWeapons ["ACE_Map"];
		addWeapons ["ACE_Map_Tools"];
		addWeapons ["ItemGPS"];
		addMagazines("30Rnd_762x39_AK47",4);
		addWeapons ["ACE_AKMS"];
		addMagazines("8Rnd_9x18_Makarov",5);
		addWeapons ["Makarov"];
		addWeapons ["NVGoggles"];
	};
	case "CRW" : { //Экипаж
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["ACE_AKMS"];
	};
	case "PL" : { //Пилот
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["ACE_AKMS"];
		addMagazines("8Rnd_9x18_Makarov",5);
		addWeapons ["Makarov"];
		addWeapons ["NVGoggles"];
		addWeapons ["ACE_GlassesSunglasses"];
	};
//специалисты
	case "AA" : { //ПЗРК
		addWeapons ["ACE_Map"];
		addMagazines("30Rnd_762x39_AK47",4);
		addWeapons ["ACE_AKMS"];
		addWeapons ["Strela"];
		_unit addMagazine "Strela";
		addWeapons ["NVGoggles"];
	};
};
