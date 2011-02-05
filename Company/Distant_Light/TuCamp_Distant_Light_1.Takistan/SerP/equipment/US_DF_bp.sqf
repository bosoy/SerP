/*
	COM 	- Commander
	SL 		- Squad Leader
	TL 		- Team Leader
	AR		- Automatic Rifleman
	AR2		- Automatic Rifleman (Scope)
	MG 		- Machinegunner
	MG2		- Machinegunner with Scope
	MR		- Marksman
	MRSD	- Marksman SD
	SNP		- Sniper
	HSNP	- Heavy Sniper
	ASNP	- Asst. Sniper
	MED		- Corpsman
	GL		- Grenadier
	FAC		- Forward Air Controller
	SAB		- Saboteur
	SAP		- Sapper
	RF		- Rifleman
*/
_US_DF_bp_processor = {
	_unit = _this select 0;
	_type = toUpper (_this select 1);
	switch _type do {
		// Squad Lider
		case "SL": {
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "ACE_30Rnd_556x45_S_Stanag"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_Eotech";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "Binocular";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
 			_unit addWeapon "NVGoggles";					
		};
		// Team Lider
		case "TL": {
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "ACE_30Rnd_556x45_S_Stanag"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_Eotech_4x";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
 			_unit addWeapon "NVGoggles";
			_unit addWeapon "Binocular";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";			
			_unit addWeapon "ACE_ANPRC77";
		};

		// Automatic Rifleman
		case "AR2": {
			{_unit addMagazine "100Rnd_556x45_M249"} forEach [0,0,0];
			_unit addWeapon "M249_m145_EP1";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addBackpack "US_Patrol_Pack_EP1";
			//[_unit, [["100Rnd_556x45_M249",2]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["100Rnd_556x45_M249",2];
		};
		//Machinegunner
		case "MG": {
			{_unit addMagazine "100Rnd_762x51_M240"} forEach [0,0];
			_unit addWeapon "Mk_48_DES_EP1";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addBackpack "US_Patrol_Pack_EP1";
			//[_unit, [["100Rnd_762x51_M240",2]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["100Rnd_762x51_M240",2];
		};		
		// Operator SD
		case "RC": {
			{_unit addMagazine "30Rnd_556x45_StanagSD"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "ACE_HuntIR_M203"} forEach [0,0,0];
			{_unit addMagazine "1Rnd_Smoke_M203"} forEach [0,0,0];
			_unit addWeapon "ACE_HuntIR_monitor";
			_unit addWeapon "ACE_SOC_M4A1_GL_SD";
			_unit addWeapon "Binocular";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
		};
		// Infiltrator
		case "INF": {
			{_unit addMagazine "ACE_30Rnd_556x45_S_Stanag"} forEach [0,0,0,0,0,0];
			{_unit addMagazine "1Rnd_HE_M203"} forEach [0,0,0,0,0];
			{_unit addMagazine "1Rnd_Smoke_M203"} forEach [0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_GL_13";
			{_unit addMagazine "SmokeShell"} forEach [0,0,0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0,0,0];
			_unit addWeapon "NVGoggles";
		};
		// Grenadier
		case "GL": {
			{_unit addMagazine "ACE_30Rnd_556x45_S_Stanag"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "1Rnd_HE_M203"} forEach [0,0,0,0,0];
			{_unit addMagazine "1Rnd_Smoke_M203"} forEach [0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_GL_AIMPOINT";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
		};
		// Sapper SF
		case "SAP" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_Aim";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "NVGoggles";
			_unit addBackpack "US_Patrol_Pack_EP1";
			//[_unit, [["PipeBomb", 3]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["ACE_Claymore_M", 3];
		};
		// Saboteur SF
		case "SAB" : {
			{_unit addMagazine "30Rnd_556x45_StanagSD"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_SD_9";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "NVGoggles";
			_unit addBackpack "US_Patrol_Pack_EP1";
			//[_unit, [["PipeBomb", 3]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["PipeBomb", 3];
		};
		//Marksman
		case "MR": {
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "ACE_20Rnd_762x51_S_M110"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_M110";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
		};
		case "MRSD": {
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "30Rnd_556x45_StanagSD"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_SHORTDOT_SD";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
		};
		 // Sniper
		case "SNP": {
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
		case "HSNP" : {
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "10Rnd_127x99_m107"} forEach [0,0,0,0];
			_unit addMagazine "ACE_10Rnd_127x99_Raufoss_m107";
			_unit addWeapon "m107";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "Binocular";
			 // Sniper SF
		};
		// Assist. Sniper SF
		case "ASNP" : {
			{_unit addMagazine "20Rnd_762x51_DMR"} forEach [0,0,0,0,0,0,0];
			_unit addWeapon "DMR";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_Battery_Rangefinder"} forEach [0,0];
			_unit addWeapon "ACE_Rangefinder_OD";
			_unit addWeapon "ACE_Kestrel4500";
			_unit addBackpack "US_Patrol_Pack_EP1";
			//[_unit, [["ACE_Claymore_M",3],["HandGrenade_West",2],["SmokeShell",2]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["ACE_Claymore_M",3];
			_pack addMagazineCargoGlobal ["HandGrenade_West",2];	
			_pack addMagazineCargoGlobal ["SmokeShell",2];
		};
		//Medic
		case "MED": {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_Aim";
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			{_unit addMagazine "SmokeShell"} foreach [0,0]; 
			{_unit addMagazine "ACE_Bandage"} foreach [0,0];
			{_unit addMagazine "ACE_Epinephrine"} foreach [0,0];
			{_unit addMagazine "ACE_Morphine"} foreach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addBackpack "US_Backpack_EP1";
			//[_unit, [["ACE_Bandage",5],["ACE_Morphine",5],["ACE_Epinephrine",2]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["ACE_Bandage",5];
			_pack addMagazineCargoGlobal ["ACE_Morphine",5];	
			_pack addMagazineCargoGlobal ["ACE_Epinephrine",2];
		};
	};
};