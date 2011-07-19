if isNil{SerP_vehprocessor} then {
	SerP_vehprocessor = compile preprocessFileLineNumbers "Equipment\_vehprocessor.sqf";
};
_this call SerP_vehprocessor; 
