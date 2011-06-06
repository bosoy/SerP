#include "const.sqf"
end1 = false;
end2 = false;
end3 = false;
end4 = false;
end5 = false;
end6 = false;
endAdmin = false;
endCustom = false;
REDFOR_win = false;
BLUEFOR_win = false;
REDFOR_retreat = false;
BLUEFOR_retreat = false;
titleCustomWin = '';

waitUntil {sleep 1;!isNil{warbegins}};
waitUntil {sleep 1;warbegins==1};

sleep 10;
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
			SerP_server_message = localize "STR_mission_end_admin";publicVariable "SerP_server_message";
			taskHint [SerP_server_message,[1, 0, 0, 1], "taskNew"];
		};
	'];
};

//завершить миссию может только сервер
//if (!isServer) exitWith {};

SerP_processorEND = {
	_message= _this select 0;
	_toRPT = [];
	{
		_toRPT set [count _toRPT,format ["Group: %1",_x select 0]];
		_toRPT set [count _toRPT,"Name:			Lifestate:	Weapons:"];
		{
			_wpnStr = "";
			{
				_weapon = (configFile >> "cfgWeapons" >> _x);
				if ((getNumber(_weapon >> "type") in [1,4,5])&&!isNil{(getArray(_weapon >> "magazines") select  0)}) then {
					_wpnStr = _wpnStr + _x + " ";
				};
			} forEach weapons(_x select 1);
			_toRPT set [count _toRPT, format ['%1		%2		%3', _x select 0,lifeState(_x select 1),_wpnStr]];
		} forEach (_x select 1);
	} forEach SerP_all_units;
	[_message,_toRPT] spawn {
		{
			diag_log _x;
		} forEach (_this select 1);
		cutText ['','BLACK',5];
		sleep 5;
		cutText[(_this select 0),'BLACK FADED',5];
		sleep 1;
		endMission 'LOSER';
	};
};

SerP_customEnd = {
	titleCustomWin = _this select 0;
	publicVariable "titleCustomWin";
	endCustom =  true;
	publicVariable "endCustom";
};

SerP_all_units = []; 
{
	_show = false;
	_unitsInGroup = [];
	{if isPlayer(_x) then {
		_show = true;
		_unitsInGroup set [count _unitsInGroup,[name _x, _x]];
	};} forEach (units _x);
	if _show then {
		SerP_all_units set [count SerP_all_units, [_x,_unitsInGroup]]; 
	};
} forEach allGroups; 

_initRFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideREDFOR)} count playableUnits;
_initBFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideBLUEFOR)} count playableUnits;

_createTriger = {
	_trigger = createTrigger["EmptyDetector",[0,0]];
	_trigger setTriggerActivation ["ANY", "PRESENT", true];
	_trigger setTriggerStatements[
		(_this select 0),
		(_this select 1),
		(_this select 2)
	];
};


["endAdmin"
,'[localize "STR_mission_end_admin"] call SerP_processorEND'
,''] call _createTriger;
["REDFOR_win"
,format["['%1'] call SerP_processorEND",format [localize "STR_win_call", _titleREDFOR]]
,''] call _createTriger;
["BLUEFOR_win"
,format["['%1'] call SerP_processorEND",format [localize "STR_win_call", _titleBLUEFOR]]
,''] call _createTriger;
["REDFOR_retreat"
,format["['%1'] call SerP_processorEND",format [localize "STR_dead_call", _titleREDFOR]]
,''] call _createTriger;
["BLUEFOR_retreat"
,format["['%1'] call SerP_processorEND",format [localize "STR_dead_call", _titleBLUEFOR]]
,''] call _createTriger;
["endCustom"
,'[titleCustomWin] call SerP_processorEND'
,''] call _createTriger;

while {true} do {
	sleep 10;
	_RFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideREDFOR)} count playableUnits;
	_BFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideBLUEFOR)} count playableUnits;
	//REDFOR retreat
	if ((_RFCount<_initRFCount*_RFRetreat)&&(_RFCount*_domiMult<_BFCount)) exitWith {
		REDFOR_retreat = true; publicVariable "REDFOR_retreat";
	};
	//BLUEFOR retreat
	if ((_BFCount<_initBFCount*_BFRetreat)&&(_BFCount*_domiMult<_RFCount)) exitWith {
		BLUEFOR_retreat = true; publicVariable "BLUEFOR_retreat";
	};
};
