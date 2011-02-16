#include "const.sqf"
end1 = false;
end2 = false;
end3 = false;
end4 = false;
end5 = false;
end6 = false;
_endF = false;
endAdmin = false;
endCustom = false;
REDFOR_win = false;
BLUEFOR_win = false;
titleCustomWin = '';

waitUntil {sleep 1;!isNil{warbegins}};
waitUntil {sleep 1;warbegins==1};

//админ может завершить миссию досрочно нажав комбинацию клавиш ctrl+alt+shift+end
if ((serverCommandAvailable "#kick")||isServer) then {
	(findDisplay 46) displayAddEventHandler ["KeyDown", '
		_ctrl = _this select 0;
		_dikCode = _this select 1;
		_shift = _this select 2;
		_ctrlKey = _this select 3;
		_alt = _this select 4;
		_handled = false;
		if ((_dikCode==207)&&_shift&&_ctrlKey&&_alt) then {
			endAdmin = true; publicVariable "endAdmin";
		};
	'];
};

//завершить миссию может только сервер
if (!isServer) exitWith {};

_processorEND = {
	_message= _this select 0;
	_toRPT = _this select 1;
	_code = format ["
		this spawn {
			{
				diag_log _x;
			} forEach %2;
			cutText ['','BLACK',5];
			titleFadeOut 3;
			sleep 5;
			cutText['%1','BLACK FADED',5];
			sleep 1;
			endMission 'LOSER';
		};",_message,_toRPT];
	"logic" createUnit [[0,0,0], createGroup sideLogic, _code, 0.6, 'corporal'];
};

_preprocessData = {
	_return = [];
	{
		_return set [count _return,format ["Group: %1",_x select 0]];
		_return set [count _return,"Name:			Lifestate:	Weapons:"];
		{
			_wpnStr = "";
			{
				_weapon = (configFile >> "cfgWeapons" >> _x);
				if ((getNumber(_weapon >> "type") in [1,4,5])&&!isNil{(getArray(_weapon >> "magazines") select  0)}) then {
					_wpnStr = _wpnStr + _x + " ";
				};
			} forEach weapons(_x select 1);
			_return set [count _return, format ['%1		%2		%3', _x select 0,lifeState(_x select 1),_wpnStr]];
		} forEach (_x select 1);
	} forEach _this;
	_return
};

sleep 10;
_all_units = []; 
{
	_show = false;
	_unitsInGroup = [];
	{if isPlayer(_x) then {
		_show = true;
		_unitsInGroup set [count _unitsInGroup,[name _x, _x]];
	};} forEach (units _x);
	if _show then {
		_all_units set [count _all_units, [_x,_unitsInGroup]]; 
	};
} forEach allGroups; 

_initRFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideREDFOR)} count playableUnits;
_initBFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideBLUEFOR)} count playableUnits;

while {!_endF} do {
	sleep 10;
	_RFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideREDFOR)} count playableUnits;
	_BFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideBLUEFOR)} count playableUnits;
	//REDFOR retreat
	if ((_RFCount<_initRFCount*_RFRetreat)&&(_RFCount*_domiMult<_BFCount)) then {
		_endF = true;
		[format [localize "STR_dead_call", _titleREDFOR],_all_units call _preprocessData] call _processorEND;
	};
	//BLUEFOR retreat
	if ((_BFCount<_initBFCount*_BFRetreat)&&(_BFCount*_domiMult<_RFCount)) then {
		_endF = true;
		[format [localize "STR_dead_call", _titleBLUEFOR],_all_units call _preprocessData] call _processorEND;
	};

	if (endAdmin) then {
		_endF = true;
		[localize "STR_mission_end_admin",_all_units call _preprocessData] call _processorEND;
	};
	if (REDFOR_win) then {
		_endF = true;
		[format [localize "STR_win_call", _titleREDFOR],_all_units call _preprocessData] call _processorEND;
	};
	if (BLUEFOR_win) then {
		_endF = true;
		[format [localize "STR_win_call", _titleBLUEFOR],_all_units call _preprocessData] call _processorEND;
	};
	if (endCustom) then {
		_endF = true;
		[titleCustomWin,_all_units call _preprocessData] call _processorEND;
	};
};
