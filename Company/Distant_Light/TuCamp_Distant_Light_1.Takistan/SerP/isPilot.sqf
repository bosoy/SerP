private ["_fromEH","_vehicle","_vehicleRole","_unitToCheck","_typeToCheck","_allowedCrew","_warningMsg"];

_fromEH = _this select 0;
_vehicle = _fromEH select 0;
_vehicleRole = _fromEH select 1;
_unitToCheck = _fromEH select 2;
if !(local _unitToCheck) exitWith {};
_allowedCrew = _this select 1;
_warningMsg = localize "STR_UnauthorisedCrew";
_typeToCheck = typeOf _unitToCheck;

if ((_vehicleRole in ["driver","gunner"])&&!(_typeToCheck in _allowedCrew)) then {
		hint format ["%1",_warningMsg];
		_unitToCheck action ["GetOut",_vehicle];
};
if (true) exitWith {};

//use - this addEventHandler ["GetIn","[this,['USMC_Soldier_Pilot']] call SerP_isPilot"];