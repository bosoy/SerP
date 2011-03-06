﻿_cargoCrate_processor = {
	_veh = _this select 0;
	_loadout = toUpper (_this select 1);
	switch _loadout do {
	//NATO
		case "556M_BIG" : {//5.56x45 magazine
			[_veh, "ACE_Tbox_US", [["30Rnd_556x45_Stanag",30], ["ACE_30Rnd_556x45_T_Stanag",6]]] call SerP_addCargoBox;
		};
		case "556B" : {//5.56x45 Belt
			[_veh, "ACE_Tbox_US", [["200Rnd_556x45_M249",5],["100Rnd_556x45_M249",5]]] call SerP_addCargoBox;
		};
		case "762X51B" : {// 7.62x51 Belt
			[_veh, "ACE_Tbox_US", [["100Rnd_762x51_M240",10]]] call SerP_addCargoBox;
		};
		case "GREN_WEST" : {// Grenade
			[_veh, "ACE_Tbox_US", [["HandGrenade_West",15], ["SmokeShell",10]]] call SerP_addCargoBox;
		};		
		case "60MMHE" : {// M224 60 mm HE
			[_veh, "ACE_Tbox_US", [["ACE_M224HE_CSWDM",10]]] call SerP_addCargoBox;
		};
		case "60MMWP" : {// M224 60 mm WP
			[_veh, "ACE_Tbox_US", [["ACE_M224WP_CSWDM",10]]] call SerP_addCargoBox;
		};
		case "M2CSWDM" : {// M2 ammo box
			[_veh, "ACE_Tbox_US", [["ACE_M2_CSWDM",5]]] call SerP_addCargoBox;
		};
		case "MK19CSWDM" : {// Mk 19 ammo box
			[_veh, "ACE_Tbox_US", [["ACE_MK19_CSWDM",5]]] call SerP_addCargoBox;
		};
		
	//RUS
		case "545M_BIG" : {// 5.45x39 AK 
			[_veh, "ACE_Tbox_RU", [["30Rnd_545x39_AK",20]]] call SerP_addCargoBox;
		};
		case "762X54B" : {// 7.62x54 Belt
			[_veh, "ACE_Tbox_RU", [["100Rnd_762x54_PK",5]]] call SerP_addCargoBox;
		};		
		case "82MMHE" : {// 2B14 82 mm HE
			[_veh, "ACE_Tbox_RU", [["ACE_2B14HE_CSWDM",10]]] call SerP_addCargoBox;
		};		
		case "9M32" : {// 9M32 Strela
			[_veh, "ACE_Tbox_RU", [["Strela",2]],[["Strela",1]]] call SerP_addCargoBox;
		};
		case "9M39" : {// 9M39 Igla
			[_veh,"ACE_Tbox_RU", [["Igla",2]],[["Igla",1]]] call SerP_addCargoBox;
		};
		case "9M115" : {// 9К131 Metis-M Ammo DEP
			[_veh,"ACE_Tbox_RU",[["AT13",3]]] call SerP_addCargoBox;
		};
		case "9M131" : {// 9К131 Metis-M Ammo TB
			[_veh,"ACE_Tbox_RU",[["ACE_AT13TB",3]]] call SerP_addCargoBox;
		};
		case "9P151" : {// 9K113 Metis-M Launcher
			[_veh,"ACE_Tbox_RU",[["AT13",2]],[["MetisLauncher",1]]] call SerP_addCargoBox;
		};
		case "9M113" : {// 9K113 Konkurs-M Ammo
			[_veh,"ACE_Tbox_RU",[["ACE_KonkursM_CSWDM",3]]] call SerP_addCargoBox;
		};		
		case "9P135" : {// 9K113 Konkurs-M Launcher
			[_veh,"ACE_Tbox_RU",[["ACE_KonkursM_CSWDM",2]],[["ACE_KonkursTripodProxy",1]]] call SerP_addCargoBox;
		};
		
	//Other
		case "FLARE" : {// Flaregun
			[_veh, "ACE_Tbox_RU", [["ACE_SSGreen_FG",20],["ACE_SSRed_FG",20]], [["ACE_Flaregun",3]]] call SerP_addCargoBox;
		};
		default {diag_log format ["SerP - ammo_tbox.sqf, undefined box type - %1", _loadout];};
	};
};