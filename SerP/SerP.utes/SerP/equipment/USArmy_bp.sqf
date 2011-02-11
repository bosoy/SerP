/*
	OFF 	- Officer
	SL 		- Squad Leader
	TL 		- Team Leader
	MG 		- Machinegunner
	MG2		- Machinegunner with Scope
	AG		- Asst. Machinegunner
	AR		- Automatic Rifleman
	AAR		- Asst. Automatic Rifleman
	HAT		- Opertor Heavy Anti Tank
	AHAT	- Asst. Operator Heavy Anti Tank
	AT		- Operator Anti Tank
	ASST	- Asst. Operator Anti Tank
	LAT		- Rifleman AT
	AA		- Anti Air Operaror
	DM		- Marksman
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
_USArmy_bp_processor = {
	_unit = _this select 0;
	_type = toUpper (_this select 1);
	switch _type do {
		// Oficer
		case "OFF": {  
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0,0,0];
			_unit addWeapon "m16a4"; 
			_unit addWeapon "Binocular"; 
			_unit addWeapon "NVGoggles"; 
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
		};
		// Squad Lider
		case "SL": {	
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} foreach [0,0,0,0,0,0,0,0];
			_unit addWeapon "m16a4_acg";
			{_unit addMagazine "SmokeShell"} foreach [0,0];
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
 			_unit addWeapon "NVGoggles";
			_unit addWeapon "Binocular";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0,0,0];
			_unit addWeapon "M9";
		};
		// FT Leader
		case "TL": {		
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "1Rnd_HE_M203"} foreach [0,0,0,0,0];
			_unit addWeapon "M4A3_RCO_GL_EP1";
			{_unit addMagazine "SmokeShell"} foreach [0,0];
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			_unit addMagazine "ACE_Bandage";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Map";
		};
		//Machinegunner
		case "MG": {	
			{_unit addMagazine "100Rnd_762x51_M240"} foreach [0,0,0];
			_unit addWeapon "M240";
			{_unit addMagazine "SmokeShell"} foreach [0,0];
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
		};
		
		//Asst. Machinegunner
		case "AG": {				
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "M4A3_CCO_EP1";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";			
			_unit addBackpack "US_Assault_Pack_EP1";
			//[_unit, [["100Rnd_762x51_M240",4]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["100Rnd_762x51_M240",4];
		};	
		// Automatic Rifleman
		case "AR": {	
			{_unit addMagazine "200Rnd_556x45_M249"} foreach [0,0,0,0];
			_unit addWeapon "M249_EP1";
			{_unit addMagazine "SmokeShell"} foreach [0,0];
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
		};
		//Marksman
		case "DM": {
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0];
			{_unit addMagazine "1Rnd_HE_M203"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_Mk12mod1";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
		};
		
		case "HAT" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "M4A1";
			_unit addWeapon "NVGoggles";
			_unit addMagazine "Javelin";
			_unit addWeapon "Javelin";
			// Operator "Javelin"
		};
		
		//AT Operator
		case "AT": {	
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "M4A3_CCO_EP1";
			{_unit addMagazine "MAAWS_HEAT"} foreach [0,0];
			{_unit addMagazine "MAAWS_HEDP"} foreach [0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "MAAWS";
			_unit addWeapon "ACE_Earplugs";
		};
		// Asst. AT Operator
		case "ASST": { 	
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "M4A3_CCO_EP1";
			_unit addWeapon "NVGoggles";
			_unit addMagazine "MAAWS_HEDP";
			_unit addBackpack "US_Assault_Pack_EP1";
			//[_unit, [["MAAWS_HEDP",1],["MAAWS_HEAT",1]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["MAAWS_HEDP",1];
			_pack addMagazineCargoGlobal ["MAAWS_HEAT",1];
		};
		// Rifleman AT
		case "LAT": {	
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "M4A3_CCO_EP1"; 
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			{_unit addMagazine "SmokeShell"} foreach [0,0]; 
			_unit addWeapon "ACE_M72A2";			
		};		
		//Medic
		case "MED": {	
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "M4A3_CCO_EP1";
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			{_unit addMagazine "SmokeShell"} foreach [0,0]; 
			{_unit addMagazine "ACE_Bandage"} foreach [0,0,0];
			{_unit addMagazine "ACE_Epinephrine"} foreach [0,0,0];
			{_unit addMagazine "ACE_Morphine"} foreach [0,0,0];
			_unit addWeapon "NVGoggles";
			_unit addBackpack "US_Backpack_EP1";
			//[_unit, [["ACE_Bandage",5],["ACE_Morphine",5],["ACE_Epinephrine",2]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["ACE_Bandage",5];
			_pack addMagazineCargoGlobal ["ACE_Morphine",5];	
			_pack addMagazineCargoGlobal ["ACE_Epinephrine",2];
		};
		//Grenadier
		case "GL": {				
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0];
			{_unit addMagazine "1Rnd_HE_M203"} foreach [0,0,0,0,0];
			_unit addWeapon "ACE_M4A1_GL"; 
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_GlassesLHD_glasses";
			{_unit addMagazine "HandGrenade_West"} foreach [0,0,0];
			{_unit addMagazine "SmokeShell"} foreach [0,0]; 
		};
		// Crewman
		case "CRW": {	
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0];
			_unit addWeapon "M4A1"; 
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_GlassesLHD_glasses";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
		};
		case "LPL": {	 
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
			_unit addWeapon "NVGoggles";
		};
		case "PL": {	
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0];
			_unit addWeapon "ACE_HK416_D10";
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "15Rnd_9x19_M9"} foreach [0,0];
			_unit addWeapon "M9";
			_unit addWeapon "ACE_GlassesSunglasses";
		};
		case "ENG": {	
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "ACE_M16A4_Iron";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_ANPRC77";
		};
		//M2		
		case "HMG" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "M4A1"; 
			_unit addWeapon "ACE_M2HBProxy";
			_unit addMagazine "ACE_M2_CSWDM";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			//M2 Gunner
		};
		case "HMGAG" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "M4A1"; 
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
			_unit addWeapon "M4A1"; 
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addBackpack "US_Backpack_EP1";
			//[_unit, [["ACE_M2_CSWDM",4]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["ACE_M2_CSWDM",4];
			//M2 Ammo Bearer
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
			//Mk.19 Asst. Gunnder
		};
		case "AGLAB" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} foreach [0,0,0,0,0,0];
			_unit addWeapon "M4A1"; 
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addBackpack "US_Backpack_EP1";
			//[_unit, [["ACE_MK19_CSWDM",4]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["ACE_MK19_CSWDM",4];
			//Mk.19 Ammo Bearer
		};
	};
};