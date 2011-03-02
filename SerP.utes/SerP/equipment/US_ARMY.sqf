#define addWeapons {_unit addWeapon _x} forEach 
#define addMagazines(a,b) for "_i" from 1 to b do {_unit addMagazine a}
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
//Platoon command
	case "OFF": { // Officer
		addWeapons ["M4A1","M9","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ACE_DAGR","ItemGPS"];
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
	};
	case "PSG" : { //Platoon sergant
		addWeapons ["ACE_M4A1_ACOG","M136","M9","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
	};
	case "RATELO": { //RATELO
		addWeapons ["M4A1","ACE_ANPRC77","Binocular","NVGoggles"];
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9",2);
	};
	case "FO": { // Forward observer
		addWeapons ["M4A1","Binocular","NVGoggles"];
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);		
		addMagazines("15Rnd_9x19_M9",2);
	};
//Rifle squad
	case "SL": { // Squad Lider
		addWeapons ["M4A1","ACE_ANPRC77","M9","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("15Rnd_9x19_M9",2);
	};
	
	case "TL": { // FT Leader
		addWeapons ["ACE_M4A1_ACOG","Binocular","NVGoggles"];
		addWeapons ["ACE_Map"];
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
	};

	case "GL": { // Greanadier
		addWeapons ["ACE_M16A4_CCO_GL","ACE_Rucksack_MOLLE_ACU","NVGoggles"];
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("1Rnd_HE_M203",4);
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",8],["FlareRed_M203",4],["ACE_SSWhite_M203",4],["ACE_1Rnd_CS_M203",2]]];
	};
	case "AR" : { // Automatic Rifleman
		addWeapons ["M249_EP1","NVGoggles"];
		addWeapons ["ACE_Earplugs"];
		addMagazines("200Rnd_556x45_M249",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
	};

	case "LAT": { // Rifleman AT
		addWeapons ["m16a4","M136","NVGoggles"];
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);	
	};

	case "AT": { //AT Operator
		addWeapons ["M4A1","M47Launcher_EP1","NVGoggles"];
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("Dragon_EP1",1);
	};

	case "HAT" : { //Javelin Operator 
		addWeapons ["M4A1","Javelin","NVGoggles"];
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("Javelin",1);
	};
	case "AHAT" : { //Assistant Javelin Operator 
		addWeapons ["M4A1","ACE_Rucksack_MOLLE_ACU","Binocular","NVGoggles"];
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("Javelin",1);
		addMagazines("SmokeShell",2);
		_unit setVariable ["ACE_RuckMagContents",[["Javelin",1],["30Rnd_556x45_Stanag",4]]];
	};
	case "DM" : { //Designated marksman
		addWeapons ["ACE_Mk12mod1","NVGoggles"];
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
	};
//weapon squad
	case "MG": { // Machinegunner
		addWeapons ["m240_scoped_EP1","M9","NVGoggles"];
		addWeapons ["ACE_Earplugs"];
		addMagazines("100Rnd_762x51_M240",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("15Rnd_9x19_M9",2);
	};
	
	case "AG": { //Asst. Machinegunner
		addWeapons ["ACE_M16A4_Iron","ACE_Rucksack_MOLLE_ACU","Binocular","NVGoggles"];
		addWeapons ["ACE_Earplugs"];
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 2]]];
	};
	case "AB": { //Ammo bearer
		addWeapons ["ACE_M16A4_Iron","ACE_Rucksack_MOLLE_ACU","NVGoggles"];
		addWeapons ["ACE_Earplugs"];
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 4]]];
	};
	
//sniper team
	case "SN": { // Sniper
		addWeapons ["M24_des_EP1","M9","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
		addMagazines("5Rnd_762x51_M24",6);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",2);
	};
	case "SN2": { // Sniper
		addWeapons ["ACE_M110","M9","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
		addMagazines("20Rnd_762x51_B_SCAR",6);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",2);
	};
	
	// Assist. Sniper SF
	case "ASN" : {
		addWeapons ["ACE_M4A1_AIM_GL","NVGoggles","ACE_Rangefinder_OD","ACE_Kestrel4500","ACE_FAST_PackEDC_ACU"];
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("1Rnd_HE_M203",6);		
		addMagazines("ACE_SSWhite_M203",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_Battery_Rangefinder",2);
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",2],["FlareRed_M203",4],["ACE_SSWhite_M203",2],["5Rnd_762x51_M24",4]]];
	};


//Medevac team
	case "MED_SL": { //Medic
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

	case "MED": { //Medic
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
	case "CRW": { // Crewman
		addWeapons ["ACE_M4","NVGoggles"]; 
		addWeapons ["ACE_GlassesLHD_glasses"]; 
		addMagazines("30Rnd_556x45_Stanag",4);
	};
	case "LPL": { //Pilot
		addWeapons ["M9","NVGoggles"];
		addWeapons ["ACE_GlassesSunglasses","ACE_Map"]; 
		addMagazines("15Rnd_9x19_M9",2);
	};
	case "PL": { //Pilot
		addWeapons ["MP5A5","M9","NVGoggles"]; 
		addWeapons ["ACE_GlassesSunglasses","ACE_Map"]; 
		addMagazines("30Rnd_9x19_MP5",4);
		addMagazines("15Rnd_9x19_M9",2);
	};


//mortar
	case "MOG" : { //Mortar gunner
		addWeapons ["ACE_M4_AIM","ACE_M224Proxy","Binocular","NVGoggles"];
		addWeapons ["ACE_Earplugs","ACE_Map","ACE_Map_Tools","ACE_DAGR","ItemGPS"];
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		addMagazines("ACE_M224HE_CSWDM",3);
		addMagazines("ACE_M224IL_CSWDM",2);
	};
	case "MOAG" : { //Mortar Asst. Gunner
		addWeapons ["ACE_M4_AIM","ACE_M224TripodProxy","Binocular","NVGoggles"];
		addWeapons ["ACE_Earplugs"];
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		_unit setVariable ["ACE_weapononback","ACE_Rucksack_MOLLE_Green"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224WP_CSWDM",3],["ACE_M224HE_CSWDM",2]]];
	};
	case "MOAB" : { //Mortar Ammo Bearer
		addWeapons ["ACE_M4_AIM","ACE_Rucksack_MOLLE_Green","Binocular","NVGoggles"];
		addWeapons ["ACE_Earplugs"];
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_30Rnd_556x45_T_Stanag",2);
		addMagazines("SmokeShell",2);
		_unit setVariable ["ACE_RuckMagContents",[["ACE_M224HE_CSWDM",10]]];
	};
};
