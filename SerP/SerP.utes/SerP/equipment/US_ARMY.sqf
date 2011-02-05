
_US_ARMY_processor = {
	_unit = _this select 0;
	_type = toUpper (_this select 1);
	switch _type do {
//Platoon command
		case "OFF": {// Platoon Leader
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ItemGPS";
			_unit addWeapon "Binocular"; 
			_unit addWeapon "NVGoggles"; 
			_unit addWeapon "ACE_M4";
			_unit addWeapon "M9";
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} forEach [0,0,0,0];
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0]; 
			{_unit addMagazine "15Rnd_9x19_M9"} forEach [0,0];
		};
		case "RATELO": {// Platoon RATELO 
			_unit addWeapon "NVGoggles"; 
			_unit addWeapon "ACE_ANPRC77";
			_unit addWeapon "ACE_M4";
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
		};
		case "FO": {// Forward observer
			_unit addWeapon "NVGoggles"; 
			_unit addWeapon "Binocular";
			_unit addWeapon "ACE_M4";
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
		};
//Rifle squad
		case "SL": {// Squad Lider
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ItemGPS";
			_unit addWeapon "Binocular";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_M4_AIM";
			_unit addWeapon "ACE_ANPRC77";
			_unit addWeapon "M9";
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} forEach [0,0,0,0];
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "15Rnd_9x19_M9"} forEach [0,0];
		};
		
		case "TL": {// FT Leader
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_M4_ACOG";
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
		};

		case "GL": {// Greanadier
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_M4_GL";
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "1Rnd_HE_M203"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
		};

		case "AR": {// Automatic Rifleman
			{_unit addMagazine "200Rnd_556x45_M249"} forEach [0,0,0,0];
			_unit addWeapon "M249_EP1";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
		};
		
		case "AT": {//AT Operator
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} forEach [0];
			_unit addWeapon "M4A1";
			_unit addWeapon "ItemGPS";
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "Dragon_EP1"} forEach [0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "M47Launcher_EP1";
			_unit addWeapon "ACE_Earplugs";
		};

		case "LAT": {// Rifleman AT
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "M4A1"; 
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0]; 
			_unit addWeapon "M136";
		};

		case "HAT" : {//Javelin Operator 
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "M4A1";
			_unit addWeapon "NVGoggles";
			_unit addMagazine "Javelin";
			_unit addWeapon "Javelin";
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
			{_unit addMagazine "100Rnd_762x51_M240"} forEach [0,0,0];
			_unit addWeapon "M240";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
		};
		
		
		case "AG": {//Asst. Machinegunner
			_unit addWeapon "Binocular"; 
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "M4A1";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Rucksack_MOLLE_ACU";
			_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 2]]];
		};
		case "AB": {//Ammo bearer
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "M4A1";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Rucksack_MOLLE_ACU";
			_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 4]]];
		};
		
//sniper team
		case "SN": {// Sniper
			addWeapons ["m107","NVGoggles","ACE_USPSD"];
			addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
			addMagazines("10Rnd_127x99_m107",8);
			addMagazines("ACE_10Rnd_127x99_T_m107",1);
			addMagazines("ACE_10Rnd_127x99_Raufoss_m107",1);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_12Rnd_45ACP_USPSD",4);
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
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "M4A1";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "ACE_LargeBandage"} forEach [0,0];
			{_unit addMagazine "ACE_Bandage"} forEach [0,0];
			{_unit addMagazine "ACE_Morphine"} forEach [0,0];
			{_unit addMagazine "ACE_Epinephrine"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Rucksack_MOLLE_DMARPAT_Medic";
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
		};

		case "MED": {//Medic
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "M4A1";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "ACE_LargeBandage"} forEach [0,0];
			{_unit addMagazine "ACE_Bandage"} forEach [0,0];
			{_unit addMagazine "ACE_Morphine"} forEach [0,0];
			{_unit addMagazine "ACE_Epinephrine"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Rucksack_MOLLE_DMARPAT_Medic";
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
		};

//crew
		case "CRW": {// Crewman
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0];
			_unit addWeapon "M4A1"; 
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_GlassesLHD_glasses";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
		};
		case "LPL": {//Pilot
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
			_unit addWeapon "NVGoggles";
		};
		case "PL": {//Pilot
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0];
			_unit addWeapon "ACE_HK416_D10";
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
			_unit addWeapon "ACE_GlassesSunglasses";
		};

//heavy weapons
		//M2		
		case "HMG" : {//M2 Gunner
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0];
			_unit addWeapon "M4A3_CCO_EP1"; 
			_unit addWeapon "ACE_M2HBProxy";
			_unit addMagazine "ACE_M2_CSWDM";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
		};
		case "HMGAG" : {//M2 Asst. Gunnder
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "M4A3_CCO_EP1"; 
			_unit addWeapon "ACE_M3TripodProxy";
			_unit addMagazine "ACE_M2_CSWDM";
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			_unit addWeapon "Binocular";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
		};
		case "HMGAB" : {//M2 Ammo Bearer
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0];
			_unit addWeapon "M4A3_CCO_EP1"; 
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			{_unit addMagazine "ACE_M2_CSWDM"} foreach [0,0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ACE_Rucksack_MOLLE_ACU";
			_unit setVariable ["ACE_RuckMagContents",[["ACE_M2_CSWDM", 1]]];
		};
		
		//Mk.19
		case "AGL" : {
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0];
			_unit addWeapon "M4A3_CCO_EP1"; 
			_unit addWeapon "ACE_MK19MOD3Proxy";
			_unit addMagazine "ACE_MK19_CSWDM";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "NVGoggles";
			//Mk.19 Gunner
		};
		case "AGLAG" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0];
			_unit addWeapon "M4A3_CCO_EP1"; 
			_unit addWeapon "ACE_M3TripodProxy";
			_unit addMagazine "ACE_MK19_CSWDM";
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			_unit addWeapon "Binocular";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			//Mk.19 Asst. Gunnder
		};
		case "AGLAB" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "M4A3_CCO_EP1"; 
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			{_unit addMagazine "ACE_MK19_CSWDM"} foreach [0,0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ACE_Rucksack_MOLLE_ACU";
			_unit setVariable ["ACE_RuckMagContents",[["ACE_M2_CSWDM", 1]]];
			//Mk.19 Ammo Bearer
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