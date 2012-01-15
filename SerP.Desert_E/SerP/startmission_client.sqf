#include "const.sqf"
private ["_blocker"];
trashArray = [];
planeList = [];
waitUntil{player==player};
if (count(playableUnits)==0) exitWith {[] call compile preprocessFileLineNumbers "SerP\setMissionConditions.sqf"};//костыль для запуска в синглплеерном редакторе
if !alive(player) exitWith {[] call compile preprocessFileLineNumbers "SerP\setMissionConditions.sqf"};
sleep .01;
player setVariable ["SerP_isPlayer",true,true];
if ((SerP_loading==1)&&(time<60)&&!((player == leader group player)||(serverCommandAvailable "#kick"))) exitWith {
	failMission "loser";
};

_veh = (vehicle player);
openMap [true,true];
_veh enableSimulation false;
_blocker2 = (findDisplay 46) displayAddEventHandler ["MouseButtonDown", '
	[0,-1] call ace_sys_weaponselect_fnc_keypressed;
	false
'];
[0,-1] call ace_sys_weaponselect_fnc_keypressed;
try {
	_waitTime = time + 90;
	waitUntil{sleep 1;
		!isNil{warbegins}||(time>_waitTime)
	};
	if isNil{warbegins} then {warbegins = 1};
	if (warbegins==1) then {throw "warbegins"};
	_radio=createTrigger["EmptyDetector",[0,0]];
	_radio setTriggerActivation["INDIA","PRESENT",true];
	_radio setTriggerStatements["this",format ["
		if (%1) then {
			if ((readyArray select 1) == 0) then
				{readyArray set [1, 1];publicVariable ""readyArray"";}
			else
				{readyArray set [1, 0];publicVariable ""readyArray"";};
		};
		if (%2) then {
			if ((readyArray select 0) == 0) then
				{readyArray set [0, 1];publicVariable ""readyArray"";}
			else
				{readyArray set [0, 0];publicVariable ""readyArray"";}
		;};
		", side player == __sideREDFOR, side player == __sideBLUEFOR],
		""];
	trashArray set [count trashArray, _radio];

	_endTrigger = createTrigger["EmptyDetector",[0,0]];
	_endTrigger setTriggerActivation ["ANY", "PRESENT", true];
	_endTrigger setTriggerStatements[
		"(((readyArray select 0) == 1))",format [
		"taskhint [""BLUEFOR ready "", [0, 0, 1, 1], ""taskNew""];if (%1) then {9 setRadioMsg localize ""STR_serp_continue_briefing"";};",side player == __sideBLUEFOR],format [
		"taskhint [""BLUEFOR not ready "", [0, 0, 1, 1], ""taskNew""];if (%1) then {9 setRadioMsg localize ""STR_serp_end_briefing"";};",side player == __sideBLUEFOR]
		];
	trashArray set [count trashArray, _endTrigger];

	_endTrigger = createTrigger["EmptyDetector",[0,0]];
	_endTrigger setTriggerActivation ["ANY", "PRESENT", true];
	_endTrigger setTriggerStatements[
		"(((readyArray select 1) == 1))",format [
		"taskhint [""REDFOR ready "", [1, 0, 0, 1], ""taskNew""];if (%1) then {9 setRadioMsg localize ""STR_serp_continue_briefing"";};",side player == __sideREDFOR],format [
		"taskhint [""REDFOR not ready "", [1, 0, 0, 1], ""taskNew""];if (%1) then {9 setRadioMsg localize ""STR_serp_end_briefing"";};",side player == __sideREDFOR]
		];
	trashArray set [count trashArray, _endTrigger];
	9 setRadioMsg localize "STR_serp_end_briefing";
	_waitTime = time + 90;
	waitUntil{sleep 1;
		!isNil{startZones}||(time>_waitTime)
	};

	if isNil{startZones} then {
		startZones = [[getPos(vehicle player),__defZoneSize,1,objNull,objNull]];
	};
	_inZone = false;
	{
		_pos = (_x select 0);
		_size = (_x select 1);
		_helper = (_x select 3);
		_ppos = getPos vehicle player;
		_dist = [_ppos select 0,_ppos select 1,0] distance [_pos select 0,_pos select 1,0];
		if (_dist<(_size+__hintzonesize)) exitWith {
			_inZone = true;
			_waitTime = time + 90;
			waitUntil {sleep .5;(time>_waitTime)||((getDir _helper != 0)&&!(isNull _helper))||(isNull _helper)};
			[] call compile preprocessFileLineNumbers "SerP\setMissionConditions.sqf";
			openMap [false,false];
			_veh enableSimulation true;

			createMarkerLocal ["SerP_startZoneMarker",_pos];
			"SerP_startZoneMarker" setMarkerBrushLocal "SOLID";
			"SerP_startZoneMarker" setMarkerShapeLocal "Ellipse";
			"SerP_startZoneMarker" setMarkerSizeLocal [_size,_size];
			"SerP_startZoneMarker" setMarkerColorLocal "ColorGreen";
			"SerP_startZoneMarker" setMarkerAlphaLocal 1;
			_act = _veh addAction ["Change optics", "SerP\opticsChange.sqf"];
			while {(warbegins!=1)} do {
				sleep 1;
				_ppos = getPos vehicle player;
				_dist = [_ppos select 0,_ppos select 1,0] distance [_pos select 0,_pos select 1,0];
				if (_dist>(_size+__hintzonesize)) then {
					hint localize "STR_serp_sorry";
					player say "r44";
					player say "svd_single_shot_v2";
					player say "All_haha";
					//player say "ACE_rus_combat143";
					sleep 4;
					player setPos [_pos select 0,_pos select 1,0];
				};
				if (_dist>_size) then {
					hint localize "STR_serp_outOfZone";
					(vehicle player) setVelocity [0,0,0];
					switch round(random 11) do {
						case 0: {player say "r11"};
						case 1: {player say "r15"};
						case 2: {player say "r26"};
						case 3: {player say "r29"};
						case 4: {player say "r25"};
						case 5: {player say "r04"};
						case 6: {player say "r21_4"};
						case 7: {player say "ACE_rus_combat117"};
						case 8: {player say "ACE_rus_combat197"};
						case 9: {player say "Zora_AK74";player say "UnderFire1"};
						case 10: {player say "Zora_M16";player say "UnderFire2"};
						case 11: {player say "svd_single_shot_v2";player say "UnderFire3"};
					};
					sleep 3;
				};
			};
			_veh removeAction _act;
			throw "";
		};
	} forEach startZones;
	throw "outOfZone";
}
catch {
	if (_exception == "outOfZone") then {
		diag_log "startmission_client.sqf - player is out of zones";
		[] call compile preprocessFileLineNumbers "SerP\setMissionConditions.sqf";
		_veh enableSimulation true;
		openMap [false,false];
	};
	if (_exception == "warbegins") then {
		[] call compile preprocessFileLineNumbers "SerP\setMissionConditions.sqf";
		if (count(units group player)>1) then {
			[player] joinSilent createGroup (side player);
		};
		_veh enableSimulation true;
		openMap [false,false];
	};
	deleteMarkerLocal "SerP_startZoneMarker";
	(findDisplay 46) displayRemoveEventHandler ["MouseButtonDown",_blocker2];
}
