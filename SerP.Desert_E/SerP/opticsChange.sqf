_pairs = [
	["AKS_74_pso","AKS_74_NSPU"],
	["ACE_AK74M_PSO","AKS_74_NSPU"],
	["ACE_AKS74P_1P29","AKS_74_NSPU"],
	["ACE_AK74M_1P29","AKS_74_NSPU"],
	["SVD","SVD_NSPU_EP1"],
	["SVD_des_EP1","SVD_NSPU_EP1"],
	["SVD_CAMO","SVD_NSPU_EP1"],
	["ACE_SVD_Bipod","SVD_NSPU_EP1"],
	["ACE_M110","M110_NVG_EP1"],
	["ACE_FAL_Para","FN_FAL_ANPVS4"]
];
if (isNil{player getVariable "SerP_weap_pair"}) then {
	{if ((_x select 0) in weapons player) exitWith {
	player setVariable ["SerP_weap_pair",_x,true];
	}} forEach _pairs;
};
if (isNil{player getVariable "SerP_weap_pair"}) exitWith {hint "No changable optics found"};
_cpair = player getVariable "SerP_weap_pair";
switch true do {
	case ((_cpair select 0) in weapons player): {
		player removeWeapon (_cpair select 0);
		player addWeapon (_cpair select 1);
	};
	case ((_cpair select 1) in weapons player): {
		player removeWeapon (_cpair select 1);
		player addWeapon (_cpair select 0);
	};
	default {hint "No changable optics found"};
};