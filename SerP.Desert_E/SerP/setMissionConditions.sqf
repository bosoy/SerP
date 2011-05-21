private ["_timeOfDay","_weather","_MissionOvercast","_MissionFog"];

for [ { _i = 0 }, { _i < count(paramsArray) }, { _i = _i + 1 } ] do	{
	_paramName =(configName ((missionConfigFile >> "Params") select _i));
	_paramValue = (paramsArray select _i);
	_paramCode = ( getText (missionConfigFile >> "Params" >> _paramName >> "code"));
	_code = format[_paramCode, _paramValue];
	call compile _code;
};
if (time<10) then {//time will be automatically synchronised during JIP
_defDate = date;
switch (timeOfDay) do	{
	case 0:	{
		setDate [_defDate select 0, _defDate select 1, _defDate select 2, 4, 50];
	};
	case 1:	{
		setDate [_defDate select 0, _defDate select 1, _defDate select 2, 5, 50];
	};
	case 2:	{
		setDate [_defDate select 0, _defDate select 1, _defDate select 2, 9, 00];
	};
	case 3:	{
		setDate [_defDate select 0, _defDate select 1, _defDate select 2, 12, 0];
	};
	case 4:	{
		setDate [_defDate select 0, _defDate select 1, _defDate select 2, 15, 00];
	};
	case 5:	{
		setDate [_defDate select 0, _defDate select 1, _defDate select 2, 17, 50];
	};
	case 6:	{
		setDate [_defDate select 0, _defDate select 1, _defDate select 2, 18, 50];
	};
	case 7:	{
		setDate [_defDate select 0, _defDate select 1, _defDate select 2, 0, 0];
	};
	default	{};
};
};
switch (weather) do	{
// Clear
	case 0: {
		_MissionOvercast = 00.00;
		_MissionFog = 00.00;
		0 setOvercast _MissionOvercast;
		0 setFog _MissionFog;
	};
// Overcast
	case 1: {
		_MissionOvercast = 00.60;
		_MissionFog = 00.10;
		0 setOvercast _MissionOvercast;
		0 setFog _MissionFog;
	};
// Light Fog
	case 2: {
		_MissionOvercast = 00.60;
		_MissionFog = 00.60;
		0 setOvercast _MissionOvercast;
		0 setFog _MissionFog;
	};
// Heavy Fog
	case 3: {
		_MissionOvercast = 00.60;
		_MissionFog = 00.96;
		0 setOvercast _MissionOvercast;
		0 setFog _MissionFog;
	};
// Storm
	case 4: {
		_MissionOvercast = 01.00;
		_MissionFog = 00.50;
		0 setOvercast _MissionOvercast;
		0 setFog _MissionFog;
	};
//default
	default {};
};

setViewDistance getNumber(missionConfigFile >> "SerP_const" >> "viewDistance");

if (isNil{briefing_mode}&&isServer) then {
	briefing_mode = 1;publicVariable "briefing_mode";
};

