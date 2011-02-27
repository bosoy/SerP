private ["_fromEH","_vehicle","_vehicleRole","_unitToCheck","_typeToCheck","_strTypeToCheck","_allowedCrewType","_warningMsg"];

_fromEH = _this select 0;
_vehicle = _fromEH select 0;
_vehicleRole = _fromEH select 1;
_unitToCheck = _fromEH select 2;
_allowedCrewType = _this select 1;
_warningMsg = localize "STR_UnauthorisedCrew";
_typeToCheck = format ["%1", typeOf _unitToCheck];
if (local _unitToCheck) then {
	if ((_vehicleRole == "DRIVER") && (!(_typeToCheck in _allowedCrewType))) then {
		titletext [format ["%1",_warningMsg], "PLAIN",.3];
		_unitToCheck action ["getout",_vehicle];
	};
};
if (true) exitWith {};