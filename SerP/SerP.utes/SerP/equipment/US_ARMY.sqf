
_US_ARMY_processor = {
	_unit = _this select 0;
	_type = toUpper (_this select 1);
	switch _type do {
//Platoon command
		case "OFF": {// Officer
			addWeapons ["ACE_M4","M9","Binocular","NVGoggles"];
			addWeapons ["ACE_Map","ACE_Map_Tools","ACE_DAGR","ItemGPS"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("15Rnd_9x19_M9",2);
		};
		case "PSG" : {//Platoon sergant
			addWeapons ["ACE_M4","M136","M9","Binocular","NVGoggles"];
			addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("15Rnd_9x19_M9",2);
		};
		case "RATELO": {//RATELO
			addWeapons ["ACE_M4","ACE_ANPRC77","M9","Binocular","NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
		};
		case "FO": {// Forward observer
			addWeapons ["ACE_M4","M9","Binocular","NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
		};
//Rifle squad
		case "SL": {// Squad Lider
			addWeapons ["ACE_M4","ACE_ANPRC77","M9","Binocular","NVGoggles"];
			addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("15Rnd_9x19_M9",2);
		};
		
		case "TL": {// FT Leader
			addWeapons ["ACE_M4_ACOG","Binocular","NVGoggles"];
			addWeapons ["ACE_Map"];
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
		};

		case "GL": {// Greanadier
			addWeapons ["ACE_M4_AIM_GL","ACE_Rucksack_MOLLE_ACU","NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			addMagazines("1Rnd_HE_M203",4);
			_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["FlareRed_M203",4],["ACE_SSWhite_M203",4],["ACE_1Rnd_CS_M203",2]]];
		};
		case "AR" : {// Automatic Rifleman
			addWeapons ["M249_EP1","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("200Rnd_556x45_M249",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
		};

		case "LAT": {// Rifleman AT
			addWeapons ["M4A1_AIM","M136","NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);	
		};

		case "AT": {//AT Operator
			addWeapons ["M4A1","M47Launcher_EP1","NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("SmokeShell",2);
			addMagazines("Dragon_EP1",1);
		};

		case "HAT" : {//Javelin Operator 
			addWeapons ["M4A1","Javelin","NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("SmokeShell",2);
			addMagazines("Javelin",1);
		};
		case "AHAT" : {//Assistant Javelin Operator 
			addWeapons ["M4A1","ACE_Rucksack_MOLLE_ACU","Binocular","NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("Javelin",1);
			addMagazines("SmokeShell",2);
			_unit setVariable ["ACE_RuckMagContents",[["Javelin",1],["30Rnd_556x45_Stanag",4]]];
		};
		case "DM" : {//Designated marksman
			addWeapons ["M16A4_ACG","NVGoggles"];
			addMagazines("ACE_20Rnd_556x45_S_Stanag",8);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
		};
//weapon squad
		case "MG": {// Machinegunner
			addWeapons ["M240","M9","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("100Rnd_762x51_M240",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			addMagazines("15Rnd_9x19_M9",2);
		};
		
		case "AG": {//Asst. Machinegunner
			addWeapons ["M4A1","ACE_Rucksack_MOLLE_ACU","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 2]]];
		};
		case "AB": {//Ammo bearer
			addWeapons ["M4A1","ACE_Rucksack_MOLLE_ACU","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 4]]];
		};
		
//sniper team
		case "SN": {// Sniper
			addWeapons ["m107","M9","NVGoggles","ACE_USPSD"];
			addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
			addMagazines("10Rnd_127x99_m107",8);
			addMagazines("ACE_10Rnd_127x99_T_m107",1);
			addMagazines("ACE_10Rnd_127x99_Raufoss_m107",1);
			addMagazines("15Rnd_9x19_M9",2);
			addMagazines("SmokeShell",2);
		};
		// Assist. Sniper SF
		case "ASN" : {
			addWeapons ["M24_des_EP1","NVGoggles","ACE_Rangefinder_OD","ACE_Kestrel4500","ACE_FAST_PackEDC_ACU"];
			addMagazines("5Rnd_762x51_M24",6);
			addMagazines("30Rnd_556x45_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_Battery_Rangefinder",2);
			_unit setVariable ["ACE_weapononback","M4A1"];
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Claymore_M", 3],["HandGrenade_West", 2],["SmokeShell", 2],["5Rnd_762x51_M24",4],["30Rnd_556x45_Stanag",4]]];
		};


//Medevac team
		case "MED_SL": {//Medic
			addWeapons ["M4A1","ACE_Rucksack_MOLLE_DMARPAT_Medic","NVGoggles"];
			addWeapons ["ACE_Map"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("SmokeShell",4);
			addMagazines("ACE_LargeBandage",2);
			addMagazines("ACE_Bandage",2);
			addMagazines("ACE_Morphine",2);
			addMagazines("ACE_Epinephrine",2);
			addMagazines("ACE_Medkit",2);
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
		};

		case "MED": {//Medic
			addWeapons ["M4A1","ACE_Rucksack_MOLLE_DMARPAT_Medic","NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("SmokeShell",4);
			addMagazines("ACE_LargeBandage",2);
			addMagazines("ACE_Bandage",2);
			addMagazines("ACE_Morphine",2);
			addMagazines("ACE_Epinephrine",2);
			addMagazines("ACE_Medkit",2);
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
		};

//crew
		case "CRW": {// Crewman
			addWeapons ["M4A1","NVGoggles"]; 
			addWeapons ["ACE_GlassesLHD_glasses"]; 
			addMagazines("30Rnd_556x45_Stanag",4);
		};
		case "LPL": {//Pilot
			addWeapons ["M9","NVGoggles"];
			addWeapons ["ACE_GlassesLHD_glasses","ACE_Map"]; 
			addMagazines("15Rnd_9x19_M9",2);
		};
		case "PL": {//Pilot
			addWeapons ["M4A1","M9","NVGoggles"]; 
			addWeapons ["ACE_GlassesLHD_glasses","ACE_Map"]; 
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("15Rnd_9x19_M9",2);
		};


//mortar
		case "MOG" : {//Mortar gunner
			addWeapons ["ACE_M4_AIM","ACE_M224Proxy","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs","ACE_Map","ACE_Map_Tools","ACE_DAGR","ItemGPS"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_M224HE_CSWDM",3);
			addMagazines("ACE_M224IL_CSWDM",2);
		};
		case "MOAG" : {//Mortar Asst. Gunner
			addWeapons ["ACE_M4_AIM","ACE_M224TripodProxy","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_Green"];
			_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",2]]];
		};
		case "MOAB" : {//Mortar Ammo Bearer
			addWeapons ["ACE_M4_AIM","ACE_Rucksack_MOLLE_Green","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			_unit setVariable ["ACE_RuckMagContents",[["ACE_M224_HE_CSWDM",10]]];
		};
	};
};