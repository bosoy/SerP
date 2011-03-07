#define addWeapons {_unit addWeapon _x} forEach 
#define addMagazines(a,b) for "_i" from 1 to b do {_unit addMagazine a}
_unit = _this select 0;
_loadout = toUpper (_this select 1);
switch _loadout do {
//командование взвода
	case "OFF" : { //Командир взвода
		_unit addWeapon "ACE_Map";
		_unit addWeapon "ACE_Map_Tools";
		_unit addWeapon "ItemGPS";
		{_unit addMagazine "ACE_30Rnd_762x39_T_AK47"} forEach [0,0,0,0];
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "Binocular";
		{_unit addMagazine "8Rnd_9x18_Makarov"} forEach [0,0,0,0,0];
		_unit addWeapon "Makarov";
		_unit addWeapon "NVGoggles";
		_unit addWeapon "ACE_ANPRC77";
	};
//МСВ
	case "SL" : { //Комод
		_unit addWeapon "ACE_Map";
		_unit addWeapon "ACE_Map_Tools";
		_unit addWeapon "ItemGPS";
		{_unit addMagazine "ACE_30Rnd_762x39_T_AK47"} forEach [0,0,0,0];
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "Binocular";
		{_unit addMagazine "8Rnd_9x18_Makarov"} forEach [0,0,0,0,0];
		_unit addWeapon "Makarov";
		_unit addWeapon "NVGoggles";
		_unit addWeapon "ACE_ANPRC77";
	};
	case "TL" : { //Старший стрелок
		_unit addWeapon "ACE_Map";
		{_unit addMagazine "ACE_30Rnd_762x39_T_AK47"} forEach [0,0,0,0];
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0];
		{_unit addMagazine "1Rnd_HE_GP25"} forEach [0,0,0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM_GL";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "Binocular";
		_unit addWeapon "NVGoggles";
	};
	case "MG" : { //Пулеметчик
		{_unit addMagazine "100Rnd_762x54_PK"} forEach [0,0,0];
		_unit addWeapon "PK";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "NVGoggles";
		_unit addWeapon "ACE_Earplugs";
	};
	case "AR" : { //Пулеметчик РПК
		{_unit addMagazine "ACE_75Rnd_762x39_B_AK47"} forEach [0,0,0,0,0,0,0];
		_unit addWeapon "ACE_RPK";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "NVGoggles";
		_unit addWeapon "ACE_Earplugs";
	};
	case "AMG" : { //Помошник пулеметчика
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "Binocular";
		_unit addWeapon "ACE_Earplugs";
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]]];
	};
	case "AT" : { //1й номер расчета РПГ
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_PG7VM_PGO7"} forEach [0,0,0];
		_unit addWeapon "ACE_RPG7V_PGO7";
		_unit addWeapon "ACE_Earplugs";
		_unit addWeapon "NVGoggles";
	};
	case "AAT" : { //2й номер расчета РПГ
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "ACE_Earplugs";
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_PG7VM_PGO7",4]]];
	};
	case "GL" : { //Стрелок с ГП
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		{_unit addMagazine "1Rnd_HE_GP25"} forEach [0,0,0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM_GL";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0,0];
	};
	case "GLAT" : { //Стрелок с ГП РПГ27
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		{_unit addMagazine "1Rnd_HE_GP25"} forEach [0,0,0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM_GL";
		_unit addWeapon "ACE_RPG22";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0,0];
	};
	case "LAT" : { // Стрелок РПГ-27
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "ACE_RPG22";
	};
	case "RF" : { // Стрелок
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
	};
//разведотделение
	case "R_SL_GP" : { //Командир отделения разведки
		_unit addWeapon "ACE_Map";
		_unit addWeapon "ACE_Map_Tools";
		_unit addWeapon "ItemGPS";
		{_unit addMagazine "ACE_30Rnd_545x39_T_AK"} forEach [0,0,0,0];
		{_unit addMagazine "30Rnd_545x39_AK"} forEach [0,0,0,0];
		{_unit addMagazine "1Rnd_HE_GP25"} forEach [0,0,0,0,0,0,0,0];
		_unit addWeapon "AK_74_GL";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "Binocular";
		_unit addWeapon "NVGoggles";
		_unit addWeapon "ACE_ANPRC77";
	};
	case "R_TL" : { //Старший разведчик
		_unit addWeapon "ACE_Map";
		{_unit addMagazine "ACE_30Rnd_545x39_T_AK"} forEach [0,0,0,0];
		{_unit addMagazine "30Rnd_545x39_AK"} forEach [0,0,0,0];
		_unit addWeapon "AKS_74_pso";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "NVGoggles";
		{_unit addMagazine "ACE_20Rnd_9x18_APSB"} forEach [0,0,0,0,0];
		_unit addWeapon "ACE_APSB";
		_unit addWeapon "ACE_RPG22";
	};
	case "R_SN" : { //Разведчик - снайпер
		{_unit addMagazine "10Rnd_762x54_SVD"} forEach [0,0,0,0,0,0,0,0];
		_unit addWeapon "SVD_des_EP1";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "Binocular";			
		{_unit addMagazine "ACE_20Rnd_9x18_APSB"} forEach [0,0,0,0,0];
		_unit addWeapon "ACE_APSB";
		_unit addWeapon "NVGoggles";
	};
	case "R_MG" : { //Разведчик - пулеметчик
		{_unit addMagazine "100Rnd_762x54_PK"} forEach [0,0,0];
		_unit addWeapon "PK";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "NVGoggles";
		_unit addWeapon "ACE_Earplugs";
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",4]]];
	};
	case "R_R" : { // Разведчик - радиотелефонист
		{_unit addMagazine "30Rnd_545x39_AK"} forEach [0,0,0,0,0,0,0,0];
		_unit addWeapon "AK_74";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "NVGoggles";
		_unit addWeapon "ACE_ANPRC77";
	};
	case "R_SAP" : { // Разведчик - сапер
		_unit addWeapon "ACE_Map";
		{_unit addMagazine "30Rnd_545x39_AK"} forEach [0,0,0,0,0,0,0,0];
		_unit addWeapon "AK_74";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "NVGoggles";
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_MON50_M",5],["PipeBomb",2]]];
	};
	case "R_VSS" : { // Разведчик - ВСС
		{_unit addMagazine "ACE_30Rnd_762x39_SD_AK47"} forEach [0,0,0,0,0,0,0,0];
		_unit addWeapon "ACE_AKMS_SD";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "NVGoggles";
		_unit addWeapon "ACE_RPG22";
	};
//отделение ПТУР
	case "ATGM" : { //Старший оператор
		_unit addWeapon "ACE_Map";
		_unit addWeapon "ACE_Map_Tools";
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		_unit addWeapon "MetisLauncher";
		_unit addMagazine "AT13";
		_unit addWeapon "NVGoggles";
	};
	case "ATGMA" : { //Оператор
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		_unit addWeapon "Binocular";
		_unit addWeapon "NVGoggles";
		_unit addMagazine "AT13";
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["AT13",1],["30Rnd_762x39_AK47",10]]];
	};
	case "HAT" : { //1й номер расчета РПГ-29
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_RPG29_PG29"} forEach [0,0,0];
		_unit addWeapon "ACE_RPG29";
		_unit addWeapon "ACE_Earplugs";
		_unit addWeapon "NVGoggles";
	};
	case "AHAT" : { //2й номер расчета РПГ-29
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "NVGoggles";
		_unit addWeapon "Binocular";
		_unit addWeapon "ACE_Earplugs";
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_RPG29_PG29",2],["ACE_RPG29_TBG29",2]]];
	};
