#define addWeapons {_unit addWeapon _x} forEach 
#define addMagazines(a,b) for "_i" from 1 to b do {_unit addMagazine a}
_unit = _this select 0;
_faction = _this select 1;
_loadout = _this select 2;
_common_processor = {
	_unit setBehaviour "CARELESS"; 
	_unit allowFleeing 0; 
	_unit disableAI "AUTOTARGET";
	_unit disableAI "PATHPLAN";
	//_unit setCombatMode "BLUE";
	_unit doWatch objNull;
	_unit disableAI "MOVE";
	_unit stop true;
	removeAllWeapons _unit;
	removeBackpack _unit;
	removeAllItems _unit;
	{_unit removeMagazine _x} forEach (magazines _unit); 
	_unit removeWeapon "ItemGPS";
	{_unit addMagazine "ACE_Bandage";} forEach [0,0];
	_unit addMagazine "ACE_Morphine";
	_unit addMagazine "ACE_Epinephrine";
	_unit addWeapon "ItemMap";
	_unit addWeapon "ItemRadio";
	_unit addWeapon "ItemWatch";
	_unit addWeapon "ItemCompass";
};

#include "RA_MSV.sqf"
#include "USMC.sqf"
#include "USMC_SF.sqf"
#include "US_ARMY.sqf"
#include "75th.sqf"
#include "US_DF.sqf"
#include "USArmy_bp.sqf"
#include "US_DF_bp.sqf"
#include "TL_bp.sqf"
#include "TL.sqf"
#include "TA_ARMY.sqf"

_unit call _common_processor;
switch _faction do {
	case "RA_MSV"		: {[_unit, _loadout] call _RA_MSV_processor};
	case "USMC"			: {[_unit, _loadout] call _USMC_processor};
	case "USMS_SF"		: {[_unit, _loadout] call _USMC_SF_processor};
	case "US_ARMY"		: {[_unit, _loadout] call _US_ARMY_processor};
	case "US_DF"		: {[_unit, _loadout] call _US_DF_processor};
	case "75th"			: {[_unit, _loadout] call _75th_processor};
	case "USArmy_bp"	: {[_unit, _loadout] call _USArmy_bp_processor};
	case "US_DF_bp"		: {[_unit, _loadout] call _US_DF_bp_processor};
	case "TL_bp"		: {[_unit, _loadout] call _TL_bp_processor};  
	case "TL"		: {[_unit, _loadout] call _TL_processor};  
	case "TA_ARMY"		: {[_unit, _loadout] call _TA_ARMY_processor};  
	default {diag_log format ["Undefined unit faction : %1",_faction]};
};
