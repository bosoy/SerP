/*
	COM 	- Commander
	SL 		- Squad Leader
	TL 		- Team Leader
	AR		- Automatic Rifleman
	AR2		- Automatic Rifleman (Scope)
	MG 		- Machinegunner
	MG2		- Machinegunner with Scope
	DM		- Designated Marksman
	SN		- Sniper
	HSN		- Heavy Sniper
	ASN		- Asst. Sniper
	MED		- Corpsman
	GL		- Grenadier
	FAC		- Forward Air Controller
	RC		- Recon
	SAB		- Saboteur
	SAP		- Sapper
	RF		- Rifleman
*/
_USMC_SF_processor = {
	_unit = _this select 0;
	_type = toUpper (_this select 1);
	switch _type do {
		case "SL" : {// 4th Squad Leader SF
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "ACE_HK416_D10_AIM";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "Binocular";
			_unit addWeapon "ItemGPS";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			 
		};
		case "TL" : {// FT Leader SF
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0];
			{_unit addMagazine "1Rnd_HE_M203"} forEach [0,0,0,0,0];
			{_unit addMagazine "ACE_HuntIR_M203"} forEach [0,0,0];
			_unit addWeapon "ACE_HK416_D10_M320";
			_unit addWeapon "ACE_HuntIR_monitor";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Map";
			_unit addWeapon "Binocular";
			 
		};
		case "AR" : {// Automatic Rifleman SF
			{_unit addMagazine "ACE_200Rnd_556x45_T_M249"} forEach [0,0,0,0,0];
			_unit addWeapon "M249_EP";
			{_unit addMagazine "HandGrenade_West"} forEach [0,0,0,0];
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "NVGoggles";
			_unit removeWeapon "ItemGPS";
			 
		};
		case "AR2" : {// Automatic Rifleman SF
			{_unit addMagazine "ACE_200Rnd_556x45_T_M249"} forEach [0,0,0,0,0];
			_unit addWeapon "M249_m145_EP1";
			{_unit addMagazine "HandGrenade_West"} forEach [0,0,0,0];
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "NVGoggles";
			_unit removeWeapon "ItemGPS";
			 
		};
		case "SN" : {// Sniper SF M24
			{_unit addMagazine "5Rnd_762x51_M24"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "M24";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			_unit addWeapon "Binocular";
			_unit addWeapon "ItemGPS";
			 
		};
		case "HSN" : {// Sniper SF M107
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
			 
		};
		case "ASN" : {// Assist. Sniper SF
			{_unit addMagazine "20Rnd_762x51_DMR"} forEach [0,0,0,0,0,0,0];
			_unit addWeapon "DMR";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			{_unit addMagazine "ACE_Battery_Rangefinder"} forEach [0,0];
			_unit addWeapon "ACE_Rangefinder_OD";
			_unit addWeapon "ACE_Kestrel4500";
			_unit addWeapon "ACE_Rucksack_MOLLE_Green";
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Claymore_M", 3], ["HandGrenade_West", 2], ["SmokeShell", 2]]];
			
		};
		case "DM" : {// Designated Marksman SF
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "20Rnd_762x51_DMR"} forEach [0,0,0,0,0,0,0];
			_unit addWeapon "DMR";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";			
		};
		case "MED" : {// Medic SF
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "ACE_HK416_D14";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0];
			_unit addWeapon "ACE_USPSD";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "ACE_LargeBandage"} forEach [0,0];
			{_unit addMagazine "ACE_Morphine"} forEach [0,0];
			{_unit addMagazine "ACE_Epinephrine"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Rucksack_MOLLE_Green_Medic";
			_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
			
		};
		case "RC" : {// Recon SF
			{_unit addMagazine "30Rnd_556x45_StanagSD"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "ACE_HK416_D14_SD";
			{_unit addMagazine "HandGrenade_West"} forEach [0,0,0,0];
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "NVGoggles";
			 
		};
		case "SAB" : {// Saboteur SF
			{_unit addMagazine "30Rnd_556x45_Stanag"} forEach [0,0,0,0,0,0,0,0];
			_unit addWeapon "ACE_HK416_D10_AIM";
			{_unit addMagazine "ACE_12Rnd_45ACP_USPSD"} forEach [0,0,0,0,0];
			_unit addWeapon "ACE_USPSD";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Rucksack_MOLLE_Green";
			_unit setVariable ["ACE_RuckMagContents",[["PipeBomb", 3]]];
		};
	};
};
