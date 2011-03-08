private ["_blocker"];
trashArray = [];
planeList = [];

#include "const.sqf"
waitUntil{player==player};
if !alive(player) exitWith {};
sleep .01;
_veh = (vehicle player);
_veh enableSimulation false;
startLoadingScreen [localize 'STR_missionname', "RscDisplayLoadCustom"];
_blocker2 = (findDisplay 46) displayAddEventHandler ["MouseButtonDown", '
	[0,-1] call ace_sys_weaponselect_fnc_keypressed;
	false
'];
[0,-1] call ace_sys_weaponselect_fnc_keypressed;
waitUntil{sleep .1;!isNil{warbegins}};
if (warbegins==1) exitWith {
	endLoadingScreen;
	_veh enableSimulation true;
	(findDisplay 46) displayRemoveEventHandler ["MouseButtonDown",_blocker2];
};

_radio=createTrigger["EmptyDetector",[0,0]];
_radio setTriggerActivation["INDIA","PRESENT",true];
_radio setTriggerStatements["this",format ["
	if (side player == %1) then {
		if ((readyArray select 1) == 0) then 
			{readyArray set [1, 1];publicVariable ""readyArray"";}
		else 
			{readyArray set [1, 0];publicVariable ""readyArray"";};
	};
	if (side player == %2) then {
		if ((readyArray select 0) == 0) then 
			{readyArray set [0, 1];publicVariable ""readyArray"";}
		else 
			{readyArray set [0, 0];publicVariable ""readyArray"";}
	;};
	",_sideREDFOR,_sideBLUEFOR],
	""];
trashArray set [count trashArray, _radio];

_endTrigger = createTrigger["EmptyDetector",[0,0]];
_endTrigger setTriggerActivation ["ANY", "PRESENT", true];
_endTrigger setTriggerStatements[
	"(((readyArray select 0) == 1))",format [
	"taskhint [""BLUEFOR ready "", [0, 0, 1, 1], ""taskNew""];if (side player == %1) then {9 setRadioMsg ""Продолжить брифинг"";};",_sideBLUEFOR],format [
	"taskhint [""BLUEFOR not ready "", [0, 0, 1, 1], ""taskNew""];if (side player == %1) then {9 setRadioMsg ""Закончить брифинг"";};",_sideBLUEFOR]
	];
trashArray set [count trashArray, _endTrigger];

_endTrigger = createTrigger["EmptyDetector",[0,0]];
_endTrigger setTriggerActivation ["ANY", "PRESENT", true];
_endTrigger setTriggerStatements[
	"(((readyArray select 1) == 1))",format [
	"taskhint [""REDFOR ready "", [1, 0, 0, 1], ""taskNew""];if (side player == %1) then {9 setRadioMsg ""Продолжить брифинг"";};",_sideREDFOR],format [
	"taskhint [""REDFOR not ready "", [1, 0, 0, 1], ""taskNew""];if (side player == %1) then {9 setRadioMsg ""Закончить брифинг"";};",_sideREDFOR]
	];
trashArray set [count trashArray, _endTrigger];
9 setRadioMsg "Закончить брифинг";
_waitTime = time + 90;
waitUntil{sleep 1;progressLoadingScreen (0.3-0.3*(_waitTime - time)/90);
!isNil{startZones}||(time>_waitTime)
};
if isNil{startZones} then { 
	startZones = [[getPos(vehicle player),_defZoneSize,1,objNull,objNull]];
};
{
	_pos = (_x select 0);
	_size = (_x select 1);
	_helper = (_x select 3);
	_inZone = false;
	if ((getPos (vehicle player) distance _pos)<(_size+_hintzonesize)) exitWith {
		_inZone = true;
		_waitTime = time + 90;
		createMarkerLocal ["SerP_startZoneMarker",_pos];
		"SerP_startZoneMarker" setMarkerBrushLocal "SOLID";
		"SerP_startZoneMarker" setMarkerShapeLocal "Ellipse";
		"SerP_startZoneMarker" setMarkerSizeLocal [_size,_size];
		"SerP_startZoneMarker" setMarkerColorLocal "ColorGreen";
		"SerP_startZoneMarker" setMarkerAlphaLocal 1;
		waitUntil {sleep .5;progressLoadingScreen (1-0.7*(_waitTime - time)/90);(time>_waitTime)||((getDir _helper != 0)&&!(isNull _helper))||(isNull _helper)};
		endLoadingScreen;
		_veh enableSimulation true;
		while {(warbegins!=1)} do {
			sleep 1;
			_dist = (vehicle player) distance _pos;
			if (_dist>(_size+_hintzonesize)) exitWith {
				hint "Мне очень жаль";
				player say "r44";
				player say "svd_single_shot_v2";
				player say "All_haha";
				//player say "ACE_rus_combat143";
				sleep 4;
				player setDamage 1;
			};
			if (_dist>_size) then {
				hint "Вы покидаете зону брифинга";
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
	};
} forEach startZones;
if (!_inZone) then {
	_veh enableSimulation true;
	endLoadingScreen;
};
deleteMarkerLocal "SerP_startZoneMarker";
(findDisplay 46) displayRemoveEventHandler ["MouseButtonDown",_blocker2];