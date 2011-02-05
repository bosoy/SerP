#include "const.sqf"
end1 = false;
end2 = false;
end3 = false;
end4 = false;
end5 = false;
end6 = false;
_endF = false;
endAdmin = false;
REDFOR_win = false;
BLUEFOR_win = false;

_processorEND = {
	_message= _this select 0;
	_code = format ["
		this spawn {
			cutText ['','BLACK',5];
			titleFadeOut 3;
			sleep 5;
			cutText['%1','BLACK FADED',5];
			sleep 1;
			endMission 'LOSER';
		};",_message];
	"logic" createUnit [[0,0,0], createGroup sideLogic, _code, 0.6, 'corporal'];
};

waitUntil {sleep 1;!isNil{warbegins}};
waitUntil {sleep 1;warbegins==1};
//админ может завершить миссию досрочно нажав комбинацию клавиш ctrl+alt+shift+end
if (serverCommandAvailable "#kick") then {
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

_initRFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideREDFOR)} count playableUnits;
_initBFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideBLUEFOR)} count playableUnits;

while {!_endF} do {
	sleep 10;
	_RFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideREDFOR)} count playableUnits;
	_BFCount = {(isPlayer _x)&&(alive _x)&&(side _x == _sideBLUEFOR)} count playableUnits;
	//REDFOR retreat
	if ((_RFCount<_initRFCount*_RFRetreat)&&(_RFCount*_domiMult<_BFCount)) then {
		_endF = true;
		[format [localize "STR_dead_call", _titleREDFOR]] call _processorEND;
	};
	//BLUEFOR retreat
	if ((_BFCount<_initBFCount*_BFRetreat)&&(_BFCount*_domiMult<_RFCount)) then {
		_endF = true;
		[format [localize "STR_dead_call", _titleBLUEFOR]] call _processorEND;
	};

	if (endAdmin) then {
		_endF = true;
		[localize "STR_mission_end_admin"] call _processorEND;
	};
	if (REDFOR_win) then {
		_endF = true;
		[format [localize "STR_win_call", _titleREDFOR]] call _processorEND;
	};
	if (BLUEFOR_win) then {
		_endF = true;
		[format [localize "STR_win_call", _titleBLUEFOR]] call _processorEND;
	};
};