//отделение АГС
	case "AGL" : { //Старший наводчик
		_unit addWeapon "ACE_Map";
		_unit addWeapon "ACE_Map_Tools";
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		_unit addWeapon "ACE_AGS30Proxy";
		_unit addWeapon "ACE_Earplugs";
		{_unit addMagazine "ACE_AGS30_CSWDM"} forEach [0,0];
		_unit addWeapon "NVGoggles";
	};
	case "AGLAG" : { //Наводчик
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		_unit addWeapon "ACE_AGS30TripodProxy";
		{_unit addMagazine "ACE_AGS30_CSWDM"} forEach [0,0];
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		_unit addWeapon "Binocular";
		_unit addWeapon "NVGoggles";
		_unit addWeapon "ACE_Earplugs";
	};
	case "AGLAB" : { //Номер расчета
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "ACE_AGS30_CSWDM"} forEach [0,0,0];
		_unit addWeapon "NVGoggles";
		_unit addWeapon "ACE_Earplugs";
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["HandGrenade_East",4],["30Rnd_762x39_AK47",4]]];
	};
//стрелковое отделение
	case "MR" : { //Стрелок СВД
		{_unit addMagazine "10Rnd_762x54_SVD"} forEach [0,0,0,0,0,0,0];
		{_unit addMagazine "ACE_10Rnd_762x54_T_SVD"} forEach [0];
		_unit addWeapon "SVD";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addMagazine "ACE_MON50_M";
		_unit addWeapon "Binocular";
		{_unit addMagazine "ACE_20Rnd_9x18_APSB"} forEach [0,0,0,0,0];
		_unit addWeapon "ACE_APSB";
	};
	case "SN" : { //Снайпер
		_unit addWeapon "ACE_Map";
		_unit addWeapon "ItemGPS";
		{_unit addMagazine "10Rnd_762x54_SVD"} forEach [0,0,0,0,0,0,0,0];
		{_unit addMagazine "ACE_10Rnd_762x54_T_SVD"} forEach [0];
		_unit addWeapon "ACE_SVD_Bipod";
		_unit addMagazine "ACE_MON50_M";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		_unit addWeapon "NVGoggles";
		{_unit addMagazine "ACE_20Rnd_9x18_APSB"} forEach [0,0,0,0,0];
		_unit addWeapon "ACE_APSB";
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10]]];
	};
	case "HSN" : { //Снайпер КСВК
		_unit addWeapon "ACE_Map";
		_unit addWeapon "ItemGPS";
		{_unit addMagazine "5Rnd_127x108_KSVK"} forEach [0,0,0,0,0,0,0,0,0];
		_unit addWeapon "KSVK";
		_unit addMagazine "ACE_MON50_M";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		_unit addWeapon "NVGoggles";
		{_unit addMagazine "ACE_20Rnd_9x18_APSB"} forEach [0,0,0,0,0];
		_unit addWeapon "ACE_APSB";
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["5Rnd_127x108_KSVK",10],["ACE_MON50_M",1]]];
	};
	case "ASN" : { //Снайпер-наблюдатель
		_unit addWeapon "ACE_SVD_Bipod";
		_unit addWeapon "Binocular_Vector";
		{_unit addMagazine "ACE_Battery_Rangefinder";} forEach [0,0];
		{_unit addMagazine "10Rnd_762x54_SVD"} forEach [0,0,0,0,0];
		{_unit addMagazine "ACE_10Rnd_762x54_T_SVD"} forEach [0];
		_unit addWeapon "ACE_Kestrel4500";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "NVGoggles";
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_EAST"];
		_unit setVariable ["ACE_RuckMagContents",[["10Rnd_762x54_SVD",10],["ACE_MON50_M",1]]];
		
	};
