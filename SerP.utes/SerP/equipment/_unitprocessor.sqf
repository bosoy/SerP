#define __quoted(str) #str
#define __concat2(var1,var2) ##var1####var2
#define __concat3(var1,var2,var3) ##var1####var2####var3
#define __callProcessor(a) case __quoted(a) : {[_unit, _loadout] call __concat3(SerP_,a,_processor)};
_unit = _this select 0;
_faction = _this select 1;
call compile format ["if isNil {SerP_%1_processor} then {SerP_%1_processor = compile preprocessFileLineNumbers 'SerP\equipment\%1.sqf'}",_faction];
_loadout = toUpper(_this select 2);
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

_unit call _common_processor;
switch _faction do {
	__callProcessor(RA_MSV);
	__callProcessor(USMC);
	__callProcessor(USMS_SF);
	__callProcessor(US_ARMY);
	__callProcessor(US_DF);
	__callProcessor(75th);
	__callProcessor(USArmy_bp);
	__callProcessor(US_DF_bp);
	__callProcessor(TL_bp);
	__callProcessor(TL);
	__callProcessor(TA_ARMY);
	default {diag_log format ["Undefined unit faction : %1",_faction]};
};
//посадка юнита в технику, синхронизированную с юнитом, не работает на выделенном сервере
/*
_synchronizedObjects = synchronizedObjects _unit;
if ((count(_synchronizedObjects)>0)&&(local _unit)) then {
if ((_synchronizedObjects select 0) isKindOf "LandVehicle") then {
	_veh = _synchronizedObjects select 0;
	switch true do {
	case ((_loadout=="CRW")&&isNull(driver _veh)): {_unit moveInDriver _veh};
	case ((_loadout=="CRW")&&isNull(gunner _veh)): {_unit moveInGunner _veh};
	case (isNull(driver _veh)): {_unit moveInDriver _veh};
	case (isNull(gunner _veh)): {_unit moveInGunner _veh};
	default {_unit moveInCargo _veh};
	};
	_unit synchronizeObjectsRemove [_veh];
};};*/