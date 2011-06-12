#include "const.sqf"

//�������������� �������
SerP_processorEND = {
	SerP_endMission = {};
	_message = _this select 0;
	taskHint [_message,[1, 0, 0, 1], "taskNew"];
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
		sleep 4;
		2 cutText ['','BLACK',5];
		sleep 4;
		2 cutText[_this select 0,'BLACK FADED',5];
		sleep 4;
		endMission 'LOSER';
	};
};

SerP_endMission = {
	#include "const.sqf"
	_title = _this select 0;
	if (count(_this)==1) then {
		SerP_end = [_title,true];
		publicVariable "SerP_end";
	};
	_title = switch toLower(_title) do {
		case "redfor_win": {format [localize "STR_win_call", getText(missionConfigFile >> "SerP_const" >> "titleREDFOR")]};
		case "bluefor_win": {format [localize "STR_win_call", getText(missionConfigFile >> "SerP_const" >> "titleBLUEFOR")]};
		case "redfor_retreat": {format [localize "STR_dead_call", getText(missionConfigFile >> "SerP_const" >> "titleREDFOR")]};
		case "bluefor_retreat": {format [localize "STR_dead_call", getText(missionConfigFile >> "SerP_const" >> "titleBLUEFOR")]};
		case "end_admin": {localize "STR_mission_end_admin"};
		default {_title};
	};
	[_title] call SerP_processorEND
};

sleep 10;
//����� ����� ��������� ������ �������� ����� ���������� ������ ctrl+alt+shift+end
if ((serverCommandAvailable "#kick")||isServer) then {
	(findDisplay 46) displayAddEventHandler ["KeyDown", '
		_ctrl = _this select 0;
		_dikCode = _this select 1;
		_shift = _this select 2;
		_ctrlKey = _this select 3;
		_alt = _this select 4;
		_handled = false;
		if ((_dikCode==207)&&_shift&&_ctrlKey&&_alt) then {
			SerP_taskhint = localize "STR_mission_end_admin";publicVariable "SerP_taskhint";
			taskHint [SerP_taskhint,[1, 0, 0, 1], "taskNew"];
			SerP_end = ["end_admin",true];
			publicVariable "SerP_end";
		};
	'];
};

//���� ���� �� ���������� ��������
waitUntil {sleep 1;!isNil{warbegins}};
waitUntil {sleep 1;warbegins==1};

if isNil{SerP_end} then {
	SerP_end = ['',false];
}else{
	if (SerP_end select 1) then {
		SerP_end call SerP_endMission
	};
};

if (!isDedicated&&isServer) then {//������� ��� ������
	_trigger = createTrigger["EmptyDetector",[0,0]];
	_trigger setTriggerActivation ["ANY", "PRESENT", true];
	_trigger setTriggerStatements[
		"SerP_end select 1",
		"SerP_end call SerP_endMission",
		""
	];
}else{//����������
	"SerP_end" addPublicVariableEventHandler {
		if ((_this select 1) select 1) then {
			(_this select 1) call SerP_endMission
		};
	};
};


SerP_all_units = []; //�������� ������ ������ � ������ ���� ������-��� ������ ��� �������� ������ ������
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

while {true} do {
	sleep 10;
	_RFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideREDFOR)} count playableUnits;
	_BFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideBLUEFOR)} count playableUnits;
	//REDFOR retreat
	if ((_RFCount<_initRFCount*_RFRetreat)&&(_RFCount*_domiMult<_BFCount)) exitWith {
		["redfor_retreat"] call SerP_endMission;
	};
	//BLUEFOR retreat
	if ((_BFCount<_initBFCount*_BFRetreat)&&(_BFCount*_domiMult<_RFCount)) exitWith {
		["bluefor_retreat"] call SerP_endMission;
	};
};
