_veh = _this select 0;
_faction = _this select 1;
_loadout = _this select 2;
_common_processor = {
	clearWeaponCargo _this;
	clearMagazineCargo _this;
	_this disableTIEquipment true;
	_this addWeaponCargo ["ACE_JerryCan_Dummy_15",1];
	_this addMagazineCargo ["ACE_Rope_TOW_M_5",1];
};
_addTyre = {
	_veh = _this;
	if (local _veh) then {
		_n_tyres = (getNumber(configFile >> "CfgVehicles" >> typeOf _veh >> "ace_sys_repair_spare_tyres") - 1);
		for "_i" from 0 to _n_tyres do {
			private ["_tyre","_offset"];
			_offset = [0,(sizeOf (typeOf _veh)) / 2,0]; //unload by default behind the vehicle
			_type = getText(configFile >> "CfgVehicles" >> typeOf _veh >> "ace_sys_repair_tyre_type");
			_tyre = createVehicle [_type,_veh modelToWorld _offset,[],0,"NONE"];
			_veh setVariable ["ace_sys_cargo_content", (_veh getVariable ["ace_sys_cargo_content",[]]) + [_tyre], true];
			_tyre setVariable ["ace_sys_cargo_unloadPos", _offset, true];

			// Hide _tyre
			_tyre_pos = getPosATL _tyre;
			_tyre setPos [_tyre_pos select 0,_tyre_pos select 1,(_tyre_pos select 2)-20];
		};
	};
};
#include "veh_RA_MSV.sqf"
#include "veh_US_ARMY.sqf"
#include "veh_USMC.sqf"
#include "veh_USAF.sqf"
#include "veh_RFVVS.sqf"
_veh call _common_processor;
_veh call _addTyre;
switch _faction do {
	case "RA_MSV"		: {[_veh, _loadout] call _RA_MSV_processor};
	case "US_ARMY"		: {[_veh, _loadout] call _US_ARMY_processor};
	case "USMC"			: {[_veh, _loadout] call _USMC_processor};
	case "USAF"		: {[_veh, _loadout] call _USAF_processor};
	case "RFVVS"		: {[_veh, _loadout] call _RFVVS_processor};
	default {diag_log format ["Undefined vehicle faction : %1",_faction]};
};