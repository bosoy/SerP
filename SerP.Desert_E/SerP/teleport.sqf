if (SerP_init) exitwith {};
waituntil {!isNil "Serp_RPparam"};
_relative_coordinate = {
	_dX = (getPos (_this select 0) select 0) - (getPos (_this select 1) select 0);
	_dY = (getPos (_this select 0) select 1) - (getPos (_this select 1) select 1);
	_retutn = [_this select 0, [_dX, _dY]];
	_retutn;
};

_RotatePosition = {
	_center = _this select 0;
	_relPos = _this select 1;
	_a = _this select 2;
	_dx = (_relPos select 0) * cos(_a) + (_relPos select 1) * sin(_a);
	_dy = (_relPos select 1) * cos(_a) - (_relPos select 0) * sin(_a);
	_return = [(_center select 0) + _dx, (_center select 1) + _dy];
	_return
};

_posleader = _this;
_relatives = [];
_newPos = (units group _posleader) select (Serp_RPparam % count units group _posleader);
if (_newPos != _posleader) then {
	
	if (isServer) then  {
		_posleader  setVariable ["SerP_synh", synchronizedObjects _posleader, true];
	
	} else {
		waituntil {count (_posleader  getVariable ["SerP_synh", []]) > 0};
	};		
	_relatives = [];
	{
		_sub = _x;
		_relatives set [count _relatives, [_sub, _posleader] call _relative_coordinate];
		{
			if (_x != _sub) then {_relatives set [count _relatives, [_x, _posleader] call _relative_coordinate];};
		} foreach units group _x;
	} forEach (_posleader  getVariable "SerP_synh");
	
	
	{
		_sub = _x select 0;
		_dir = (getdir _newPos) - (getdir _posleader);
		if (local _sub) then {
			_sub setpos ([getpos _newPos, _x select 1, _dir] call _RotatePosition);
			_sub setdir (getdir _sub + _dir);
		};
	} forEach _relatives;
	_mk = createmarker [format ["%1",_posleader], getpos _newPos];
} else { _mk = createmarker [format ["%1",_this], getpos _posleader] };