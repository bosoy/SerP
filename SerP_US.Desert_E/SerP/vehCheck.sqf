private ["_vehicle", "_action"];
_vehicle = _this select 0;
_action = _this select 1;

/*
0 - driver
1 - gunner
2 - driver, gunner
3 - driver, gunner, commander
4 - pilot
5 - pilot, pilotgunner
*/

switch (_action) do {
	case 0: {
		if (isNil "var_restrictedDriver") then { var_restrictedDriver = [_vehicle] } else { var_restrictedDriver SET [count var_restrictedDriver, _vehicle] }
	};
	case 1: {
		if (isNil "var_restrictedGunner") then { var_restrictedGunner = [_vehicle] } else { var_restrictedGunner SET [count var_restrictedGunner, _vehicle] }
	};
	case 2: {
		if (isNil "var_restrictedDriver") then { var_restrictedDriver = [_vehicle] } else { var_restrictedDriver SET [count var_restrictedDriver, _vehicle] };
		if (isNil "var_restrictedGunner") then { var_restrictedGunner = [_vehicle] } else { var_restrictedGunner SET [count var_restrictedGunner, _vehicle] }
	};
	case 3: {		
		if (isNil "var_restrictedDriver") then { var_restrictedDriver = [_vehicle] } else { var_restrictedDriver SET [count var_restrictedDriver, _vehicle] };
		if (isNil "var_restrictedGunner") then { var_restrictedGunner = [_vehicle] } else { var_restrictedGunner SET [count var_restrictedGunner, _vehicle] };		
		if (isNil "var_restrictedCommander") then { var_restrictedCommander = [_vehicle] } else { var_restrictedCommander SET [count var_restrictedCommander, _vehicle] }
	};
	case 4: {
		if (isNil "var_restrictedPilot") then { var_restrictedPilot = [_vehicle] } else { var_restrictedPilot SET [count var_restrictedPilot, _vehicle] }
	};
	case 5: {
		if (isNil "var_restrictedPilot") then { var_restrictedPilot = [_vehicle] } else { var_restrictedPilot SET [count var_restrictedPilot, _vehicle] };
		if (isNil "var_restrictedPilotGunner") then { var_restrictedPilotGunner = [_vehicle] } else { var_restrictedPilotGunner SET [count var_restrictedPilotGunner, _vehicle] }
	};
};