
_USMC_processor = {
	_unit = _this select 0;
	_type = toUpper (_this select 1);
	switch _type do {
//Platoon command
		case "OFF": {// Officer
			addWeapons ["M16A4_ACG","M9","Binocular","NVGoggles"];
			addWeapons ["ACE_Map","ACE_Map_Tools","ACE_DAGR","ItemGPS"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("15Rnd_9x19_M9",2);
		};
		case "PSG" : {//Platoon sergant
			addWeapons ["M16A4_ACG","M136","M9","Binocular","NVGoggles"];
			addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("15Rnd_9x19_M9",2);
		};
		case "RATELO": {//RATELO
			addWeapons ["M16A4","ACE_ANPRC77","M9","NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
		};
//Squad
		case "SL" : {//Squad Leader
			addWeapons ["M16A4_ACG","M9","Binocular","NVGoggles"];
			addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("15Rnd_9x19_M9",2);
		};
		case "TL" : {// FT Leader
			addWeapons ["M16A4_ACG_GL","ACE_Rucksack_MOLLE_ACU","NVGoggles"];
			addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			addMagazines("1Rnd_HE_M203",4);
			_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["FlareRed_M203",4],["ACE_SSWhite_M203",4],["ACE_1Rnd_CS_M203",2]]];
		};
		case "GL": {// Greanadier
			addWeapons ["ACE_M16A4_CCO_GL","ACE_Rucksack_MOLLE_ACU","NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			addMagazines("1Rnd_HE_M203",4);
			_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["FlareRed_M203",4],["ACE_SSWhite_M203",4],["ACE_1Rnd_CS_M203",2]]];
		};
		case "AR" : {// Automatic Rifleman
			addWeapons ["ACE_M249Para","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("200Rnd_556x45_M249",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
		};

		case "AAR" : {// Assistant Automatic Rifleman
			addWeapons ["M16A4","ACE_Rucksack_MOLLE_ACU","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_M249", 4]]];
		};

		case "LAT": {// Rifleman AT
			addWeapons ["m16a4","M136","NVGoggles"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);	
		};

		case "DM" : {// Marksman 
			addWeapons ["DMR","NVGoggles"];
			addMagazines("20Rnd_762x51_DMR",8);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
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
//snipers
		case "SN": {// Sniper
			addWeapons ["M40A3","M9","NVGoggles","ACE_USPSD"];
			addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
			addMagazines("5Rnd_762x51_M24",8);
			addMagazines("15Rnd_9x19_M9",2);
			addMagazines("SmokeShell",2);
		};
		
		case "ASN" : {// Assist. Sniper SF
			addWeapons ["ACE_M16A4_CCO_GL","NVGoggles","ACE_Rangefinder_OD","ACE_Kestrel4500","ACE_FAST_PackEDC_ACU","ACE_SpottingScope"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("1Rnd_HE_M203",6);		
			addMagazines("ACE_SSWhite_M203",2);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_Battery_Rangefinder",2);
			_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",2],["FlareRed_M203",4],["ACE_SSWhite_M203",2],["5Rnd_762x51_M24",4]]];
		};
//MG squad
		case "MG": {// Machinegunner
			addWeapons ["M240","M9","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("100Rnd_762x51_M240",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			addMagazines("15Rnd_9x19_M9",2);
		};
		
		case "AG": {//Asst. Machinegunner
			addWeapons ["m16a4","ACE_Rucksack_MOLLE_ACU","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 2]]];
		};
		case "AB": {//Ammo bearer
			addWeapons ["m16a4","ACE_Rucksack_MOLLE_ACU","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 4]]];
		};
//weapon squad
		case "ASG" : {// ASSAULT SECTION GUNNER
			addWeapons ["m16a4","SMAW","NVGoggles"];
			addWeapons ["ACE_Earplugs","ACE_Map","ItemGPS"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_SMAW_Spotting",2);
			addMagazines("SMAW_HEAA",1);
			addMagazines("ACE_SMAW_NE",1);
			addMagazines("ACE_ANM14",2);
		};
		case "ASAG" : {// ASSAULT SECTION assistant GUNNER
			addWeapons ["m16a4","ACE_Rucksack_MOLLE_Green","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs","ACE_Map","ItemGPS"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_C4_M",3);
			addMagazines("SMAW_HEDP",1);
			_unit setVariable ["ACE_RuckMagContents",[["SMAW_HEDP",1],["SMAW_HEAA",1]]];
		};
//mortar
		case "MOG" : {//Mortar gunner
			addWeapons ["M16A4","ACE_M224Proxy","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs","ACE_Map","ACE_Map_Tools","ACE_DAGR","ItemGPS"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_M224HE_CSWDM",3);
			addMagazines("ACE_M224IL_CSWDM",2);
		};
		case "MOAG" : {//Mortar Asst. Gunner
			addWeapons ["M16A4","ACE_M224TripodProxy","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_Green"];
			_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",2]]];
		};
		case "MOAB" : {//Mortar Ammo Bearer
			addWeapons ["M16A4","ACE_Rucksack_MOLLE_Green","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs"];
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			_unit setVariable ["ACE_RuckMagContents",[["ACE_M224_HE_CSWDM",10]]];
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
	};
};
	