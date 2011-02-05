private ["_fromEH","_vehicle","_vehicleRole","_unitToCheck","_typeToCheck","_strTypeToCheck","_restrictedCrewType","_warningMsg"];

_fromEH = _this select 0;
_vehicle = _fromEH select 0;
_vehicleRole = _fromEH select 1;
_unitToCheck = _fromEH select 2;
_restrictedCrewType = _this select 1;
_warningMsg = localize "STR_UnauthorisedCrew";
_typeToCheck = typeOf _unitToCheck;
_strTypeToCheck = format ["%1", _typeToCheck];
if (local _unitToCheck) then {
	if ((_vehicleRole == "DRIVER") && (!(_strTypeToCheck in _restrictedCrewType))) then	{
		hint format ["%1",_warningMsg];
		_unitToCheck action ["getout",_vehicle];
	};
};
if (true) exitWith {};