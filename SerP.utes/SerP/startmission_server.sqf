#include "const.sqf"
trashArray = [];
planeList = [];
_bCounter = {
	_briefingTime = (_this select 0);
	warbegins = 0;
	waitUntil{
		SerP_server_message = format ["%1 minutes remaining",round((_briefingTime-time)/60)];
		publicVariable "SerP_server_message";hint SerP_server_message;
		sleep 60;
		(time >= _briefingTime)||(warbegins==1)
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
				{//delete AI
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
_zones = [];//[_pos,_size,_unitsInZone,_side]
{
	_unitPos = getPos vehicle(_x);
	_side = side _x;
	_size = switch true do {
		case (_side==_sideREDFOR): {_defZoneSize*_zoneMultREDFOR};
		case (_side==_sideBLUEFOR): {_defZoneSize*_zoneMultBLUEFOR};
		default {_defZoneSize};
	};
	_outOfZone = true;
	{
		_zonePos = _x select 0;
		_zoneSize = _x select 1;
		_unitsInZone = _x select 2;
		_zoneSide = _x select 3;
		_dist = (_unitPos distance _zonePos);
		if ((_dist < (_size + _zoneSize))&&(_side==_zoneSide)) exitWith {//zone concat
			_unitmod = 1/_unitsInZone;
			_sizemod = (_unitsInZone-1)/_unitsInZone;
			_pos = [(_unitPos select 0)*_unitmod+(_zonePos select 0)*_sizemod,(_unitPos select 1)*_unitmod+(_zonePos select 1)*_sizemod,0];
			_zoneSize = (_size+_dist) max _zoneSize;
			_zones set [_forEachIndex,[_pos,_zoneSize,_unitsInZone+1,_zoneSide]];
			_outOfZone = false;
		};
	} forEach _zones;
	if (_outOfZone) then {
		_zones set [count _zones,[_unitPos,_size,1,_side]]
	};
	_x setVariable ["SerP_isPlayer",(isPlayer _x)];
} forEach playableUnits;
waitUntil{
	_exit = true;
	{
		_zonePos1 = _x select 0;
		_size1 = _x select 1;
		_unitsInZone1 = _x select 2;
		_zoneSide1 = _x select 3;
		_i = _forEachIndex;
		{
			_zonePos2 = _x select 0;
			_size2 = _x select 1;
			_unitsInZone2 = _x select 2;
			_zoneSide2 = _x select 3;
			_j = _forEachIndex;
			if ((_i!=_j)&&(_zonePos1 distance _zonePos2)<(_size1+_size2)&&(_zoneSide1==_zoneSide2)) exitWith {
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
	_exit
};
_unitList = (allMissionObjects "Plane")+(allMissionObjects "LandVehicle")+(allMissionObjects "Helicopter")+(allMissionObjects "Ship");
_actionList = [];
{//готовим список юнитов и данные для аттача что-бы он сработал быстрее при старте миссии
	_corepos = (_x select 0);
	_size = (_x select 1);
	_core = createVehicle ["FlagCarrierChecked", [_corepos select 0,_corepos select 1, -3], [], 0, "CAN_COLLIDE"];
	_corepos = getPosASL _core;
	trashArray set [count trashArray, _core];
	{
		if (((_x distance _core)<_hintzonesize+_size)&&!(_x isKindOf "StaticWeapon")) then {
			_vDir = vectorDir _x;
			_vUp = vectorUp _x;
			_unitpos = getPosASL _x;
			_diff = [((_unitpos select 0) - (_corepos select 0)),((_unitpos select 1) - (_corepos select 1)),((_unitpos select 2) - (_corepos select 2))];
			_actionList set [count _actionList,[_x,[_core,[(_diff select 0),(_diff select 1),((_diff select 2) - (((boundingBox _x) select 0) select 2) - 1.5)]],[_vDir,_vUp]]];
		};
	}forEach _unitList;
	_helper = createVehicle ["Sign_arrow_down_EP1", _corepos, [], 0, "CAN_COLLIDE"];
	_helper attachTo [_core,[0,0,-5]];
	_helper setDir 90;
	trashArray set [count trashArray, _helper];
	_x set [2,_core];
	_x set [3,_helper];
} forEach _zones;
sleep .01;
{
	(_x select 0) attachTo (_x select 1);
	(_x select 0) setVectorDirAndUp (_x select 2);
} forEach _actionList;
{
	_helper = createVehicle ["Sign_arrow_down_EP1", [0,0,0], [], 0, "CAN_COLLIDE"];
	_helper attachTo [_x select 2,[0,0,-5]];
	_helper setDir 90;
	trashArray set [count trashArray, _helper];
	_x set [3,_helper];
} forEach _zones;
startZones = _zones;
publicVariable "startZones";
//control
waitUntil{sleep 1;(((readyArray select 0) == 1)&&((readyArray select 1) == 1))||((1 in readyArray)&&!isDedicated)||(warbegins==1)};

warbegins=1;publicVariable "warbegins";
warbeginstime=time;publicVariable "warbeginstime";
{if (!(isPlayer _x)&&!(_x getVariable "SerP_isPlayer")) then {
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
	player say "r61";
	this spawn {
		sleep 4;
		{deleteVehicle _x} forEach trashArray;
		deleteVehicle _this;
	}
', 0.6, 'corporal']
