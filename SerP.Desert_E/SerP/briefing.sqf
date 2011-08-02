#include "const.sqf"
private ["_unitside"];
_unitside = side player;
_JIP = if (time>10) then {true}else{false};
_cred = player createDiaryRecord ["diary", [localize "credits_title",format ["%1 <br/>SerP v%2",localize "credits",getNumber(missionConfigFile >> "SerP_version")]]];
//отобразит игроков стороны в отрядах
_grpText = "";
{
	_show = false;
	_units = units _x;
	_markerName = "SerP_startposMarker"+str _x;
	_tmpText = "<br/>" + (if (_JIP) then {str _x}else{"<marker name = '"+_markerName+"'>"+str _x+"</marker>"});
	{
		if ((alive _x)&&((isPlayer _x)||isServer)&&(side _x == _unitside)) then {
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
		if (markerPos(_markerName) select 0 == 0) then {
			createMarkerLocal [_markerName, getPos leader _x];
		};
		_grpText = _grpText + _tmpText + "<br/>";
	};
} forEach allGroups;
_groups = player createDiaryRecord ["diary", [localize "groups_title",_grpText]];

//условности, одни на всех
if (localize "convent" != "") then {_cond = player createDiaryRecord ["diary", [localize "convent_title",localize "convent"]];};
//погода из настроек миссии

_hour = date select 3;
_time = switch true do {
	case (_hour>=21||_hour<4): {localize "STR_timeOfDay_Option7"};
	case (_hour<5): {localize "STR_timeOfDay_Option0"};
	case (_hour<8): {localize "STR_timeOfDay_Option1"};
	case (_hour<10): {localize "STR_timeOfDay_Option2"};
	case (_hour<14): {localize "STR_timeOfDay_Option3"};
	case (_hour<16): {localize "STR_timeOfDay_Option4"};
	case (_hour<18): {localize "STR_timeOfDay_Option5"};
	case (_hour<21): {localize "STR_timeOfDay_Option6"};
	default {localize "STR_timeOfDay_Option8"};
};

_weather = switch true do {
	case (overcast>0.9): {localize "STR_weather_Option4"};
	case (overcast<0.1): {localize "STR_weather_Option0"};
	case (overcast>0.1): {localize "STR_weather_Option1"};
	case (fog>0.9): {localize "STR_weather_Option3"};
	case (fog>0.5): {localize "STR_weather_Option2"};
	default {localize "STR_weather_Option5"};
};


_weather = player createDiaryRecord ["diary", [localize "STR_weather",
format [localize "STR_timeOfDay" + " - %1<br/>" + localize "STR_weather" + " - %2",_time,_weather]
]];
//задачи, вооружение и брифинги сторон
switch true do {
	case (_unitside == east): {
		{if (localize(_x select 1)!="") then {
			player createDiaryRecord ["diary", [localize(_x select 0),localize(_x select 1)]]
		};} forEach [
			["machinery_title","machinery_rf"],
			["enemy_title","enemy_rf"],
			["execution_title","execution_rf"],
			["task_title","task_rf"],
			["situation_title","situation_rf"]
		];
	};
	case (_unitside == west): {
		{if (localize(_x select 1)!="") then {
			player createDiaryRecord ["diary", [localize(_x select 0),localize(_x select 1)]]
		};} forEach [
			["machinery_title","machinery_bf"],
			["enemy_title","enemy_bf"],
			["execution_title","execution_bf"],
			["task_title","task_bf"],
			["situation_title","situation_bf"]
		];
	};
	case (_unitside == resistance): {
		{if (localize(_x select 1)!="") then {
			player createDiaryRecord ["diary", [localize(_x select 0),localize(_x select 1)]]
		};} forEach [
			["machinery_title","machinery_guer"],
			["enemy_title","enemy_guer"],
			["execution_title","execution_guer"],
			["task_title","task_guer"],
			["situation_title","situation_guer"]
		];
	};
	default {//цивилы
		_mis = player createDiaryRecord ["diary", [localize "situation_title", localize "situation_tv"]];
	};
};