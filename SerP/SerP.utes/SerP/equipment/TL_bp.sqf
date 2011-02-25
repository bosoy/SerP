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
TL_bp_processor = {
	_unit = _this select 0;
	_type = toUpper (_this select 1);
	switch _type do {
		// Warlord
		case "WL": {
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];
			_unit addWeapon "AK_47_M";
			{_unit addMagazine "ACE_33Rnd_9x19_G18"} forEach [0,0];
			_unit addWeapon "ACE_Glock18";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_East"} forEach [0,0];
			_unit addWeapon "Binocular";			
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_PRC119_ACU";
		};
		// Squad Lider
		case "SL": {	
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			{_unit addMagazine "ACE_20Rnd_762x51_B_G3"} forEach [0,0,0,0];
			_unit addWeapon "ACE_G3A3";
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_East"} forEach [0,0];
			_unit addWeapon "Binocular";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_PRC119_ACU";
		};
		// Watch Leader
		case "TL": {	
			_unit addWeapon "ACE_Map";
			_unit addWeapon "ACE_Map_Tools";
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];
			_unit addWeapon "AK_47_S";
			{_unit addMagazine "ACE_33Rnd_9x19_G18"} forEach [0,0];
			_unit addWeapon "ACE_Glock18";;
			{_unit addMagazine "SmokeShell"} forEach [0,0];
			{_unit addMagazine "HandGrenade_East"} forEach [0,0];
			_unit addWeapon "Binocular";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_PRC119_ACU";
		};
		//Machinegunner
		case "MG": {	
			{_unit addMagazine "100Rnd_762x54_PK"} forEach [0,0];
			_unit addWeapon "PK";
			_unit addMagazine "ACE_Bandage";
			{_unit addMagazine "HandGrenade_West"} forEach [0,0,0];
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "NVGoggles";
		};
		
		//Asst. Machinegunner
		case "AMG": {				
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];
			_unit addWeapon "AK_47_M";
			{_unit addMagazine "HandGrenade_West"} forEach [0,0,0];
			_unit addWeapon "NVGoggles";			
			_unit addBackpack "TK_ALICE_Pack_EP1";
			//[_unit, [["100Rnd_762x54_PK",2]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["100Rnd_762x54_PK",2];
			
		};
		
		// Automatic Rifleman
		case "AR": {
			{_unit addMagazine "ACE_75Rnd_545x39_S_RPK"} forEach [0,0,0,0];
			_unit addWeapon "RPK_74";
			{_unit addMagazine "HandGrenade_East"} forEach [0,0,0];
			_unit addWeapon "ACE_Earplugs";
			_unit addWeapon "NVGoggles";			
		};
		
		//AT Operator
		case "AT": {
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0];
			_unit addWeapon "AK_47_S";
			_unit addMagazine "PG7V";
			_unit addWeapon "RPG7V";
			_unit addWeapon "NVGoggles";
		};
		// Asst. AT Operator
		case "AAT": { 	
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];
			_unit addWeapon "AK_47_S";
			_unit addWeapon "NVGoggles";
			_unit addBackpack "TK_RPG_Backpack_EP1";
			//[_unit, [["PG7V",2],["OG7",2]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["PG7V",2];
			_pack addMagazineCargoGlobal ["OG7",2];
		};
		// Rifleman AT
		case "LAT": {
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];
			_unit addWeapon "AK_47_M";
			{_unit addMagazine "HandGrenade_East"} forEach [0,0,0];
			_unit addWeapon "ACE_RPG22";
			_unit addWeapon "NVGoggles";			
		};	
		// Saboteur
		case "SAB": {
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];
			_unit addWeapon "AK_47_S";
			_unit addBackpack "TK_ALICE_Pack_EP1";
			//[_unit, [["PipeBomb",2]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["PipeBomb",2];
			_unit addWeapon "NVGoggles";
		};
		// Sapper
		case "SAP": {
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];
			_unit addWeapon "AK_47_S";
			_unit addBackpack "TK_ALICE_Pack_EP1";
			_pack = unitBackpack _unit;
			//[_unit, [["BAF_ied_v2",2],["BAF_ied_v4",2]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["BAF_ied_v2",2];
			_pack addMagazineCargoGlobal ["BAF_ied_v4",2];			
			_unit addWeapon "NVGoggles";
		};
		// Asst. Sapper
		case "ASAP": { 	
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];
			_unit addWeapon "AK_47_S";
			_unit addWeapon "NVGoggles";
			_unit addBackpack "TK_ALICE_Pack_EP1";
			//[_unit, [["BAF_ied_v1",2],["BAF_ied_v3",2]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["BAF_ied_v1",2];
			_pack addMagazineCargoGlobal ["BAF_ied_v3",2];	
		};
		// Recon
		case "RC": {
			_unit addWeapon "ACE_Map";
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];			_unit addWeapon "AK_47_M";
			{_unit addMagazine "ACE_33Rnd_9x19_G18"} forEach [0,0];
			_unit addWeapon "ACE_Glock18";			_unit addMagazine "BAF_ied_v3";			{_unit addMagazine "HandGrenade_East"} forEach [0,0,0,0];			 _unit addWeapon "NVGoggles";						
		};
		// Lee-Endfield
		case "MR": {
			 {_unit addMagazine "10x_303"} forEach [0,0,0,0];			_unit addWeapon "LeeEnfield";			 {_unit addMagazine "HandGrenade_East"} forEach [0,0,0,0];			_unit addWeapon "RPG18";			_unit addWeapon "NVGoggles";
		};
		// Sniper SVD
		case "SNP": {
			 {_unit addMagazine "10Rnd_762x54_SVD"} forEach [0,0,0,0];			_unit addWeapon "SVD";			{_unit addMagazine "ACE_Pomz_M"} forEach [0,0];			{_unit addMagazine "SmokeShell"} forEach [0,0];			{_unit addMagazine "8Rnd_9x18_Makarov"} forEach [0,0];			_unit addWeapon "Makarov";			_unit addWeapon "NVGoggles";
		};	
		//Medic
		case "MED": {
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];
			_unit addWeapon "AK_47_M";
			_unit addMagazine "ACE_Bandage";
			_unit addMagazine "ACE_Morphine";
			{_unit addMagazine "HandGrenade_West"} forEach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addBackpack "TK_ALICE_Pack_EP1";
			//[_unit, [["ACE_Bandage",5],["ACE_Morphine",5],["ACE_Epinephrine",2]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["ACE_Bandage",5];
			_pack addMagazineCargoGlobal ["ACE_Morphine",5];	
			_pack addMagazineCargoGlobal ["ACE_Epinephrine",2];	
		};
		//Grenadier
		case "GL": {				
			{_unit addMagazine "ACE_30Rnd_556x45_S_Stanag"} forEach [0,0,0,0];
			{_unit addMagazine "1Rnd_HE_M203"} forEach [0,0,0,0,0];
			_unit addWeapon "M16A2GL";
			{_unit addMagazine "HandGrenade_East"} forEach [0,0,0,0];
			_unit addWeapon "NVGoggles";
		};
		
		//DSHKM		
		case "HMG" : {
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];
			_unit addWeapon "AK_47_S";			
			_unit addWeapon "ACE_DSHKMProxy";
			_unit addMagazine "ACE_DSHKM_CSWDM";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			//DSHKM Gunner
		};
		case "HMGAG" : {
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];
			_unit addWeapon "AK_47_S";
			_unit addWeapon "ACE_DSHKMTripodProxy";
			_unit addMagazine "ACE_DSHKM_CSWDM";
			{_unit addMagazine "HandGrenade_West"} foreach [0,0];
			_unit addWeapon "Binocular";
			_unit addWeapon "NVGoggles";
			_unit addWeapon "ACE_Earplugs";
			//DSHKM Asst. Gunnder
		};
		case "HMGAB" : {
			{_unit addMagazine "30Rnd_762x39_AK47"} forEach [0,0,0];
			_unit addWeapon "AK_47_S";
			{_unit addMagazine "HandGrenade_East"} foreach [0,0];
			_unit addWeapon "NVGoggles";
			_unit addBackpack "TK_ALICE_Pack_EP1";
			//[_unit, [["ACE_DSHKM_CSWDM",4]]] execVM "SerP\equipment\addMagazineBackpack.sqf";
			_pack = unitBackpack _unit;
			clearMagazineCargo _pack;
			_pack addMagazineCargoGlobal ["ACE_DSHKM_CSWDM",4];
		};
	};
};