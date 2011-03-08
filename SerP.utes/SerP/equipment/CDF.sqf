#define addWeapons {_unit addWeapon _x} forEach 
#define addMagazines(a,b) for "_i" from 1 to b do {_unit addMagazine a}
_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	
	case "SL": {// Squad Leader
		addMagazines("30Rnd_556x45_Stanag",8);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2","ACE_PRC119_ACU","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools"];
	};
	
	case "TL": {// Watch Leader
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_West",2);
		addMagazines("ACE_20Rnd_762x51_B_M14",8);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		addWeapons ["M14_EP1","ACE_Glock18","ACE_PRC119_ACU","Binocular","NVGoggles"];
		addWeapons ["ACE_Map","ACE_Map_Tools"];
	};
	
	case "MG": {//Machinegunner
		addMagazines("100Rnd_762x51_M240",3);
		addMagazines("HandGrenade_West",3);
		addWeapons ["ACE_M60","NVGoggles","ACE_Earplugs"];
	};
	
	case "AG": {//Asst. Machinegunner
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("HandGrenade_West",3);
		addWeapons ["M16A2","Binocular", "NVGoggles", "ACE_Combat_Pack"];
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x51_M240",2]]];			
	};
	
	case "HAT": {//AT Operator
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("SmokeShell",2);
		addMagazines("Dragon_EP1",1);
		addWeapons ["M4A1","M47Launcher_EP1","NVGoggles"];
	};
	
	case "AHAT": {// Asst. AT Operator
		addMagazines("30Rnd_556x45_Stanag",4);
		addMagazines("HandGrenade_West",3);
		addMagazines("Dragon_EP1",1);
		addWeapons ["M16A2", "ACE_Map", "NVGoggles", "ACE_Combat_Pack", "ACE_Earplugs"];
		_unit setVariable ["ACE_RuckMagContents", [["Dragon_EP1",1]]];
	};
	
	case "LAT": {// Rifleman AT
		addMagazines("30Rnd_556x45_Stanag",3);
		addMagazines("HandGrenade_West",3);	
		addWeapons ["M16A2", "ACE_Map", "NVGoggles", "ACE_M72"];
	};	
	
	case "MR": {// Marksman
		addMagazines("ACE_20Rnd_762x51_B_M14",6);
		addMagazines("HandGrenade_West",4);
		addWeapons ["ACE_M14_ACOG", "NVGoggles"];
	};
	
	case "SN": {// Sniper
		addMagazines("5Rnd_762x51_M24",6);
		addMagazines("15Rnd_9x19_M9",2);
		addMagazines("SmokeShell",2);
		addWeapons ["M24_des_EP1","M9","NVGoggles"];
		addWeapons ["ACE_Map","ItemGPS"];
	};
	
	case "MED": {//Medic
		addMagazines("30Rnd_556x45_Stanag",6);
		addWeapons ["M16A2", "NVGoggles","ACE_Combat_Pack"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
	};
	
	case "GL": {//Grenadier
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("1Rnd_HE_M203",8);
		addMagazines("HandGrenade_West",4);
		addWeapons ["M16A2", "NVGoggles"];
		_unit setVariable ["ACE_weapononback","M79_EP1"];
	};
	
	case "AA": {//Pzrk Operator
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("HandGrenade_West",3);
		addMagazines("Stinger",1);
		addWeapons ["M16A2", "ACE_Earplugs", "Stinger","NVGoggles"];
	};
//M2
	case "HMG" : {//M2 Gunner
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_M2_CSWDM",2);
		addWeapons ["M16A2", "ACE_Map", "NVGoggles"];		
		addWeapons ["ACE_M2HBProxy","ACE_Earplugs"];
	};
	case "HMGAG" : {//M2 Asst. Gunner
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("ACE_M2_CSWDM",2);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2", "NVGoggles","Binocular"];	
		addWeapons ["ACE_M3TripodProxy", "Binocular", "ACE_Earplugs"];
	};
	case "HMGAB" : {
		addMagazines("30Rnd_556x45_Stanag",6);
		addMagazines("HandGrenade_West",2);
		addWeapons ["M16A2", "NVGoggles", "ACE_BackPack_ACR"];
		_unit setVariable ["ACE_RuckMagContents", [["ACE_M2_CSWDM",4]]];
	};
};
