/*
WL	 	- Warlord
SL 		- Team Leader
TL 		- Team Leader
MG 		- Machinegunner
AMG		- Asst. Machinegunner
AR		- Automatic Rifleman
AT		- Operator Anti Tank
AAT		- Asst. Operator Anti Tank
LAT		- Rifleman AT
AA		- Anti Air Operaror
SAB		- Saboteur
SAP		- Sapper
ASAP	- Asst. Sapper
RC		- Recon
MR		- Marksman
SNP		- Sniper
MED		- Courpsman
GL		- Grenadier
HMG		- Heavy Machinegunner
HMGAG	- Asst. Heavy Machinegunner
HMGAB	- Ammo Bearer Heavy Machinegun
*/

_unit = _this select 0;
_type = toUpper (_this select 1);
switch _type do {
	// Warlord
	case "WL": {
		addWeapons ["AK_47_M","ACE_Glock18","Binocular","NVGoggles","ACE_PRC119_ACU"];
		addWeapons ["ACE_Map","ACE_Map_Tools","ItemGPS"];
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
	};
	// Squad Lider
	case "SL": {	
		addWeapons ["ACE_Map","ACE_Map_Tools","ACE_G3A3","Binocular","NVGoggles","ACE_PRC119_ACU"];
		addMagazines("ACE_20Rnd_762x51_B_G3",3);
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
	};
	// Watch Leader
	case "TL": {
		addWeapons ["ACE_Map","ACE_Map_Tools","ACE_Glock18","AK_47_S","Binocular","NVGoggles","ACE_PRC119_ACU"];
		addMagazines("SmokeShell",2);
		addMagazines("HandGrenade_East",2);
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("ACE_33Rnd_9x19_G18",2);
	};
	//Machinegunner
	case "MG": {
		addWeapons ["ACE_Map","PK","Binocular","NVGoggles","ACE_PRC119_ACU","ACE_Earplugs"];
		addMagazines("100Rnd_762x54_PK",2);
		addMagazines("HandGrenade_West",3);
	};
	
	//Asst. Machinegunner
	case "AMG": {				
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["AK_47_M", "ACE_Map", "NVGoggles", "ACE_ALICE_Backpack"];
		addMagazines("HandGrenade_West",3);
		_unit setVariable ["ACE_RuckMagContents",[["100Rnd_762x54_PK",2]]];			
	};
	
	// Automatic Rifleman
	case "AR": {
		addMagazines("ACE_75Rnd_545x39_S_RPK",4);
		addWeapons ["RPK_74", "ACE_Earplugs", "ACE_Map","NVGoggles"];
		addMagazines("HandGrenade_East",3);
	};
	
	//AT Operator
	case "AT": {
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("HandGrenade_East",3);
		addWeapons ["AK_47_S", "ACE_Earplugs", "ACE_Map", "RPG7V","NVGoggles"];
		addMagazines("PG7V",1);
	};
	// Asst. AT Operator
	case "AAT": { 	
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("HandGrenade_East",3);
		addWeapons ["AK_47_M", "ACE_Map", "NVGoggles", "ACE_ALICE_Backpack", "ACE_Earplugs"];
		_unit setVariable ["ACE_RuckMagContents", [["PG7V",2],["OG7",2]]];
	};
	// Rifleman AT
	case "LAT": {
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["AK_47_S", "ACE_Map", "NVGoggles", "ACE_RPG22"];
		addMagazines("HandGrenade_East",3);	
	};	
	// Saboteur
	case "SAB": {
		addWeapons ["AK_47_S", "ACE_Map", "NVGoggles","ACE_ALICE_Backpack"];
		addMagazines("30Rnd_762x39_AK47",3);
		_unit setVariable ["ACE_RuckMagContents", [["PipeBomb",2]]];
	};
	// Sapper
	case "SAP": {
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["AK_47_S", "ACE_Map", "NVGoggles","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents", [["BAF_ied_v2",2],["BAF_ied_v4",2]]];
	};
	// Asst. Sapper
	case "ASAP": { 	
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["AK_47_S", "ACE_Map", "NVGoggles","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents", [["BAF_ied_v1",2],["BAF_ied_v3",2]]];
	};
	// Recon
	case "RC": {
		addWeapons ["AK_47_M", "ACE_Map", "ACE_Glock18", "NVGoggles"];
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("ACE_33Rnd_9x19_G18",2);
		_unit addMagazine "BAF_ied_v3";
		addMagazines("HandGrenade_East",4);				
	};
	// Lee-Endfield
	case "MR": {
		addMagazines("10x_303",4);
		addWeapons ["LeeEnfield", "ACE_Map", "NVGoggles", "RPG18"];
		addMagazines("HandGrenade_East",4);
	};
	// Sniper SVD
	case "SNP": {
		addMagazines("10Rnd_762x54_SVD",4);			
		addWeapons ["SVD", "ACE_Map", "NVGoggles", "Makarov"];
		addMagazines("ACE_Pomz_M",2);
		addMagazines("SmokeShell",2);
		addMagazines("8Rnd_9x18_Makarov",2);
	};	
	//Medic
	case "MED": {
		addMagazines("30Rnd_762x39_AK47",3);
		addMagazines("ACE_LargeBandage",2);
		addMagazines("ACE_Bandage",2);
		addMagazines("ACE_Morphine",2);
		addMagazines("ACE_Epinephrine",2);
		addMagazines("ACE_Medkit",2);
		addWeapons ["AK_47_M", "ACE_Map", "NVGoggles","ACE_ALICE_Backpack"];
		_unit setVariable ["ACE_RuckMagContents",[["ACE_Bandage",10],["ACE_Morphine",10],["ACE_Epinephrine",10],["ACE_Medkit",10]]]
	};
	//Grenadier
	case "GL": {				
		addMagazines("ACE_30Rnd_556x45_S_Stanag",4);
		addMagazines("1Rnd_HE_M203",5);
		addWeapons ["M16A2GL", "ACE_Map", "NVGoggles"];
		addMagazines("HandGrenade_East",4);
	};
	
	//DSHKM		
	case "HMG" : {
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["AK_47_S", "ACE_Map", "NVGoggles"];		
		addWeapons ["ACE_DSHKMProxy","ACE_Earplugs"];
		_unit addMagazine "ACE_DSHKM_CSWDM";
		//DSHKM Gunner
	};
	case "HMGAG" : {
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["AK_47_S", "ACE_Map", "NVGoggles"];	
		addWeapons ["ACE_DSHKMTripodProxy", "Binocular", "ACE_Earplugs"];
		_unit addMagazine "ACE_DSHKM_CSWDM";
		addMagazines("HandGrenade_West",2);
		//DSHKM Asst. Gunnder
	};
	case "HMGAB" : {
		addMagazines("30Rnd_762x39_AK47",3);
		addWeapons ["AK_47_S", "ACE_Map", "NVGoggles", "ACE_BackPack_ACR"];
		addMagazines("HandGrenade_East",2);
		_unit setVariable ["ACE_RuckMagContents", [["ACE_DSHKM_CSWDM",4]]];
	};
};