//отделение сбора и эвакуации раненых
	case "MED_SL" : { //Командир отделения - санитарный инструктор
		_unit addWeapon "ACE_Map";
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "NVGoggles";
		_unit addWeapon "ACE_Rucksack_MOLLE_DMARPAT_Medic";
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_LargeBandage",5],["ACE_Tourniquet",3],["ACE_Splint",3],["ACE_IV",3],["ACE_Plasma",3]]]
	};
	case "MED" : { //Санитар
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0,0,0];
		_unit addWeapon "ACE_AKM";
		{_unit addMagazine "ACE_RDGM"} forEach [0,0];
		{_unit addMagazine "HandGrenade_East"} forEach [0,0];
		_unit addWeapon "ACE_Rucksack_MOLLE_DMARPAT_Medic";
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
	};
//экипаж
	case "CRWVC" : { //Командир техники
		_unit addWeapon "ACE_Map";
		_unit addWeapon "ACE_Map_Tools";
		_unit addWeapon "ItemGPS";
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0];
		_unit addWeapon "ACE_AKMS";
		{_unit addMagazine "8Rnd_9x18_Makarov"} forEach [0,0,0,0,0];
		_unit addWeapon "Makarov";
		_unit addWeapon "NVGoggles";
	};
	case "CRW" : { //Экипаж
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		_unit addWeapon "ACE_AKMS";
	};
	case "PL" : { //Пилот
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0,0,0];
		_unit addWeapon "ACE_AKMS";
		{_unit addMagazine "8Rnd_9x18_Makarov"} forEach [0,0,0,0,0];
		_unit addWeapon "Makarov";
		_unit addWeapon "NVGoggles";
		_unit addWeapon "ACE_GlassesSunglasses";
	};
//специалисты
	case "AA" : { //ПЗРК
		_unit addWeapon "ACE_Map";
		{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0,0];
		_unit addWeapon "ACE_AKMS";
		_unit addWeapon "Strela";		
		_unit addMagazine "Strela";		
		_unit addWeapon "NVGoggles";
	};
};
