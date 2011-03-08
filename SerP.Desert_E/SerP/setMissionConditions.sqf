private ["_timeOfDay","_weather","_MissionOvercast","_MissionFog"];

for [ { _i = 0 }, { _i < count(paramsArray) }, { _i = _i + 1 } ] do	{
	_paramName =(configName ((missionConfigFile >> "Params") select _i));
	_paramValue = (paramsArray select _i);
	_paramCode = ( getText (missionConfigFile >> "Params" >> _paramName >> "code"));
	_code = format[_paramCode, _paramValue];
	call compile _code;
};
if (time<10) then {//time will be automatically synchronised during JIP
switch (timeOfDay) do	{
	case 0:	{
		setDate [2010, 10, 21, 4, 50];
	};
	case 1:	{
		setDate [2010, 10, 21, 5, 50];
	};
	case 2:	{
		setDate [2010, 10, 21, 9, 00];
	};
	case 3:	{
		setDate [2010, 10, 21, 12, 0];
	};
	case 4:	{
		setDate [2010, 10, 21, 15, 00];
	};
	case 5:	{
		setDate [2010, 10, 21, 17, 50];
	};
	case 6:	{
		setDate [2010, 10, 21, 18, 50];
	};
	case 7:	{
		setDate [2010, 10, 21, 0, 0];
	};
	case 8:	{
		setDate getArray(missionConfigFile >> "SerP_const" >> "defaultTime");
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
	case 5: {
		0 setOvercast getNumber(missionConfigFile >> "SerP_const" >> "defaultOvercast");
		0 setFog getNumber(missionConfigFile >> "SerP_const" >> "defaultFog");
	};
	default {};
};

setViewDistance getNumber(missionConfigFile >> "SerP_const" >> "viewDistance");

if (isNil{briefing_mode}&&isServer) then {
	briefing_mode = 1;publicVariable "briefing_mode";
};

