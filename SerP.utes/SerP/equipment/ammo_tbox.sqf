_cargoCrate_processor = {
	_box = _this select 0;
	_loadout = toUpper (_this select 1);
	switch _loadout do {
	//NATO
		case "556M_BIG" : {//5.56x45 magazine
			[_box, "ACE_Tbox_US", [["30Rnd_556x45_Stanag",30], ["ACE_30Rnd_556x45_T_Stanag",6]]] call SerP_addCargoBoxr;
		};
		case "556B" : {//5.56x45 Belt
			[_box, "ACE_Tbox_US", [["200Rnd_556x45_M249",5],["100Rnd_556x45_M249",5]]] call SerP_addCargoBoxr;
		};
		case "762X51B" : {// 7.62x51 Belt
			[_box, "ACE_Tbox_US", [["100Rnd_762x51_M240",10]]] call SerP_addCargoBoxr;
		};
		case "GREN_WEST" : {// Grenade
			[_box, "ACE_Tbox_US", [["HandGrenade_West",15], ["SmokeShell",10]]] call SerP_addCargoBoxr;
		};		
		case "60MMHE" : {// M224 60 mm HE
			[_box, "ACE_Tbox_US", [["ACE_M224HE_CSWDM",10]]] call SerP_addCargoBoxr;
		};
		case "60MMWP" : {// M224 60 mm WP
			[_box, "ACE_Tbox_US", [["ACE_M224WP_CSWDM",10]]] call SerP_addCargoBoxr;
		};
		case "M2CSWDM" : {// M2 ammo box
			[_box, "ACE_Tbox_US", [["ACE_M2_CSWDM",5]]] call SerP_addCargoBoxr;
		};
		case "MK19CSWDM" : {// Mk 19 ammo box
			[_box, "ACE_Tbox_US", [["ACE_MK19_CSWDM",5]]] call SerP_addCargoBoxr;
		};
		
	//RUS
		case "545M_BIG" : {// 5.45x39 AK 
			[_box, "ACE_Tbox_RU", [["30Rnd_545x39_AK",20]]] call SerP_addCargoBoxr;
		};
		case "762X54B" : {// 7.62x54 Belt
			[_box, "ACE_Tbox_RU", [["100Rnd_762x54_PK",5]]] call SerP_addCargoBoxr;
		};		
		case "82MMHE" : {// 2B14 82 mm HE
			[_box, "ACE_Tbox_RU", [["ACE_2B14HE_CSWDM",10]]] call SerP_addCargoBoxr;
		};		
		case "9M32" : {// 9M32 Strela
			[_box, "ACE_Tbox_RU", [["Strela",2]],[["Strela",2]]] call SerP_addCargoBoxr;
		};
		case "9M115" : {// 9К131 Metis-M Ammo DEP
			[_box,"ACE_Tbox_RU",[["AT13",3]]] call SerP_addCargoBoxr;
		};
		case "9M131" : {// 9К131 Metis-M Ammo TB
			[_box,"ACE_Tbox_RU",[["ACE_AT13TB",3]]] call SerP_addCargoBoxr;
		};
		case "9P151" : {// 9K113 Metis-M Launcher
			[_box,"ACE_Tbox_RU",[],[["MetisLauncher",3]]] call SerP_addCargoBoxr;
		};
		case "9M113" : {// 9K113 Konkurs-M Ammo
			[_box,"ACE_Tbox_RU",[["ACE_KonkursM_CSWDM",3]]] call SerP_addCargoBoxr;
		};		
		case "9P135" : {// 9K113 Konkurs-M Launcher
			[_box,"ACE_Tbox_RU",[],[["ACE_KonkursTripodProxy",3]]] call SerP_addCargoBoxr;
		};
		
	//Other
		case "FLARE" : {// Flaregun
			[_box, "ACE_Tbox_RU", [["ACE_SSGreen_FG",20],["ACE_SSRed_FG",20]], [["ACE_Flaregun",3]]] call SerP_addCargoBoxr;
		};
	};
};