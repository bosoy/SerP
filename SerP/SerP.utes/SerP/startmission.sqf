#include "const.sqf"
private ["_blocker"];
trashArray = [];
planeList = [];
if (isServer) then {
	_bCounter = {
		_briefingTime = _this select 0;
		_startTime = time + _briefingTime;
		warbegins = 0;
		while {(time<_startTime)&&(warbegins!=1)} do {
			sleep 30;
			SerP_server_message = format ["До конца брифинга осталось %1 секунд",round(_startTime-time)];
			publicVariable "SerP_server_message";
		};
		warbegins = 1;publicVariable "warbegins";
	};
	switch (briefing_mode) do	{
		case 0:	{if true exitWith {[] spawn {
				sleep 1;
				if (isServer) then {
					warbegins = 1; 
					publicVariable "warbegins";
					ace_sys_map_enabled = true; 
					publicVariable "ace_sys_map_enabled";
					sleep 600;
					{//через 10 минут удаляем ботов
						if ((_x isKindOf "Man")and(not(isPlayer _x))) then {_x setPos [0,0,0]; _x setDamage 1} else {	
							if ((_x isKindOf "LandVehicle")or(_x isKindOf "Air")or(_x isKindOf "Ship")) then
							{
								{if (not(isPlayer _x)) then {_x setPos [0,0,0]; _x setDamage 1};} forEach crew _x;
							};
						};
					} forEach playableUnits;
				};
				[] execVM "\x\ace\addons\sys_map\mapview.sqf";
			}};
		};
		case 1:	{
			[420] spawn _bCounter;
		};
		case 2:	{
			[900] spawn _bCounter;
		};
	};


	warbegins = 0;publicVariable "warbegins";
	readyArray = [0,0];publicVariable "readyArray";
	//find zones
	_zones = [];//[_pos,_size]
	{
		_unitPos = getPos _x;
		_outOfZone = true;
		{
			_zonePos = _x select 0;
			_size = _x select 1;
			_unitsInZone = _x select 2;
			_dist = (_unitPos distance _zonePos);
			if (_dist < (_defZoneSize + _size)) exitWith {//zone concat
				_unitmod = 1/_unitsInZone;
				_sizemod = (_unitsInZone-1)/_unitsInZone;
				_pos = [(_unitPos select 0)*_unitmod+(_zonePos select 0)*_sizemod,(_unitPos select 1)*_unitmod+(_zonePos select 1)*_sizemod,0];
				_size = (_dist + _defZoneSize) max _size;
				_zones set [_forEachIndex,[_pos,_size,_unitsInZone+1]];
				_outOfZone = false;
			};
		} forEach _zones;
		if (_outOfZone) then {
			_zones set [count _zones,[_unitPos,_defZoneSize,1]]
		};
	} forEach playableUnits;
	while {true} do {
		_exit = true;
		{
			_zonePos1 = _x select 0;
			_size1 = _x select 1;
			_unitsInZone1 = _x select 2;
			_i = _forEachIndex;
			{
				_zonePos2 = _x select 0;
				_size2 = _x select 1;
				_unitsInZone2 = _x select 2;
				_j = _forEachIndex;
				if ((_i!=_j)&&(_zonePos1 distance _zonePos2)<(_size1+_size2)) exitWith {
					_pos = [((_zonePos1 select 0)+(_zonePos2 select 0))/2,((_zonePos1 select 1)+(_zonePos2 select 1))/2,0];
					_size = ((_zonePos1 distance _zonePos2)/2 + _size1 max _size2);
					_zones set [_i,[_pos,_size,_unitsInZone1+_unitsInZone2]];
					_zones set [_j,-1];
					_zones = _zones - [-1];
					_exit = false;
				};
			} forEach _zones;
			if (!_exit) exitWith {};
		} forEach _zones;
		if (_exit) exitWith {};
	};
	startZones = _zones;
	[] spawn {
		#include "const.sqf"
		sleep 1;
		_unitList = (allMissionObjects "Plane")+(allMissionObjects "LandVehicle")+(allMissionObjects "Helicopter")+(allMissionObjects "Ship");
		{
			_corepos = (_x select 0);
			_size = (_x select 1);
			_core = createVehicle ["FlagCarrierChecked", _corepos, [], 0, "CAN_COLLIDE"];
			_core setPos _corepos;
			_corepos = getPosASL _core;
			trashArray set [count trashArray, _core];
			{
				if (((_x distance _core)<_hintzonesize+_size)&&!(_x isKindOf "StaticWeapon")) then {
					_vDir = vectorDir _x;
					_vUp = vectorUp _x;
					_unitpos = getPosASL _x;
					_diff = [((_unitpos select 0) - (_corepos select 0)),((_unitpos select 1) - (_corepos select 1)),((_unitpos select 2) - (_corepos select 2))];
					_x attachTo [_core,[(_diff select 0),(_diff select 1),((_diff select 2) - (((boundingBox _x) select 0) select 2) - 1.5)]];
					_x setVectorDirAndUp [_vDir,_vUp];
					if ((_x isKindOf "Plane")and((_unitpos select 2) > 20)) then {planeList set [count planeList, _x];};
				};
			}forEach _unitList;
		} forEach startZones;
		publicVariable "startZones";
		//control
		waitUntil{sleep 1;(((readyArray select 0) == 1)&&((readyArray select 1) == 1))||((1 in readyArray)&&!isDedicated)||(warbegins==1)};

		warbegins=1;publicVariable "warbegins";
		warbeginstime=time;publicVariable "warbeginstime";
		{if (!(isPlayer _x)) then {
			_unit = _x;
			_unit setPos [0,0,0];
			deleteVehicle _unit;
		}} forEach playableUnits;
		'logic' createUnit [[0,0,0], createGroup sideLogic,'
			taskHint ["War begins", [1, 0, 0, 1], "taskNew"];
			{
				if (local _x) then {
					switch true do {
						case ((_x isKindOf "Plane")&&(((getPos _x) select 2) > 20)): {
							detach _x;
							_x setVelocity [(sin(getDir _x) * 100),(cos(getDir _x) * 100),20];
						};
						case (((_x isKindOf "LandVehicle")&&(!(_x isKindOf "StaticWeapon")))||(_x isKindOf "Air")or(_x isKindOf "Ship")): {
							detach _x;
							_x setVelocity [0,0,-1];
						};
					};
				};
			} forEach ((allMissionObjects "Plane")+(allMissionObjects "LandVehicle")+(allMissionObjects "Helicopter")+(allMissionObjects "Ship"));
			ace_sys_map_enabled = true;
			[] execVM "\x\ace\addons\sys_map\mapview.sqf";
			this spawn {
				sleep 4;
				{deleteVehicle _x} forEach trashArray;
				deleteVehicle _this;
			}
		', 0.6, 'corporal']
	};
};

if !(isDedicated) then {
	waitUntil{player==player};
	if !alive(player) exitWith {};
	sleep .1;
	cutText[localize 'STR_missionname','BLACK FADED',300];
	_blocker = (findDisplay 46) displayAddEventHandler ["KeyDown", '
		_ctrl = _this select 0;
		_dikCode = _this select 1;
		_shift = _this select 2;
		_ctrlKey = _this select 3;
		_alt = _this select 4;
		_handled = false;
		if (_dikCode!=1) then {
			_ctrl = nil;
			_handled = true;
		};
		_handled
	'];
	[0,-1] call ace_sys_weaponselect_fnc_keypressed;
	waitUntil{sleep .1;!isNil{warbegins}};
	if (warbegins==1) exitWith {
		(findDisplay 46) displayRemoveEventHandler ["KeyDown",_blocker];
		cutText['','BLACK IN',5];
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
	waitUntil{sleep 1;!isNil{startZones}};
	{
		_pos = (_x select 0);
		_size = (_x select 1);
		if ((getPos (vehicle player) distance _pos)<(_size+_hintzonesize)) exitWith {
			waitUntil {sleep 1;time>60};
			(findDisplay 46) displayRemoveEventHandler ["KeyDown",_blocker];
			cutText['','BLACK IN',5];
			while {(warbegins!=1)} do {
				_dist = (vehicle player) distance _pos;
				if (_dist>(_size+_hintzonesize)) exitWith {
					hint "Мне очень жаль";
					sleep 3;
					player say "ACE_rus_combat120";
					player setDamage 1;
				};
				if (_dist>_size) then {
					hint "Вы покидаете зону брифинга";
					player say "ACE_rus_combat30";
				};
			};
		};
	} forEach startZones;
};