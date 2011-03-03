#include "const.sqf"
private ["_unitside"];
_unitside = side player;
_JIP = if (time>10) then {true}else{false};
_cred = player createDiaryRecord ["diary", [localize "credits_title",localize "credits"]];
//отобразит игроков стороны в отрядах
_grpText = "";
{
	_show = false;
	_units = units _x;
	_markerName = "SerP_startposMarker"+str _x;
	_tmpText = "<br/>" + (if (_JIP) then {str _x}else{"<marker name = '"+_markerName+"'>"+str _x+"</marker>"});
	{
		if ((alive _x)&&(isPlayer _x)&&(side _x == _unitside)) then {
			_tmpText = _tmpText + "<br/>--  " + (name _x);
			{
				_weapon = (configFile >> "cfgWeapons" >> _x);
				if ((getNumber(_weapon >> "type") in [1,4,5])&&!isNil{(getArray(_weapon >> "magazines") select  0)}) then {
					_tmpText = _tmpText + "  -  " + getText(_weapon >> "displayName");
				};
			} forEach weapons(_x);
			_show = true;
		};
	} forEach _units;
	if _show then {
		createMarkerLocal [_markerName, getPos leader _x];
		_grpText = _grpText + _tmpText + "<br/>";
	};
} forEach allGroups;
_groups = player createDiaryRecord ["diary", [localize "groups_title",_grpText]];

//условности, одни на всех
if (localize "convent" != "") then {_cond = player createDiaryRecord ["diary", [localize "convent_title",localize "convent"]];};
//погода из настроек миссии
_weather = player createDiaryRecord ["diary", [localize "STR_weather",
format [localize "STR_timeOfDay" + " - %1<br/>" + localize "STR_weather" + " - %2",
getArray(missionConfigFile >> "Params" >> "timeOfDay" >> "texts") select timeOfDay,
getArray(missionConfigFile >> "Params" >> "weather" >> "texts") select weather
]
]];
//задачи, вооружение и брифинги сторон
switch true do {
	case (_unitside == _sideREDFOR): {
		if (localize "machinery_rf" != "") then {_wpn = player createDiaryRecord ["diary", [localize "machinery_title",localize "machinery_rf"]];};
		if (localize "enemy_rf" != "") then {_enm = player createDiaryRecord ["diary", [localize "enemy_title",localize "enemy_rf"]];};
		if (localize "execution_rf" != "") then {_exe = player createDiaryRecord ["diary", [localize "execution_title",localize "execution_rf"]];};
		if (localize "task_rf" != "") then {_mis = player createDiaryRecord ["diary", [localize "task_title",localize "task_rf"]];};
		if (localize "situation_rf" != "") then {_sit = player createDiaryRecord ["diary", [localize "situation_title",localize "situation_rf"]];};
	};
	case (_unitside == _sideBLUEFOR): {
		if (localize "machinery_bf" != "") then {_wpn = player createDiaryRecord ["diary", [localize "machinery_title",localize "machinery_bf"]];};
		if (localize "enemy_bf" != "") then {_enm = player createDiaryRecord ["diary", [localize "enemy_title",localize "enemy_bf"]];};
		if (localize "execution_bf" != "") then {_exe = player createDiaryRecord ["diary", [localize "execution_title",localize "execution_bf"]];};
		if (localize "task_bf" != "") then {_mis = player createDiaryRecord ["diary", [localize "task_title",localize "task_bf"]];};
		if (localize "situation_bf" != "") then {_sit = player createDiaryRecord ["diary", [localize "situation_title",localize "situation_bf"]];};
	};
	default {//цивилы
		_mis = player createDiaryRecord ["diary", [localize "situation_title", localize "situation_tv"]];
	};
};