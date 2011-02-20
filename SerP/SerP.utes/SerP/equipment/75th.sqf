_75th_processor = {
	_unit = _this select 0;
	_type = toUpper (_this select 1);
	switch _type do {
// HQ
		case "OFF": {
			addWeapons ["M9", "M16A4_ACG", "Binocular", "NVGoggles"];
			addWeapons ["ACE_Map", "ACE_Map_Tools", "ACE_DAGR", "ItemGPS", "ACE_GlassesLHD_glasses"];
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("30Rnd_556x45_Stanag",3);
			addMagazines("SmokeShell",2);
			addMagazines("15Rnd_9x19_M9",2);
		};
		case "PSG" : { //Platoon sergant
			addWeapons ["M9", "M16A4_ACG", "Binocular", "NVGoggles"];
			addWeapons ["ACE_Map", "ACE_Map_Tools", "ItemGPS", "ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			addMagazines("15Rnd_9x19_M9", 2);
		};
		case "ENG": { //RATELO
			addWeapons ["M9", "m16a4", "NVGoggles", "ACE_ANPRC77" , "ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag", 1);
			addMagazines("SmokeShell", 2);
			addMagazines("HandGrenade_West",2);
			addMagazines("15Rnd_9x19_M9", 2);
		};
// Rifle squad
		case "SL" : { //Squad Leader
			addWeapons ["M9", "M16A4_ACG", "Binocular", "NVGoggles"];
			addWeapons ["ACE_Map", "ACE_Map_Tools", "ItemGPS", "ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag",5);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("15Rnd_9x19_M9", 2);
		};
		case "TL" : { // FT Leader
			addWeapons ["M16A4_ACG_GL", "Binocular", "NVGoggles"];
			addWeapons ["ACE_Map", "ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("ACE_1Rnd_HE_M203",4);
			addMagazines("SmokeShell", 2);
			addMagazines("HandGrenade_West",2);
		};
		case "AR" : { // Automatic Rifleman
			addWeapons ["M249_m145_EP1", "NVGoggles"];
			addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
			addMagazines("200Rnd_556x45_M249",3);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
		};
		case "AT" : { // Operator "Javelin"
			addWeapons ["Javelin", "M16A4", "M9", "NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",5);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("15Rnd_9x19_M9",2);
		};
		case "GL": { // Greanadier
			addWeapons ["ACE_M16A4_CCO_GL", "NVGoggles", "ACE_FAST_PackEDC_ACU"];
			addWeapons ["ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag", 6);
			addMagazines("1Rnd_Smoke_M203",2);
			addMagazines("1Rnd_HE_M203",4);
			addMagazines("FlareRed_M203",2);
			addMagazines("ACE_12Rnd_45ACP_USPSD",2);
			_unit setVariable ["ACE_RuckMagContents",[["FlareRed_M203", 4], ["1Rnd_HE_M203", 6], ["1Rnd_Smoke_M203", 6]]];
		};
		case "GL2": { // Greanadier
			addWeapons ["ACE_M16A4_CCO_GL", "NVGoggles", "ACE_FAST_PackEDC_ACU"];
			addWeapons ["ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag", 6);
			addMagazines("1Rnd_Smoke_M203",2);
			addMagazines("1Rnd_HE_M203",4);
			addMagazines("FlareRed_M203",2);
			addMagazines("ACE_12Rnd_45ACP_USPSD",2);
			addMagazines("6Rnd_HE_M203",3);
			_unit setVariable ["ACE_weapononback","ACE_M32"];
			_unit setVariable ["ACE_RuckMagContents",[["FlareRed_M203", 4], ["6Rnd_HE_M203", 1], ["1Rnd_Smoke_M203", 6]]];
		};
		case "LAT": { // Rifleman AT
			addWeapons ["M136", "M16A4", "NVGoggles", "ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("HandGrenade_West",4);
			addMagazines("SmokeShell",2);
		};
		case "DM" : {// Marksman
			addWeapons ["DMR", "M9","NVGoggles"];
			addWeapons ["ACE_GlassesLHD_glasses"];
			addMagazines("20Rnd_762x51_DMR",6);
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("15Rnd_9x19_M9",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			_unit setVariable ["ACE_weapononback","M16A4_ACG"];
		};
		case "MED": {//Medic
			addWeapons ["m16a4","ACE_Rucksack_MOLLE_DMARPAT_Medic","NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("SmokeShell",4);
			addMagazines("ACE_LargeBandage",2);
			addMagazines("ACE_Bandage",2);
			addMagazines("ACE_Morphine",2);
			addMagazines("ACE_Epinephrine",2);
			addMagazines("ACE_Medkit",2);
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
		};
// Weapon sqaud
		case "MG" : {// Machinegunner
			addWeapons ["M9", "Mk_48_DES_EP1", "Binocular", "NVGoggles"];
			addWeapons ["ACE_Earplugs","ACE_Map","ItemGPS","ACE_GlassesLHD_glasses"];
			addMagazines("100Rnd_762x51_M240", 2);
			addMagazines("SmokeShell", 2);
			addMagazines("HandGrenade_West", 2);
			addMagazines("ACE_M7A3", 2);
			addMagazines("SmokeShellGreen", 2);
			addMagazines("15Rnd_9x19_M9", 2);
		};
		case "AG" : { // Asst. Machinegunner
			addWeapons ["M16A4", "NVGoggles", "ACE_Earplugs","ACE_Rucksack_MOLLE_Green"];
			addWeapons ["ACE_Earplugs","ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);		
			_unit setVariable ["ACE_RuckMagContents", [["100Rnd_762x51_M240", 2], ["ACE_Claymore_M", 2]]];
		};
//sniper team
		case "SN2": {// Sniper
			addWeapons ["M24_des_EP1","M9","NVGoggles", "Binocular"];
			addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
			addMagazines("5Rnd_762x51_M24",6);
			addMagazines("15Rnd_9x19_M9",2);
			addMagazines("SmokeShell",2);
		};
		case "SN": {// Sniper
			addWeapons ["m107", "NVGoggles", "Binocular"];
			addWeapons ["ACE_Map", "ACE_Map_Tools", "ItemGPS", "ACE_GlassesLHD_glasses"];
			addMagazines("10Rnd_127x99_m107",5);
			addMagazines("ACE_10Rnd_127x99_T_m107",1);
			addMagazines("ACE_10Rnd_127x99_Raufoss_m107",1);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",3);
		};
		
		// Assist. Sniper SF
		case "ASN" : {
			addWeapons ["ACE_M4A1_AIM_GL","NVGoggles","ACE_Rangefinder_OD","ACE_FAST_PackEDC_ACU"];
			addWeapons ["ACE_GlassesLHD_glasses","ACE_Kestrel4500"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("1Rnd_HE_M203",6);
			addMagazines("ACE_SSWhite_M203",2);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_Battery_Rangefinder",2);
			_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",2],["FlareRed_M203",4],["ACE_SSWhite_M203",2],["5Rnd_762x51_M24",4]]];
		};

// ASSAULT SECTION Squad
		case "ASG" : {// ASSAULT SECTION GUNNER
			addWeapons ["m16a4","MAAWS","NVGoggles"];			
			addWeapons ["ACE_Earplugs","ACE_Map","ItemGPS", "ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("SmokeShell",2);
			addMagazines("MAAWS_HEAT",1);
			addMagazines("ACE_MAAWS_HE",1);
			addMagazines("ACE_ANM14",2);
		};
		case "ASAG" : {// ASSAULT SECTION assistant GUNNER
			addWeapons ["m16a4","ACE_Rucksack_MOLLE_Green","ACE_YardAge450","NVGoggles"];
			addWeapons ["ACE_Earplugs","ACE_Map","ItemGPS", "ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_C4_M",3);
			addMagazines("ACE_MAAWS_HE",1);
			_unit setVariable ["ACE_RuckMagContents",[["MAAWS_HEDP",1],["MAAWS_HEAT",1]]];
		};

//mortar
		case "MOG" : {//Mortar gunner
			addWeapons ["M16A4","ACE_M224Proxy","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs","ACE_Map","ACE_Map_Tools","ACE_DAGR","ItemGPS", "ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_M224HE_CSWDM",3);
			addMagazines("ACE_M224IL_CSWDM",2);
		};
		case "MOAG" : {//Mortar Asst. Gunner
			addWeapons ["M16A4","ACE_M224TripodProxy","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_Green"];
			_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",2]]];
		};
		case "MOAB" : {//Mortar Ammo Bearer
			addWeapons ["M16A4","ACE_Rucksack_MOLLE_Green","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			_unit setVariable ["ACE_RuckMagContents",[["ACE_M224HE_CSWDM",5]]];
		};
//crew
		case "CRW": {// Crewman
			addWeapons ["M4A1","NVGoggles"];
			addWeapons ["ACE_GlassesLHD_glasses"];
			addMagazines("30Rnd_556x45_Stanag",4);
		};
		case "LPL": {//Pilot
			addWeapons ["M9","NVGoggles"];
			addWeapons ["ACE_GlassesSunglasses","ACE_Map"];
			addMagazines("15Rnd_9x19_M9",2);
		};
		case "PL": {//Pilot
			addWeapons ["M4A1","M9","NVGoggles"];
			addWeapons ["ACE_GlassesSunglasses","ACE_Map"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("15Rnd_9x19_M9",2);
		};
	};
};
