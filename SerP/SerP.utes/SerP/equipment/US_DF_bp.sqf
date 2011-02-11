/*
	COM 	- Commander
	SL 		- Squad Leader
	TL 		- Team Leader
	AR		- Automatic Rifleman
	AR2		- Automatic Rifleman (Scope)
	MG 		- Machinegunner
	MG2		- Machinegunner with Scope
	DM		- Marksman
	DMSD	- Marksman SD
	SN		- Sniper
	HSN		- Heavy Sniper
	ASN		- Asst. Sniper
	MED		- Corpsman
	RC		- Operanor SD (Recon)
	INF		- Infiltrator GL
	INFSD	- Infiltrator SD
	GL		- Grenadier
	FAC		- Forward Air Controller
	SAB		- Saboteur
	SAP		- Sapper
	RF		- Rifleman
*/
/*
	COM 	- Commander
	SL 		- Squad Leader
	TL 		- Team Leader
	AR		- Automatic Rifleman
	AR2		- Automatic Rifleman (Scope)
	MG 		- Machinegunner
	MG2		- Machinegunner with Scope
	DM		- Marksman
	DMSD	- Marksman SD
	SN		- Sniper
	HSN		- Heavy Sniper
	ASN		- Asst. Sniper
	MED		- Corpsman
	RC		- Operanor SD (Recon)
	INF		- Infiltrator GL
	INFSD	- Infiltrator SD
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
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("ACE_12Rnd_45ACP_USPSD",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			addWeapons ["ACE_SOC_M4A1_Eotech", "ACE_USPSD", "NVGoggles", "Binocular"];
			addWeapons ["ACE_Map", "ACE_Map_Tools", "ACE_DAGR", "ItemGPS", "ACE_GlassesLHD_glasses"];

		};

		// Team Lider
		case "TL": {
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("ACE_12Rnd_45ACP_USPSD",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			addWeapons ["ACE_SOC_M4A1_Eotech_4x", "ACE_USPSD", "NVGoggles", "Binocular", "ACE_PRC119_ACU"];
			addWeapons ["ACE_Map", "ACE_Map_Tools", "ACE_DAGR", "ItemGPS", "ACE_GlassesLHD_glasses"];
		};

		// Automatic Rifleman
		case "AR2": {

			addMagazines("100Rnd_556x45_M249",3);
			addMagazines("ACE_12Rnd_45ACP_USPSD",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			addWeapons ["M249_m145_EP1", "ACE_USPSD", "NVGoggles", "ACE_FAST_PackEDC_ACU"];
			addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];			
			_unit addBackpack "US_Patrol_Pack_EP1";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["100Rnd_556x45_M249",3];
		};
		//Machinegunner
		case "MG": {
			addMagazines("100Rnd_762x51_M240",3);
			addMagazines("ACE_12Rnd_45ACP_USPSD",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			addWeapons ["Mk_48_DES_EP1", "ACE_USPSD", "NVGoggles", "ACE_FAST_PackEDC_ACU"];
			addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
			_unit addBackpack "US_Patrol_Pack_EP1";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["100Rnd_762x51_M240",2];
		};
		// Forward Operator
		case "RC": {
			addMagazines("30Rnd_556x45_StanagSD",8);
			addMagazines("ACE_HuntIR_M203",3);
			addMagazines("1Rnd_HE_M203",2);
			addMagazines("ACE_12Rnd_45ACP_USPSD",5);
			addMagazines("SmokeShell",2);
			addMagazines("SmokeShellRed",2);
			addMagazines("IR_Strobe_Target",3);
			addMagazines("HandGrenade_West",3);
			addWeapons ["ACE_SOC_M4A1_GL_SD", "ACE_USPSD", "NVGoggles", "Binocular"];
			addWeapons ["ACE_Map", "ACE_HuntIR_monitor", "ACE_GlassesLHD_glasses"];
		};
		// Infiltrator
		case "INF": {
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("1Rnd_Smoke_M203",4);
			addMagazines("1Rnd_HE_M203",4);
			addMagazines("ACE_12Rnd_45ACP_USPSD",2);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",4);
			addMagazines("ACE_M7A3",4);
			addWeapons ["ACE_SOC_M4A1_GL_13", "ACE_USPSD", "NVGoggles"];
			addWeapons ["ACE_GlassesLHD_glasses", "ACE_GlassesGasMask_US"];
		};
		// Infiltrator
		case "INFSD": {
			addMagazines("30Rnd_556x45_StanagSD",8);
			addMagazines("ACE_12Rnd_45ACP_USPSD",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",4);
			addMagazines("ACE_M7A3",4);
			addWeapons ["ACE_SOC_M4A1_SD_9", "ACE_USPSD", "NVGoggles"];
			addWeapons ["ACE_GlassesLHD_glasses", "ACE_GlassesGasMask_US"];
		};
		case "GL": {// Grenadier
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("1Rnd_Smoke_M203",2);
			addMagazines("1Rnd_HE_M203",4);
			addMagazines("FlareRed_M203",2);
			addMagazines("ACE_12Rnd_45ACP_USPSD",2);
			addWeapons ["ACE_SOC_M4A1_GL_AIMPOINT", "NVGoggles", "ACE_FAST_PackEDC_ACU"];
			addWeapons ["ACE_GlassesLHD_glasses"];
			addMagazines("6Rnd_HE_M203",3);
			_unit setVariable ["ACE_weapononback","ACE_M32"];
			_unit addBackpack "US_Patrol_Pack_EP1";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["FlareRed_M203", 4];
			_pack addMagazineCargoGlobal ["6Rnd_HE_M203", 2];
		};
		case "SAP" : {// Sapper SF
			addMagazines("30Rnd_556x45_Stanag",8);
			addMagazines("ACE_12Rnd_45ACP_USPSD",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",2);
			addMagazines("HandGrenade_West",3);
			addWeapons ["ACE_SOC_M4A1_Aim", "ACE_USPSD", "NVGoggles", "Binocular"];
			addWeapons ["ACE_GlassesLHD_glasses", "ACE_FAST_PackEDC_ACU"];
			_unit addBackpack "US_Patrol_Pack_EP1";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["ACE_Claymore_M", 3];
		};
		case "SAB" : {// Saboteur SF
			addMagazines("30Rnd_556x45_StanagSD",8);
			addMagazines("ACE_12Rnd_45ACP_USPSD",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",3);
			addWeapons ["ACE_SOC_M4A1_SD_9", "ACE_USPSD", "NVGoggles", "Binocular"];
			addWeapons ["ACE_GlassesLHD_glasses", "ACE_FAST_PackEDC_ACU"];
			_unit addBackpack "US_Patrol_Pack_EP1";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["PipeBomb", 3];
		};
		case "DM": {//Marksman
			addMagazines("20Rnd_762x51_DMR",8);
			addMagazines("ACE_12Rnd_45ACP_USPSD",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",3);
			addMagazines("ACE_Battery_Rangefinder",2);
			addWeapons ["DMR", "ACE_USPSD", "NVGoggles", "ACE_YardAge450"];
			addWeapons ["ACE_Map", "ACE_GlassesLHD_glasses"];
		};
		case "DMSD": { // Marksman SD
			addMagazines("30Rnd_556x45_StanagSD",8);
			addMagazines("ACE_12Rnd_45ACP_USPSD",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",3);
			addMagazines("ACE_Battery_Rangefinder",2);
			addWeapons ["ACE_SOC_M4A1_SHORTDOT_SD", "ACE_USPSD", "NVGoggles", "ACE_YardAge450"];
			addWeapons ["ACE_GlassesLHD_glasses", "ACE_Map"];
		};
		case "SN": { // Sniper
			addMagazines("5Rnd_762x51_M24",8);
			addMagazines("ACE_12Rnd_45ACP_USPSD",4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",3);
			addWeapons ["M24_des_EP1", "ACE_USPSD", "NVGoggles", "Binocular"];
			addWeapons ["ACE_Map", "ACE_Map_Tools", "ItemGPS", "ACE_GlassesLHD_glasses"];
		};
		case "HSN" : {// Sniper SF
			addMagazines("10Rnd_127x99_m107",5);
			addMagazines("ACE_10Rnd_127x99_T_m107",1);
			addMagazines("ACE_10Rnd_127x99_Raufoss_m107",1);
			addMagazines("ACE_12Rnd_45ACP_USPSD", 4);
			addMagazines("SmokeShell",2);
			addMagazines("HandGrenade_West",3);
			addWeapons ["m107", "ACE_USPSD", "NVGoggles", "Binocular"];
			addWeapons ["ACE_Map", "ACE_Map_Tools", "ItemGPS", "ACE_GlassesLHD_glasses"];
		};
		case "ASN" : {// Assist. Sniper SF
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("1Rnd_HE_M203",4);
			addMagazines("1Rnd_Smoke_M203",3);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_Battery_Rangefinder",2);
			addWeapons ["ACE_SOC_M4A1_RCO_GL", "NVGoggles", "Binocular_Vector", "ACE_PRC119_ACU"];
			addWeapons ["ACE_Map", "ACE_Map_Tools", "ACE_DAGR", "ItemGPS", "ACE_Kestrel4500", "ACE_GlassesLHD_glasses"];
			_unit addBackpack "US_Patrol_Pack_EP1";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["1Rnd_HE_M203",2];
			_pack addMagazineCargoGlobal ["ACE_Claymore_M",3];
			_pack addMagazineCargoGlobal ["ACE_SSWhite_M203",2];
		};
		//Medic
		case "MED": {
			addMagazines("30Rnd_556x45_Stanag",6);
			addMagazines("HandGrenade_West",2);
			addMagazines("SmokeShell",2);
			addMagazines("ACE_Bandage", 2);
			addMagazines("ACE_Epinephrine", 2);
			addMagazines("ACE_Morphine", 2);
			addWeapons ["ACE_SOC_M4A1_Aim", "NVGoggles", "ACE_Rucksack_MOLLE_ACU_Medic"];
			addWeapons ["ACE_GlassesLHD_glasses"];			
			_unit addBackpack "US_Backpack_EP1";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["ACE_Medkit",5];
			_pack addMagazineCargoGlobal ["ACE_Morphine",5];
			_pack addMagazineCargoGlobal ["ACE_Epinephrine",2];
		};
	};
};