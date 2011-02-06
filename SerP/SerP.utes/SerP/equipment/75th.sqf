/*
	OFF 	- Officer
	PSG 	- Platoon Sergant
	SSL 	- Squad Leader
	TL 		- Team Leader
	GL          - Grenadier   
	MG 		- Machinegunner
	MG2		- Machinegunner with Scope
	AMG		- Asst. Machinegunner
	AR		- Automatic Rifleman
	AAR		- Asst. Automatic Rifleman
	HAT		- Opertor Heavy Anti Tank
	AHAT	- Asst. Operator Heavy Anti Tank
	ASG		- GUNNER ASSAULT SECTION
	ASA		- Asst. GUNNER ASSAULT SECTION
	AA		- Anti Air Operaror
	LAT		- Rifleman AT
	DM		- Marksman
	MED		- Courpsman
	RF		- Rifleman
	CRV		- Crew AVehicle
	VC		- Commander Vehicle
	PL		- Pilot
	ENG		- Engineer
	MoG		- Mortar gunner
	MoAG	- Asst. Mortar gunner
	MoAM	- Ammo Bearer Mortar
	AGL		- Automatic Grenade Launcher Operator
	AGLAG	- Asst. Automatic Grenade Launcher Operator
	AGLAB	- Ammo Bearer Automatic Grenade Launcher
	ATGM	- ATGM Operator
	ATGMA	- Asst. ATGM
	ATGMB	- Ammo Bearer ATGM
	ASST    - Swam assistant
	ENG		- RATELO
*/

