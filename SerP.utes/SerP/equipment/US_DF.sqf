#define addWeapons {_unit addWeapon _x} forEach 
#define addMagazines(a,b) for "_i" from 1 to b do {_unit addMagazine a}
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	// Squad Lider
	case "SL": {
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("15Rnd_9x19_M9SD ",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_SOC_M4A1_Eotech", "M9SD", "NVGoggles", "Binocular"];
		addWeapons ["ACE_Map", "ACE_Map_Tools", "ACE_DAGR", "ItemGPS", "ACE_GlassesLHD_glasses"];

	};

	// Team Lider
	case "TL": {
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["ACE_SOC_M4A1_Eotech_4x", "M9SD", "NVGoggles", "Binocular", "ACE_PRC119_ACU"];
		addWeapons ["ACE_Map", "ACE_Map_Tools", "ACE_DAGR", "ItemGPS", "ACE_GlassesLHD_glasses"];
	};

	// Automatic Rifleman
	case "AR2": {

		addMagazines("100Rnd_556x45_M249",3);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M249_m145_EP1", "M9SD", "NVGoggles", "ACE_FAST_PackEDC_ACU"];
		addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_556x45_M249", 2]]];
	};
	//Machinegunner
	case "MG": {
		addMagazines("100Rnd_762x51_M240",3);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["Mk_48_DES_EP1", "M9SD", "NVGoggles", "ACE_FAST_PackEDC_ACU"];
		addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",2]]];
	};
	// Operator SD
	case "RC": {
		addMagazines("30Rnd_556x45_StanagSD",8);
		addMagazines("ACE_HuntIR_M203",3);
		addMagazines("1Rnd_HE_M203",2);
		addMagazines("15Rnd_9x19_M9SD",5);
		addMagazines("SmokeShell",2);
		addMagazines("SmokeShellRed",2);
		addMagazines("IR_Strobe_Target",3);
		addMagazines("HandGrenade_West",3);
		addWeapons ["ACE_SOC_M4A1_GL_SD", "M9SD", "NVGoggles", "Binocular"];
		addWeapons ["ACE_Map", "ACE_HuntIR_monitor", "ACE_GlassesLHD_glasses"];
	};
	// Infiltrator
	case "INF": {
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("1Rnd_Smoke_M203",4);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("15Rnd_9x19_M9SD",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addWeapons ["ACE_SOC_M4A1_GL_13", "M136", "M9SD", "NVGoggles"];
		addWeapons ["ACE_GlassesLHD_glasses", "ACE_GlassesGasMask_US"];
	};
	// Infiltrator
	case "INFSD": {
		addMagazines("30Rnd_556x45_StanagSD",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addWeapons ["ACE_SOC_M4A1_SD_9", "M136", "M9SD", "NVGoggles"];
		addWeapons ["ACE_GlassesLHD_glasses", "ACE_GlassesGasMask_US"];
	};
	case "GL": {// Grenadier
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("1Rnd_Smoke_M203",2);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("FlareRed_M203",2);
		addMagazines("15Rnd_9x19_M9SD",2);
		addWeapons ["ACE_SOC_M4A1_GL_AIMPOINT", "NVGoggles", "ACE_FAST_PackEDC_ACU"];
		addWeapons ["ACE_GlassesLHD_glasses"];
		addMagazines("6Rnd_HE_M203",3);
		_unit setVariable ["ACE_weapononback","ACE_M32"];
		_unit setVariable ["ACE_RuckMagContents",[["FlareRed_M203", 4], ["6Rnd_HE_M203", 1], ["1Rnd_Smoke_M203", 6]]];
	};
	case "SAP" : {// Sapper SF
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["ACE_SOC_M4A1_Aim", "M9SD", "NVGoggles", "Binocular"];
		addWeapons ["ACE_GlassesLHD_glasses", "ACE_FAST_PackEDC_ACU"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Claymore_M", 3]]];
	};
	case "SAB" : {// Saboteur SF
		addMagazines("30Rnd_556x45_StanagSD",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["ACE_SOC_M4A1_SD_9", "M9SD", "NVGoggles", "Binocular"];
		addWeapons ["ACE_GlassesLHD_glasses", "ACE_FAST_PackEDC_ACU"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb", 3]]];
	};
	case "DM": {//Marksman
		addMagazines("20Rnd_762x51_DMR",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["DMR", "M9SD", "NVGoggles", "ACE_YardAge450"];
		addWeapons ["ACE_Map", "ACE_GlassesLHD_glasses"];
	};
	case "DMSD": { // Marksman SD
		addMagazines("30Rnd_556x45_StanagSD",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["ACE_SOC_M4A1_SHORTDOT_SD", "M9SD", "NVGoggles", "ACE_YardAge450"];
		addWeapons ["ACE_GlassesLHD_glasses", "ACE_Map"];
	};
	case "SN": { // Sniper
		addMagazines("5Rnd_762x51_M24",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["M24_des_EP1", "M9SD", "NVGoggles", "Binocular"];
		addWeapons ["ACE_Map", "ACE_Map_Tools", "ItemGPS", "ACE_GlassesLHD_glasses"];
	};
	case "SNNV": { // Sniper
		addMagazines("20Rnd_762x51_B_SCAR",8);
		addMagazines("15Rnd_9x19_M9SD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["M110_NVG_EP1", "M9SD", "NVGoggles", "Binocular"];
		addWeapons ["ACE_Map", "ACE_Map_Tools", "ItemGPS", "ACE_GlassesLHD_glasses"];
	};
	case "HSN" : {// Sniper SF
		addMagazines("10Rnd_127x99_m107",5);
		addMagazines("ACE_10Rnd_127x99_T_m107",1);
		addMagazines("ACE_10Rnd_127x99_Raufoss_m107",1);
		addMagazines("15Rnd_9x19_M9SD", 4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",3);
		addWeapons ["m107", "M9SD", "NVGoggles", "Binocular"];
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
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",2],["ACE_SSWhite_M203",2], ["ACE_Claymore_M",3]]];
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
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
	};
};
