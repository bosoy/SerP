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
_US_DF_processor = {
	_unit = _this select 0;
	_type = toUpper (_this select 1);
	switch _type do {
		// Squad Lider
		case "SL": {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_Eotech";
			{this addMagazine "SmokeShell"} forEach [0,0];
			{this addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ItemGPS";
		};
		// Team Lider
		case "TL": {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_Eotech_4x";
			{this addMagazine "SmokeShell"} forEach [0,0];
			{this addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "ItemGPS";
			_unit addWeapon "ACE_ANPRC77";
		};
		// Automatic Rifleman
		case "AR2": {
			{_unit addMagazine "100Rnd_556x45_M249"} forEach [0,0];
			_unit addWeapon "M249_m145_EP1";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ACE_FAST_PackEDC_ACU";
			_unit setVariable ["ACE_RuckMagContents",[["100Rnd_556x45_M249", 2]]];
		};
		//Machinegunner
		case "MG": {
			{_unit addMagazine "100Rnd_762x51_M240"} forEach [0,0];
			_unit addWeapon "Mk_48_DES_EP1";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "ACE_FAST_PackEDC_ACU";
			_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240", 2]]];
		};
		// Operator SD
		case "RC": {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "ACE_HuntIR_M203"} forEach [0,0,0];
			_unit addWeapon "ACE_HuntIR_monitor";
			_unit addWeapon "ACE_SOC_M4A1_GL_SD";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
		};
		//Marksman
		case "DM": {
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "ACE_20Rnd_762x51_S_M110"} forEach [0,0,0,0,0];
			{_unit addMagazine "1Rnd_HE_M203"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_M110";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
		};
		 // Sniper
		case "SN": {
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
		case "HSN" : {
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
		case "ASN" : {
			{_unit addMagazine "20Rnd_762x51_DMR"} forEach [0,0,0,0,0,0,0];
			_unit addWeapon "DMR";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_Battery_Rangefinder"} forEach [0,0];
			_unit addWeapon "ACE_Rangefinder_OD";
			_unit addWeapon "ACE_Kestrel4500";
			_unit addWeapon "ACE_FAST_PackEDC_ACU";
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Claymore_M", 3], ["HandGrenade_West", 2], ["SmokeShell", 2]]];
		};

		// Operator (Assault)
		case "GL": {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			{_unit addMagazine "1Rnd_HE_M203"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_GL_EOTECH";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
		};
		// Sapper SF
		case "SA" : {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_Aim";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_FAST_PackEDC_ACU";
			_unit setVariable ["ACE_RuckMagContents",[["PipeBomb", 3]]];	
		};
		//Medic
		case "MED": {
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0];
			_unit addWeapon "ACE_SOC_M4A1_Eotech";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0];
			_unit addWeapon "ACE_USPSD";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "ACE_LargeBandage"} forEach [0,0];
			{_unit addMagazine "ACE_Bandage"} forEach [0,0];
			{_unit addMagazine "ACE_Morphine"} forEach [0,0];
			{_unit addMagazine "ACE_Epinephrine"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Rucksack_MOLLE_ACU_Medic";
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
		};
	};
};