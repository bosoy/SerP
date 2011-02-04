if isNil{SerP_unitprocessor} then {
	SerP_unitprocessor = compile preprocessFileLineNumbers "SerP\equipment\_unitprocessor.sqf";
};
_this call SerP_unitprocessor; 
