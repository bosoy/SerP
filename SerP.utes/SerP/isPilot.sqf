private ["_fromEH","_vehicle","_vehicleRole","_unitToCheck","_typeToCheck","_allowedCrew","_warningMsg"];
_fromEH = _this select 0;
_vehicle = _fromEH select 0;
_vehicleRole = _fromEH select 1;
_unitToCheck = _fromEH select 2;
//if !(local _unitToCheck) exitWith {};
_allowedPilot = _this select 1;
_allowedGunner = _this select 2;
_warningMsg = localize "STR_UnauthorisedCrew";
_typeToCheck = format ["%1", typeOf _unitToCheck];
if ((_vehicleRole == "DRIVER")&&!(_typeToCheck in _allowedPilot)) then {
		titletext [format ["%1",_warningMsg], "PLAIN",.3];
		_unitToCheck action ["GetOut",_vehicle];
};
if ((_vehicleRole == "GUNNER")&&!(_typeToCheck in _allowedGunner)) then {
		titletext [format ["%1",_warningMsg], "PLAIN",.3];
		_unitToCheck action ["GetOut",_vehicle];
};
if (true) exitWith {};
//this addEventHandler ["GetIn",{[_this, ["US_Soldier_Pilot_EP1"], ["US_Soldier_Pilot_EP1"]] call SerP_isPilot}];
//this addEventHandler ["GetIn",{[_this,["US_Soldier_Pilot_EP1"],["US_Soldier_Pilot_EP1","US_Soldier_SL_EP1","US_Soldier_TL_EP1","US_Soldier_AR_EP1","US_Soldier_MG_EP1"]] call SerP_isPilot}];
//this addEventHandler ["GetIn",{[_this,["USMC_Soldier_Pilot"],["USMC_Soldier_Pilot","USMC_Soldier_SL","USMC_Soldier_TL","USMC_Soldier_AR","USMC_Soldier_MG"]] call SerP_isPilot}];