/*
	OFF 	- Officer
	SL 		- Squad Leader
	TL 		- Team Leader
	MG 		- Machinegunner
	MG2		- Machinegunner with Scope
	AMG		- Asst. Machinegunner
	AR		- Automatic Rifleman
	AAR		- Asst. Automatic Rifleman
	HAT		- Opertor Heavy Anti Tank
	AHAT	- Asst. Operator Heavy Anti Tank
	AT		- Operator Anti Tank
	AAT		- Asst. Operator Anti Tank
	LAT		- Rifleman AT
	AA		- Anti Air Operaror
	MR		- Marksman
	MED		- Courpsman
	GL		- Grenadier
	RF		- Rifleman
	CRW		- Crew Armored Vehicle
	CRWVC	- Commander Armored Vehicle
	PL		- Pilot
	ENG		- Engineer
	HMG		- Heavy Machinegunner
	HMGAG	- Asst. Heavy Machinegunner
	HMGAB	- Ammo Bearer Heavy Machinegun
	AGL		- Automatic Grenade Launcher Operator
	AGLAG	- Asst. Automatic Grenade Launcher Operator
	AGLAB	- Ammo Bearer Automatic Grenade Launcher
	ATGM	- ATGM Operator
	ATGMA	- Asst. ATGM
	ATGMB	- Ammo Bearer ATGM
*/
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
			_unit addWeapon "M1A1";
			{_unit addMagazine "MAAWS_HEAT"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "MAAWS";
			_unit addWeapon "ACE_Earplugs";
		};

		case "LAT": {// Rifleman AT
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "M16A4"; 
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

		case "DM" : {//Designated marksman
			_unit addWeapon "DMR";
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_20Rnd_762x51_B_M14"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
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
			{_unit addMagazine "5Rnd_762x51_M24"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "M24_des_EP1";
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ItemGPS";
		};
		// Assist. Sniper SF
		case "ASN" : {
			{_unit addMagazine "20Rnd_762x51_DMR"} forEach [0,0,0,0,0,0,0];
			_unit addWeapon "DMR";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_Battery_Rangefinder"} forEach [0,0];
			_unit addWeapon "ACE_Rangefinder_OD";
			_unit addWeapon "ACE_Kestrel4500";
			_unit addWeapon "ACE_FAST_PackEDC_ACU";
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Claymore_M", 3],["HandGrenade_West", 2],["SmokeShell", 2]]];
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
		case "HMG" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0];
			_unit addWeapon "M4A3_CCO_EP1"; 
			_unit addWeapon "ACE_M2HBProxy";
			_unit addMagazine "ACE_M2_CSWDM";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			//M2 Gunner
		};
		case "HMGAG" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "M4A3_CCO_EP1"; 
			_unit addWeapon "ACE_M3TripodProxy";
			_unit addMagazine "ACE_M2_CSWDM";
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			_unit addWeapon "Binocular";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			//M2 Asst. Gunnder
		};
		case "HMGAB" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0];
			_unit addWeapon "M4A3_CCO_EP1"; 
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			{_unit addMagazine "ACE_M2_CSWDM"} foreach [0,0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ACE_Rucksack_MOLLE_ACU";
			_pack = [_unit, "ACE_M2_CSWDM", 1] call ACE_fnc_PackMagazine;
			//M2 Ammo Bearer
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
			_pack = [_unit, "ACE_M2_CSWDM", 1] call ACE_fnc_PackMagazine;
			//Mk.19 Ammo Bearer
		};
	};
};