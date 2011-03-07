#define addWeapons {_unit addWeapon _x} forEach 
#define addMagazines(a,b) for "_i" from 1 to b do {_unit addMagazine a}
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	case "SL" : { // 4th Squad Leader SF
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addWeapons ["ACE_USPSD", "ACE_HK416_D10_AIM", "NVGoggles", "Binocular"];
		addWeapons ["ACE_Map", "ACE_Map_Tools", "ACE_DAGR", "ItemGPS", "ACE_GlassesLHD_glasses"];
	};
	case "TL" : { // FT Leader SF
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("1Rnd_HE_M203",4);
		addMagazines("ACE_HuntIR_M203",3);
		addMagazines("ACE_Battery_Rangefinder",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addWeapons ["ACE_HK416_D10_M320", "NVGoggles", "ACE_PRC119", "ACE_YardAge450"];
		addWeapons ["ACE_Map", "ACE_HuntIR_monitor", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["1Rnd_HE_M203",4],["ACE_SSWhite_M203",4]]];

	};
	case "AR" : { // Automatic Rifleman SF
		addMagazines("200Rnd_556x45_M249",3);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addWeapons ["M249_EP1", "ACE_USPSD", "NVGoggles", "ACE_Rucksack_MOLLE_Green"];
		addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["200Rnd_556x45_M249", 2]]];
	};
	case "AR2" : { // Automatic Rifleman SF
		addMagazines("100Rnd_556x45_M249",4);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addWeapons ["M249_m145_EP1", "ACE_USPSD", "NVGoggles", "ACE_Rucksack_MOLLE_Green"];
		addWeapons ["ACE_Earplugs", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_556x45_M249", 2]]];

	};
	case "SN" : { // Sniper SF M24
		addMagazines("5Rnd_762x51_M24",8);
		addMagazines("SmokeShell",4);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addWeapons ["M40A3", "ACE_USPSD", "NVGoggles", "Binocular"];
		addWeapons ["ACE_Map", "ACE_Map_Tools", "ItemGPS"];

	};
	case "HSN" : { // Sniper SF M107
		addMagazines("10Rnd_127x99_m107",4);
		addMagazines("ACE_10Rnd_127x99_Raufoss_m107",1);
		addMagazines("SmokeShell",4);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addWeapons ["m107", "ACE_USPSD", "NVGoggles", "Binocular"];
		addWeapons ["ACE_Map", "ACE_Map_Tools", "ItemGPS"];

	};
	case "ASN" : { // Assist. Sniper SF
		addMagazines("20Rnd_762x51_DMR",6);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",4);
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("ACE_Battery_Rangefinder",2);
		addWeapons ["DMR", "NVGoggles"];
		_unit setVariable ["ACE_weapononback","ACE_HK416_D14"];
		addWeapons ["ACE_Map", "ACE_Rangefinder_OD", "ACE_Kestrel4500", "ACE_Rucksack_MOLLE_Green", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Claymore_M", 3], ["HandGrenade_West", 2], ["SmokeShell", 2], ["30Rnd_556x45_Stanag", 4]]];

	};
	case "DM" : { // Designated Marksman SF
		addMagazines("20Rnd_762x51_DMR",8);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addMagazines("SmokeShell",3);
		addMagazines("HandGrenade_West",4);
		addWeapons ["DMR", "ACE_USPSD", "NVGoggles", "Binocular", "ACE_GlassesLHD_glasses"];
		addWeapons ["ACE_Map", "ACE_GlassesLHD_glasses"];
	};
	case "MED" : { // Medic SF
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_12Rnd_45ACP_USPSD",2);
		addMagazines("SmokeShell",2);
		addWeapons ["ACE_HK416_D14", "ACE_USPSD", "NVGoggles", "ACE_Rucksack_MOLLE_Green_Medic", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]

	};
	case "RC" : { // Recon SF
		addMagazines("30Rnd_556x45_StanagSD",8);
		addMagazines("HandGrenade_West",4);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addWeapons ["ACE_HK416_D14_SD", "ACE_USPSD", "NVGoggles"];

	};
	case "SAB" : { // Saboteur SF
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addMagazines("HandGrenade_West",4);
		addMagazines("ACE_12Rnd_45ACP_USPSD",4);
		addWeapons ["ACE_HK416_D10_AIM", "ACE_USPSD", "NVGoggles", "ACE_Rucksack_MOLLE_Green", "ACE_GlassesLHD_glasses"];
		_unit setVariable ["ACE_RuckMagContents",[["PipeBomb", 3]]];
	};
};
