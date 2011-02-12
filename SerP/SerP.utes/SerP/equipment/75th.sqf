_75th_processor = {
	_unit = _this select 0;
	_type = toUpper (_this select 1);
	switch _type do {
// HQ
		case "OFF": {
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("30Rnd_556x45_Stanag",3);
			addMagazines("SmokeShell",2);			
			addMagazines("15Rnd_9x19_M9",2);
			addWeapons ["M9", "M16A4_ACG", "Binocular", "NVGoggles"];
			addWeapons ["ACE_Map", "ACE_Map_Tools", "ACE_DAGR", "ItemGPS", "ACE_GlassesLHD_glasses"];
		};
		case "PSG" : { //Platoon sergant
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("SmokeShell",2);			
			addMagazines("HandGrenade_West",2);
			addMagazines("15Rnd_9x19_M9", 2);	
		};
		case "ENG": { //RATELO
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag", 1);
			addMagazines("SmokeShell", 2);
			addMagazines("HandGrenade_West",2);			
			addMagazines("15Rnd_9x19_M9", 2);
			addWeapons ["M9", "m16a4", "NVGoggles", "ACE_ANPRC77" , "ACE_GlassesLHD_glasses"];
		};	
// Rifle squad
		case "SSL" : { //Squad Leader
			addMagazines("30Rnd_556x45_Stanag",5);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("15Rnd_9x19_M9", 2);
			addWeapons ["M9", "M16A4_ACG", "Binocular", "NVGoggles"];
			addWeapons ["ACE_Map", "ACE_Map_Tools", "ItemGPS", "ACE_GlassesLHD_glasses"];
		};
		case "TL" : { // FT Leader
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("1Rnd_HE_M203",4);
			addMagazines("ACE_1Rnd_HE_M203",4);
			addMagazines("SmokeShell", 2);
			addMagazines("HandGrenade_West",2);			
			addWeapons ["ACE_M16A4_CCO_GL", "Binocular", "NVGoggles"];
			addWeapons ["ACE_Map", "ACE_GlassesLHD_glasses"];			
		};
		case "AR" : { // Automatic Rifleman
			addMagazines("200Rnd_556x45_M249",3);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);			
			addWeapons ["M249_m145_EP1", "NVGoggles"];
			addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];		
		};
		case "AT" : { // Operator "Javelin"
			addMagazines("30Rnd_556x45_Stanag",5);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("15Rnd_9x19_M9",2);			
			addWeapons ["Javelin", "M16A4", "M9", "NVGoggles"];
			
		};
		case "GL": { // Greanadier
			addMagazines("30Rnd_556x45_Stanag", 6);
			addMagazines("1Rnd_Smoke_M203",2);
			addMagazines("1Rnd_HE_M203",4);
			addMagazines("FlareRed_M203",2);
			addMagazines("ACE_12Rnd_45ACP_USPSD",2);
			addWeapons ["ACE_M16A4_CCO_GL", "NVGoggles", "ACE_FAST_PackEDC_ACU"];
			addWeapons ["ACE_GlassesLHD_glasses"];
			addMagazines("6Rnd_HE_M203",3);
			_unit setVariable ["ACE_weapononback","ACE_M32"];
			_unit setVariable ["ACE_RuckMagContents",[["FlareRed_M203", 4], ["6Rnd_HE_M203", 2], ["1Rnd_Smoke_M203", 6]]];
		};
		case "LAT": { // Rifleman AT
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("HandGrenade_West",4);
			addMagazines("SmokeShell",2);			
			addWeapons ["M136", "M16A4", "NVGoggles", "ACE_GlassesLHD_glasses"];
		};
		case "DM" : {// Marksman 
			addMagazines("20Rnd_762x51_DMR",6);
			addMagazines("30Rnd_556x45_Stanag",6);			
			addMagazines("15Rnd_9x19_M9",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			addWeapons ["DMR", "M9","NVGoggles"];
			_unit setVariable ["ACE_weapononback","M16A4_ACG"];
		};		
		case "MED": {//Medic
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("SmokeShell",4);
			addMagazines("ACE_LargeBandage",2);
			addMagazines("ACE_Bandage",2);
			addMagazines("ACE_Morphine",2);
			addMagazines("ACE_Epinephrine",2);
			addMagazines("ACE_Medkit",2);
			addMagazines("15Rnd_9x19_M9",2);			
			addWeapons ["m16a4", "M9", "ACE_Rucksack_MOLLE_DMARPAT_Medic", "NVGoggles"];
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
		};
// Weapon sqaud
		case "MG" : {// Machinegunner
			addMagazines("100Rnd_762x51_M240", 2);
			addMagazines("SmokeShell", 2);
			addMagazines("HandGrenade_West", 2);
			addMagazines("ACE_M7A3", 2);
			addMagazines("SmokeShellGreen", 2);			
			addMagazines("15Rnd_9x19_M9", 2);
			addWeapons ["M9", "m240_scoped_EP1", "Binocular", "NVGoggles"];
			addWeapons ["ACE_Map", "ACE_Map_Tools", "ItemGPS", "ACE_GlassesLHD_glasses"];			
		};
		case "AMG" : { // Asst. Machinegunner
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			
			addWeapons ["M16A4", "NVGoggles", "ACE_Earplugs", "ACE_Rucksack_MOLLE_Green"];
			_unit setVariable ["ACE_RuckMagContents", [["100Rnd_762x51_M240", 2], ["ACE_Claymore_M", 2]]];			
		};
		
// ASSAULT SECTION Squad		
		case "ASG" : {// ASSAULT SECTION GUNNER
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_SMAW_Spotting",2);
			addMagazines("SMAW_HEAA",1);
			addMagazines("ACE_SMAW_NE",1);
			addMagazines("ACE_ANM14",2);
			addWeapons ["m16a4","SMAW","NVGoggles"];
			addWeapons ["ACE_Earplugs","ACE_Map","ItemGPS", "ACE_GlassesLHD_glasses"];
		};
		case "ASAG" : {// ASSAULT SECTION assistant GUNNER
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_C4_M",3);
			addMagazines("SMAW_HEDP",1);
			addWeapons ["m16a4","ACE_Rucksack_MOLLE_Green","ACE_YardAge450","NVGoggles"];
			addWeapons ["ACE_Earplugs","ACE_Map","ItemGPS", "ACE_GlassesLHD_glasses"];
			_unit setVariable ["ACE_RuckMagContents",[["SMAW_HEDP",1],["SMAW_HEAA",1]]];
		};
		
//mortar
		case "MOG" : {//Mortar gunner
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",1);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_M224HE_CSWDM",3);
			addMagazines("ACE_M224IL_CSWDM",2);
			addWeapons ["M16A4","ACE_M224Proxy","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs","ACE_Map","ACE_Map_Tools","ACE_DAGR","ItemGPS", "ACE_GlassesLHD_glasses"];
		};
		case "MOAG" : {//Mortar Asst. Gunner
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addWeapons ["M16A4","ACE_M224TripodProxy","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
			_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_Green"];
			_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",2]]];
		};
		case "MOAB" : {//Mortar Ammo Bearer
			addMagazines("30Rnd_556x45_Stanag",4);
			addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
			addMagazines("SmokeShell",2);
			addWeapons ["M16A4","ACE_Rucksack_MOLLE_Green","Binocular","NVGoggles"];
			addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
			_unit setVariable ["ACE_RuckMagContents",[["ACE_M224_HE_CSWDM",5]]];
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
	