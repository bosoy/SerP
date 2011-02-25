if isNil{SerP_vehprocessor} then {
	SerP_vehprocessor = compile preprocessFileLineNumbers "SerP\equipment\_vehprocessor.sqf";
};
_this call SerP_vehprocessor; 
