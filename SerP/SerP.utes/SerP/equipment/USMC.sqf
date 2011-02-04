
_USMC_processor = {
	_unit = _this select 0;
	_type = toUpper (_this select 1);
	switch _type do {
//Platoon command
		case "OFF": {// Officer
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ACE_DAGR";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} forEach [0];
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "M16A4_ACG"; 
			_unit addWeapon "Binocular"; 
			_unit addWeapon "NVGoggles"; 
			{_unit addMagazine "15Rnd_9x19_M9"} forEach [0,0];
			_unit addWeapon "M9";
		};
		case "PSG" : {//Platoon sergant
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} forEach [0];
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
		};
		case "RATELO": {//RATELO
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} forEach [0];
			_unit addWeapon "m16a4";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_ANPRC77";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			{_unit addMagazine "15Rnd_9x19_M9"} forEach [0,0];
			_unit addWeapon "M9";
		};
//Squad
		case "SL" : {//Squad Leader
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} forEach [0];
			_unit addWeapon "M16A4_ACG";
			_unit addWeapon "ItemGPS";
			_unit addWeapon "Binocular";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "15Rnd_9x19_M9"} forEach [0,0];
			_unit addWeapon "M9";
		};
		case "TL" : {// FT Leader
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} forEach [0,0];
			{_unit addMagazine "FlareRed_M203"} forEach [0,0];
			{_unit addMagazine "1Rnd_SmokeRed_M203"} forEach [0];
			{_unit addMagazine "ACE_SSWhite_M203"} forEach [0];
			{_unit addMagazine "ACE_1Rnd_CS_M203"} forEach [0,0];
			_unit addWeapon "M16A4_ACG_GL"; 
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "Binocular";
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ItemGPS";
		};
		case "GL": {// Greanadier
			_unit addWeapon "NVGoggles";
			_unit addWeapon "M16A4_GL";
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "1Rnd_HE_M203"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
		};
		case "AR" : {// Automatic Rifleman
			{_unit addMagazine "200Rnd_556x45_M249"} forEach [0,0,0,0];
			_unit addWeapon "ACE_M249Para";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
		};

		case "LAT": {// Rifleman AT
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} forEach [0];
			_unit addWeapon "m16a4"; 
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_GlassesLHD_glasses";
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "SmokeShell"} forEach [0,0]; 
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "M136";	
		};

		case "DM" : {// Marksman 
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "20Rnd_762x51_DMR"} forEach [0,0,0,0,0,0,0];
			_unit addWeapon "DMR";
			{_unit addMagazine "15Rnd_9x19_M9"} forEach [0,0];
			_unit addWeapon "M9";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "NVGoggles";
		};
		case "MED": {//Medic
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "m16a4";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "ACE_LargeBandage"} forEach [0,0];
			{_unit addMagazine "ACE_Bandage"} forEach [0,0];
			{_unit addMagazine "ACE_Morphine"} forEach [0,0];
			{_unit addMagazine "ACE_Epinephrine"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Rucksack_MOLLE_DMARPAT_Medic";
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
		};
//MG squad
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
			_unit addWeapon "m16a4";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Rucksack_MOLLE_ACU";
			_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 2]]];
		};
		case "AB": {//Ammo bearer
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "m16a4";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Rucksack_MOLLE_ACU";
			_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 4]]];
		};
//weapon squad
		case "AT" : {// Operator SMAW
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} forEach [0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "M16A4";
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_SMAW_Spotting"} forEach [0,0];
			{_unit addMagazine "SMAW_HEAA"} forEach [0,0];
			{_unit addMagazine "SMAW_HEDP"} forEach [0];
			_unit addWeapon "SMAW";
		};
		case "ASST" : {// SMAW assistant
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			{_unit addMagazine "ACE_30Rnd_556x45_T_Stanag"} forEach [0];
			{_unit addMagazine "ACE_M7A3"} forEach [0];
			_unit addWeapon "M16A4";
			_unit addMagazine "SMAW_HEDP";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Rucksack_MOLLE_Green";
			_unit setVariable ["ACE_RuckMagContents",[["SMAW_HEDP",1],["SMAW_HEAA",1]]];
		};
//crew
		case "CRW": {// Crewman
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0];
			_unit addWeapon "M4A1"; 
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_GlassesLHD_glasses";
			{_unit addMagazine "15Rnd_9x19_M9"} forEach [0,0];
			_unit addWeapon "M9";
		};
		case "LPL": {//Pilot
			{_unit addMagazine "15Rnd_9x19_M9"} forEach [0,0];
			_unit addWeapon "M9";
			_unit addWeapon "ACE_GlassesSunglasses";
			_unit addWeapon "ACE_Map";
			_unit addWeapon "NVGoggles";
		};
		case "PL": {//Pilot
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0];
			_unit addWeapon "ACE_HK416_D10";
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "15Rnd_9x19_M9"} forEach [0,0];
			_unit addWeapon "M9";
			_unit addWeapon "ACE_GlassesSunglasses";
			_unit addWeapon "ACE_Map";
		};
	};
};
	