_75th_processor = {
	_unit = _this select 0;
	_type = toUpper (_this select 1);
	switch _type do {
		case "OFF": {  
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ACE_DAGR";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "M16A4_ACG"; 
			_unit addWeapon "Binocular"; 
			_unit addWeapon "NVGoggles"; 
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
		};
		case "PSG" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			_unit addWeapon "M16A4_ACG";
			_unit addWeapon "ItemGPS";
			_unit addWeapon "M136";
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "Binocular";
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "15Rnd_9x19_M9"} forEach [0,0];
			_unit addWeapon "M9";
			//Platoon sergant
		};
		case "SSL" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			_unit addWeapon "M16A4_ACG";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "6Rnd_SmokeYellow_M203"} forEach [0];
			{_unit addMagazine "6Rnd_HE_M203"} forEach [0,0];
			{_unit addMagazine "FlareRed_M203"} forEach [0,0];
			{_unit addMagazine "1Rnd_SmokeRed_M203"} forEach [0];
			{_unit addMagazine "ACE_SSWhite_M203"} forEach [0];
			{_unit addMagazine "ACE_1Rnd_CS_M203"} forEach [0,0];
			_unit setVariable ["ACE_weapononback","ACE_M32"];
			_unit addWeapon "Binocular";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "15Rnd_9x19_M9"} forEach [0,0];
			_unit addWeapon "M9";
			//Squad Leader
		};
		case "TL" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			{_unit addMagazine "1Rnd_HE_M203"} foreach [0,0,0,0];
			{_unit addMagazine "ACE_1Rnd_HE_M203"} foreach [0,0,0,0];
			_unit addWeapon "ACE_M16A4_CCO_GL"; 
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "Binocular";
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ItemGPS";
			// FT Leader
		};
		case "MG" : {
			{_unit addMagazine "100Rnd_762x51_M240"} forEach [0,0];
			_unit addWeapon "m240_scoped_EP1";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0,0];
			{_unit addMagazine "SmokeShellGreen"} forEach [0,0];
			{_unit addMagazine "ACE_Claymore_M"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
			// Machinegunner
		};
		case "AMG" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			_unit addWeapon "M16A4";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ACE_Rucksack_MOLLE_Green";
			_unit addWeapon "ItemGPS";
			_pack = [_unit, "100Rnd_762x51_M240", 2] call ACE_fnc_PackMagazine;
			// Asst. Machinegunner
		};
		case "AR" : {
			{_unit addMagazine "200Rnd_556x45_M249"} forEach [0,0,0];
			_unit addWeapon "M249_m145_EP1";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ItemGPS";
			// Automatic Rifleman
		};
		case "AAR" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			_unit addWeapon "M16A4";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ACE_Rucksack_MOLLE_Green";
			_pack = [_unit, "200Rnd_556x45_M249", 3] call ACE_fnc_PackMagazine;
			_unit addWeapon "ItemGPS";
			// Automatic Rifleman
		};
		case "HAT" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "M16A4";
			_unit addWeapon "NVGoggles";
			_unit addMagazine "Javelin";
			_unit addWeapon "Javelin";
			_unit addWeapon "ItemGPS";
			// Operator "Javelin"
		};
		case "ASG" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			_unit addWeapon "ACE_Map";
			_unit addWeapon "M16A4";
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_SMAW_Spotting"} forEach [0,0];
			{_unit addMagazine "SMAW_HEAA"} forEach [0];
			{_unit addMagazine "ACE_SMAW_NE"} forEach [0];
			{_unit addMagazine "ACE_ANM14"} forEach [0,0];
			_unit addWeapon "SMAW";
			_unit addWeapon "Binocular";
			_unit addWeapon "ItemGPS";
			// ASSAULT SECTION GUNNER
		};
		case "ASA" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			{_unit addMagazine "ACE_C4_M"} forEach [0,0,0];
			{_unit addMagazine "SMAW_HEDP"} forEach [0];
			_unit addWeapon "M16A4";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ItemGPS";
			// ASSAULT SECTION assistant GUNNER
		};
		case "MED" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			_unit addWeapon "ACE_M4_Aim";
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_LargeBandage"} forEach [0,0];
			{_unit addMagazine "ACE_Bandage"} forEach [0,0];
			{_unit addMagazine "ACE_Morphine"} forEach [0,0];
			{_unit addMagazine "ACE_Epinephrine"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ItemGPS";
			_unit addWeapon "ACE_Rucksack_MOLLE_Green_Medic";
			_pack = [_unit, "ACE_LargeBandage", 2] call ACE_fnc_PackMagazine;
			_pack = [_unit, "ACE_Bandage", 5] call ACE_fnc_PackMagazine;
			_pack = [_unit, "ACE_Morphine", 5] call ACE_fnc_PackMagazine;
			_pack = [_unit, "ACE_Epinephrine", 5] call ACE_fnc_PackMagazine;
			_pack = [_unit, "ACE_IV", 2] call ACE_fnc_PackMagazine;
			_pack = [_unit, "ACE_Plasma", 2] call ACE_fnc_PackMagazine;
			_pack = [_unit, "ACE_Tourniquet", 2] call ACE_fnc_PackMagazine;
			_pack = [_unit, "ACE_Splint", 2] call ACE_fnc_PackMagazine;
			// Medic
		};
		case "RF": {				
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			_unit addWeapon "m16a4"; 
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_GlassesLHD_glasses";
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			{_unit addMagazine "SmokeShell"} foreach [0,0]; 
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "M136";	
			_unit addWeapon "ItemGPS";
			// 
		};
		case "VC": {
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			_unit addWeapon "ACE_M4_Aim"; 
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_GlassesLHD_glasses";
		};
		case "CRV": {	
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			_unit addWeapon "ACE_M4_Aim"; 
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_GlassesLHD_glasses";
			_unit addWeapon "ItemGPS";
			//
		};
		case "PL": {	
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "ACE_HK416_D10";
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
			_unit addWeapon "ACE_GlassesSunglasses";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
			//
		};
		case "ENG": {	
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			_unit addWeapon "m16a4";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_ANPRC77";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
			//RATELO
		};		
		case "MOG" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			{_unit addMagazine "ACE_M224HE_CSWDM"} forEach [0,0,0];
			_unit addWeapon "m16a4";
			{_unit addMagazine "ACE_M224IL_CSWDM"} foreach [0,0];
			_unit addWeapon "ACE_M224Proxy";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ItemGPS";
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ACE_DAGR";
			_unit addWeapon "Binocular";
			//Mortar gunner
		};
		case "MOAG" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			_unit addWeapon "m16a4";
			_unit addWeapon "ACE_M224TripodProxy";
			{_unit addMagazine "ACE_M224WP_CSWDM"} foreach [0,0,0];
			{_unit addMagazine "ACE_M224HE_CSWDM"} foreach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ItemGPS";
			//Mortar Asst. Gunnder
		};
		case "MOAM" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0];
			_unit addWeapon "m16a4";
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ACE_Rucksack_MOLLE_Green";
			_pack = [_unit, "ACE_M224_HE_CSWDM", 10] call ACE_fnc_PackMagazine;
			_unit addWeapon "ItemGPS";
			//Mortar Ammo Bearer
		};
		
		//Mk.19
		case "AGL" : {
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0];
			_unit addWeapon "M4A1"; 
			_unit addWeapon "ACE_MK19MOD3Proxy";
			_unit addMagazine "ACE_MK19_CSWDM";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
			//Mk.19 Gunner
		};
		case "AGLAG" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0];
			_unit addWeapon "M4A1"; 
			_unit addWeapon "ACE_M3TripodProxy";
			_unit addMagazine "ACE_MK19_CSWDM";
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			_unit addWeapon "Binocular";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
			//Mk.19 Asst. Gunnder
		};
		case "AGLAB" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "M4A1"; 
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			{_unit addMagazine "ACE_MK19_CSWDM"} foreach [0,0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ItemGPS";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ACE_Rucksack_MOLLE_Green";
			_pack = [_unit, "ACE_M2_CSWDM", 1] call ACE_fnc_PackMagazine;
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
			//Mk.19 Ammo Bearer
		};
		case "DM" : {
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "20Rnd_762x51_DMR"} forEach [0,0,0,0,0,0,0];
			_unit addWeapon "DMR";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ItemGPS";
			// Marksman 
			
		};	
			case "GL": {// Greanadier
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_M16A4_CCO_GL";
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "1Rnd_HE_M203"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			
		};

		case "LAT": {// Rifleman AT
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "M16A4"; 
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0]; 
			_unit addWeapon "M136";
		};
	};
};
	