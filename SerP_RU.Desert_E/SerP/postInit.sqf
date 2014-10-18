#include "const.sqf"

__debug(start)
if (isServer) then {
	_publicVars = ["timeOfDay","weather","briefing_mode","warbegins","readyarray","startZones","SerP_end","SerP_markerCount"];
	{publicVariable _x} forEach _publicVars;
	[] call compile preprocessFileLineNumbers "SerP\startmission_server.sqf";
};
if (!isDedicated) then {
	[] spawn {
		private ["_var_restrictedVeh_driver", "_var_restrictedVeh_gunner", "_var_restrictedVeh_commander", "_var_restrictedVeh_pilot", "_var_restrictedVeh_pilotgunner", "_vehicle", "_action"];
		// Разрешенные классы
		_var_restrictedVeh_driver = ['ACE_RU_Soldier_Crew_D',
									 'RU_Soldier_Crew',
									 'odkb_RU_Soldier_Crew',
									 'pxl_RU_Soldier_Crew',
									 'tusg_P85_ussr_tank',
									 'tusg_P85_ussr_tank_afg',
									 'tusg_P85_ussr_regular_driver',
									 'tusg_P85_ussr_vdv_jumper',
									 'MOL_Soldier_Crew',
									 'Ins_Soldier_Crew',
									 'cwr2_SoldierE_Crew_W',
									 'cwr2_SoldierW_Crew_W',
									 'GUE_Soldier_Crew',
									 'Soldier_Crew_PMC',
									 'UN_CDF_Soldier_Crew_EP1',
									 'CDF_Soldier_Crew',
									 'US_Soldier_Crew_EP1',
									 'ACE_USMC_Soldier_Crew_D',
									 'USMC_Soldier_Crew',
									 'BAF_crewman_MTP',
									 'BAF_crewman_DDPM',
									 'BAF_creWman_W',
									 'usm_marine_80s_d_h_crew1',
									 'usm_marine_80s_d_l_crew1',
									 'usm_marine_80s_d_h_crew2',
									 'usm_marine_80s_d_l_crew2',
									 'usm_marine_80s_w_h_crew1',
									 'usm_marine_80s_w_l_crew1',
									 'usm_marine_80s_w_h_crew2',
									 'usm_marine_80s_w_l_crew2',
									 'usm_marine_90s_d_h_crew1',
									 'usm_marine_90s_d_l_crew1',
									 'usm_marine_90s_d_h_crew2',
									 'usm_marine_90s_d_l_crew2',
									 'usm_marine_90s_w_h_crew1',
									 'usm_marine_90s_w_l_crew1',
									 'usm_marine_90s_w_h_crew2',
									 'usm_marine_90s_w_l_crew2',
									 'usm_soldier_80s_d_h_crew1',
									 'usm_soldier_80s_d_l_crew1',
									 'usm_soldier_80s_d_h_crew2',
									 'usm_soldier_80s_d_l_crew2',
									 'usm_soldier_80s_w_h_crew1',
									 'usm_soldier_80s_w_l_crew1',
									 'usm_soldier_80s_w_h_crew2',
									 'usm_soldier_80s_w_l_crew2',
									 'usm_soldier_90s_d_h_crew1',
									 'usm_soldier_90s_d_l_crew1',
									 'usm_soldier_90s_d_h_crew2',
									 'usm_soldier_90s_d_l_crew2',
									 'usm_soldier_90s_w_l_crew1',
									 'usm_soldier_90s_w_h_crew1',
									 'usm_soldier_90s_w_h_crew2',
									 'usm_soldier_90s_w_l_crew2'];
		_var_restrictedVeh_gunner = ['ACE_RU_Soldier_Crew_D',
									 'RU_Soldier_Crew',
									 'odkb_RU_Soldier_Crew',
									 'pxl_RU_Soldier_Crew',
									 'tusg_P85_ussr_tank',
									 'tusg_P85_ussr_tank_afg',
									 'tusg_P85_ussr_regular_driver',
									 'tusg_P85_ussr_vdv_jumper',
									 'MOL_Soldier_Crew',
									 'Ins_Soldier_Crew',
									 'cwr2_SoldierE_Crew_W',
									 'cwr2_SoldierW_Crew_W',
									 'GUE_Soldier_Crew',
									 'Soldier_Crew_PMC',
									 'UN_CDF_Soldier_Crew_EP1',
									 'CDF_Soldier_Crew',
									 'US_Soldier_Crew_EP1',
									 'ACE_USMC_Soldier_Crew_D',
									 'USMC_Soldier_Crew',
									 'BAF_crewman_MTP',
									 'BAF_crewman_DDPM',
									 'BAF_creWman_W',
									 'usm_marine_80s_d_h_crew1',
									 'usm_marine_80s_d_l_crew1',
									 'usm_marine_80s_d_h_crew2',
									 'usm_marine_80s_d_l_crew2',
									 'usm_marine_80s_w_h_crew1',
									 'usm_marine_80s_w_l_crew1',
									 'usm_marine_80s_w_h_crew2',
									 'usm_marine_80s_w_l_crew2',
									 'usm_marine_90s_d_h_crew1',
									 'usm_marine_90s_d_l_crew1',
									 'usm_marine_90s_d_h_crew2',
									 'usm_marine_90s_d_l_crew2',
									 'usm_marine_90s_w_h_crew1',
									 'usm_marine_90s_w_l_crew1',
									 'usm_marine_90s_w_h_crew2',
									 'usm_marine_90s_w_l_crew2',
									 'usm_soldier_80s_d_h_crew1',
									 'usm_soldier_80s_d_l_crew1',
									 'usm_soldier_80s_d_h_crew2',
									 'usm_soldier_80s_d_l_crew2',
									 'usm_soldier_80s_w_h_crew1',
									 'usm_soldier_80s_w_l_crew1',
									 'usm_soldier_80s_w_h_crew2',
									 'usm_soldier_80s_w_l_crew2',
									 'usm_soldier_90s_d_h_crew1',
									 'usm_soldier_90s_d_l_crew1',
									 'usm_soldier_90s_d_h_crew2',
									 'usm_soldier_90s_d_l_crew2',
									 'usm_soldier_90s_w_l_crew1',
									 'usm_soldier_90s_w_h_crew1',
									 'usm_soldier_90s_w_h_crew2',
									 'usm_soldier_90s_w_l_crew2'];
		_var_restrictedVeh_commander = ['ACE_RU_Soldier_Crew_D',
									 'RU_Soldier_Crew',
									 'odkb_RU_Soldier_Crew',
									 'pxl_RU_Soldier_Crew',
									 'tusg_P85_ussr_tank',
									 'tusg_P85_ussr_tank_afg',
									 'tusg_P85_ussr_regular_driver',
									 'MOL_Soldier_Crew',
									 'Ins_Soldier_Crew',
									 'cwr2_SoldierE_Crew_W',
									 'cwr2_SoldierW_Crew_W',
									 'GUE_Soldier_Crew',
									 'Soldier_Crew_PMC',
									 'UN_CDF_Soldier_Crew_EP1',
									 'CDF_Soldier_Crew',
									 'US_Soldier_Crew_EP1',
									 'ACE_USMC_Soldier_Crew_D',
									 'USMC_Soldier_Crew',
									 'BAF_crewman_MTP',
									 'BAF_crewman_DDPM',
									 'BAF_creWman_W',
									 'US_Soldier_SL_EP1',
										'US_Soldier_Officer_EP1',
										'mas_us_rangs_ace_acu_tl',
										'mas_us_rangs_ace_des_tl',
										'mas_us_rangs_ace_mul_tl',
										'mas_us_rangs_ace_pcu_tl',
										'mas_us_rangs_ace_wod_tl',
										'ACE_USMC_Soldier_SL_D',
										'ACE_USMC_Soldier_Officer_D',
										'USMC_Soldier_SL',
										'USMC_Soldier_Officer',
										'BAF_Soldier_SL_MTP',
										'BAF_Soldier_Officer_MTP',
										'BAF_Soldier_SL_DDPM',
										'BAF_Soldier_Officer_DDPM',
										'BAF_Soldier_SL_W',
										'BAF_Soldier_Officer_W',
										'usm_marine_80s_d_h_off',
										'usm_marine_80s_d_l_off',
										'usm_marine_80s_w_h_off',
										'usm_marine_80s_w_l_off',
										'usm_marine_90s_d_h_off',
										'usm_marine_90s_d_l_off',
										'usm_marine_90s_w_h_off',
										'usm_marine_90s_w_l_off',
										'usm_soldier_80s_d_h_off',
										'usm_soldier_80s_d_l_off',
										'usm_soldier_80s_w_h_off',
										'usm_soldier_80s_w_l_off',
										'usm_soldier_90s_d_h_off',
										'usm_soldier_90s_d_l_off',
										'usm_ranger_90s_d_h_off',
										'usm_ranger_90s_d_l_off',
										'usm_soldier_90s_w_h_off',
										'usm_soldier_90s_w_l_off',
										'usm_ranger_90s_w_h_off',
										'usm_ranger_90s_w_l_off',
										'usm_ranger_90s_w_l_ftl',
										'usm_ranger_93_d_h_off',
										'ACE_RU_Commander_D',
										'ACE_RU_Soldier_SL_D',
										'ACE_RU_Soldier_Officer_D',
										'RU_Commander',
										'RU_Soldier_SL',
										'RU_Soldier_Officer',
										'odkb_RU_Commander',
										'odkb_RU_Soldier_SL',
										'odkb_RU_Soldier_Officer',
										'pxl_RU_Commander',
										'pxl_RU_Soldier_SL',
										'pxl_RU_Soldier_Officer',
										'tusg_P85_ussr_vest_team',
										'tusg_P85_ussr_9c_lc1',
										'tusg_P85_ussr_regular_officer',
										'tusg_P85_ussr_specnaz_team',
										'tusg_P85_ussr_specnaz_kzs',
										'p85_new_ussr_vdv',
										'TK_INS_Warlord_EP1',
										'MOL_Soldier_Officer',
										'Ins_Commander',
										'Soldier_TL_PMC',
										'GUE_Soldier_CO',
										'GUE_Commander',
										'TK_GUE_Soldier_TL_EP1',
										'TK_GUE_Warlord_EP1',
										'UN_CDF_Soldier_Officer_EP1',
										'cwr2_OfficerE_W',
										'cwr2_OfficerE_Night_W',
										'cwr2_OfficerG_W',
										'cwr2_OfficerG_Night_W',
										'CWR2_OfficerW_W',
										'CWR2_OfficerW_Night_W',
										'CDF_Commander',
										'CDF_Soldier_Officer',
										'GER_Soldier_TL_EP1',
										'CZ_Soldier_SL_DES_EP1',
										'CZ_Soldier_Office_DES_EP1',
										'ACE_RU_Soldier_Crew_D',
									 'RU_Soldier_Crew',
									 'odkb_RU_Soldier_Crew',
									 'pxl_RU_Soldier_Crew',
									 'tusg_P85_ussr_tank',
									 'tusg_P85_ussr_tank_afg',
									 'tusg_P85_ussr_regular_driver',
									 'tusg_P85_ussr_vdv_jumper',
									 'MOL_Soldier_Crew',
									 'Ins_Soldier_Crew',
									 'cwr2_SoldierE_Crew_W',
									 'cwr2_SoldierW_Crew_W',
									 'GUE_Soldier_Crew',
									 'Soldier_Crew_PMC',
									 'UN_CDF_Soldier_Crew_EP1',
									 'CDF_Soldier_Crew',
									 'US_Soldier_Crew_EP1',
									 'ACE_USMC_Soldier_Crew_D',
									 'USMC_Soldier_Crew',
									 'BAF_crewman_MTP',
									 'BAF_crewman_DDPM',
									 'BAF_creWman_W',
									 'usm_marine_80s_d_h_crew1',
									 'usm_marine_80s_d_l_crew1',
									 'usm_marine_80s_d_h_crew2',
									 'usm_marine_80s_d_l_crew2',
									 'usm_marine_80s_w_h_crew1',
									 'usm_marine_80s_w_l_crew1',
									 'usm_marine_80s_w_h_crew2',
									 'usm_marine_80s_w_l_crew2',
									 'usm_marine_90s_d_h_crew1',
									 'usm_marine_90s_d_l_crew1',
									 'usm_marine_90s_d_h_crew2',
									 'usm_marine_90s_d_l_crew2',
									 'usm_marine_90s_w_h_crew1',
									 'usm_marine_90s_w_l_crew1',
									 'usm_marine_90s_w_h_crew2',
									 'usm_marine_90s_w_l_crew2',
									 'usm_soldier_80s_d_h_crew1',
									 'usm_soldier_80s_d_l_crew1',
									 'usm_soldier_80s_d_h_crew2',
									 'usm_soldier_80s_d_l_crew2',
									 'usm_soldier_80s_w_h_crew1',
									 'usm_soldier_80s_w_l_crew1',
									 'usm_soldier_80s_w_h_crew2',
									 'usm_soldier_80s_w_l_crew2',
									 'usm_soldier_90s_d_h_crew1',
									 'usm_soldier_90s_d_l_crew1',
									 'usm_soldier_90s_d_h_crew2',
									 'usm_soldier_90s_d_l_crew2',
									 'usm_soldier_90s_w_l_crew1',
									 'usm_soldier_90s_w_h_crew1',
									 'usm_soldier_90s_w_h_crew2',
									 'usm_soldier_90s_w_l_crew2'];
		_var_restrictedVeh_pilot = ['RU_Soldier_Pilot',
									'ACE_RU_Soldier_Pilot_D',
									'odkb_RU_Soldier_Pilot',
									'pxl_RU_Soldier_Pilot',
									'tusg_P85_pilotsov',
									'tusg_P85_pilotjetsov',
									'US_Soldier_Pilot_EP1',
									'US_Pilot_Light_EP1',
									'USMC_Soldier_Pilot',
									'BAF_Pilot_MTP',
									'BAF_Pilot_DDPM',
									'BAF_Pilot_W',
									'CZ_Soldier_Pilot_EP1',
									'Soldier_Pilot_PMC',
									'UN_CDF_Soldier_Pilot_EP1',
									'MOL_Soldier_Pilot',
									'Ins_Soldier_Pilot',
									'SMAF_MF1_CDF_FighterPilot',
									'RU_Pilot',
									'Pilot',
									'Pilot_EP1'];
		_var_restrictedVeh_pilotgunner = ['RU_Soldier_Pilot',
									'ACE_RU_Soldier_Pilot_D',
									'odkb_RU_Soldier_Pilot',
									'pxl_RU_Soldier_Pilot',
									'tusg_P85_pilotsov',
									'tusg_P85_pilotjetsov',
									'US_Soldier_Pilot_EP1',
									'US_Pilot_Light_EP1',
									'USMC_Soldier_Pilot',
									'BAF_Pilot_MTP',
									'BAF_Pilot_DDPM',
									'BAF_Pilot_W',
									'CZ_Soldier_Pilot_EP1',
									'Soldier_Pilot_PMC',
									'UN_CDF_Soldier_Pilot_EP1',
									'MOL_Soldier_Pilot',
									'Ins_Soldier_Pilot',
									'SMAF_MF1_CDF_FighterPilot',
									'RU_Pilot',
									'Pilot',
									'Pilot_EP1'];

		while {alive player} do {
			sleep 1.217;
			_vehicle = vehicle player;
			_action = -1;

			if (player != _vehicle) then {
				if (_vehicle in var_restrictedDriver && (driver _vehicle == player) && !(typeOf player in _var_restrictedVeh_driver)) then {
					player action ["getOut", _vehicle];
					hint "Вы не можете управлять этой техникой!";
				};
				if (_vehicle in var_restrictedGunner && (gunner _vehicle == player) && !(typeOf player in _var_restrictedVeh_gunner)) then {
					player action ["getOut", _vehicle];
					hint "Вы не можете быть стрелком на этой технике!";
				};
				if (_vehicle in var_restrictedCommander && (commander _vehicle == player) && !(typeOf player in _var_restrictedVeh_commander)) then {
					player action ["getOut", _vehicle];
					hint "Вы не можете управлять этой техникой!";
				};
				if (_vehicle in var_restrictedPilot && (driver _vehicle == player) && !(typeOf player in _var_restrictedVeh_pilot)) then {
					player action ["getOut", _vehicle];
					hint "Вы не можете управлять этой техникой!";
				};
				if (_vehicle in var_restrictedPilotGunner && (gunner _vehicle == player) && !(typeOf player in _var_restrictedVeh_pilotgunner)) then {
					player action ["getOut", _vehicle];
					hint "Вы не можете быть стрелком на этой технике!";
				};
			};
		};
	};

	call compile format["'SerP_markers_%1' addPublicVariableEventHandler {(_this select 1) call SerP_updateMarkers};if (count(SerP_markers_%1 select 1)>0) then {SerP_markers_%1 call SerP_updateMarkers}",side group player];
	[] execVM "SerP\startmission_client.sqf";
	[] call compile preprocessFileLineNumbers "SerP\briefing.sqf";
	enableRadio false;
	[["AllVehicles"], [ace_sys_interaction_key], 2, ["SerP\interactionMenu.sqf", "main"]] call CBA_ui_fnc_add;
	[["player"], [ace_sys_interaction_key_self], 2, ["SerP\selfInteractionMenu.sqf", "main"]] call CBA_ui_fnc_add;
	if (isNil{SerP_spectatorLimitations} || SerP_spectatorLimitations == 1) then {
		//disable spectator's map
		ace_sys_spectator_ShownSides = [playerSide];
		ace_sys_spectator_fnc_startSpectator_old = ace_sys_spectator_fnc_startSpectator;
		ace_sys_spectator_fnc_startSpectator = {
			ace_sys_spectator_ShownSides = [playerSide];
			if (isNil{_this}||count(_this)==0) then {
				_this = [player];
			};
			_this call ace_sys_spectator_fnc_startSpectator_old;
		};
		ace_sys_spectator_fnc_spectate_events_old = ace_sys_spectator_fnc_spectate_events;
		ace_sys_spectator_fnc_spectate_events = {
			if !(ace_sys_spectator_camSelLast in [0,2,4]) then {
				ace_sys_spectator_NewCameraIdx = 2;
				ace_sys_spectator_camSelLast = 2;
			};
			ace_sys_spectator_szoom = 1;
			ace_sys_spectator_sdistance = 1;
			if (ctrlVisible 55014) then {ctrlShow [55014, false];};
			if (ctrlVisible 55013) then {ctrlShow [55013, false];};
			if (ctrlVisible 55015) then {ctrlShow [55015, false];};

			switch true do {
				case ((_this select 0) in ["ToggleTags","UnitFired","ToggleMapBird","ToggleMap","MapClick","MouseZChanged"]): {false};
				case ((_this select 0) == "KeyUp"): {
					_key = (_this select 1) select 1;
					switch(_key) do {
						case 49: {
							if (ace_sys_spectator_UseNVG == 0) then {
								ace_sys_spectator_UseNVG = 1;
								ace_sys_spectator_NVGMode = 2
							} else {
								ace_sys_spectator_UseNVG = 0;
								ace_sys_spectator_NVGMode = -1;
								ace_sys_spectator_OldNVGMode = -5;
							};
						};
						case 37: {};
						case 57: {if (ace_sys_spectator_cameras select ace_sys_spectator_cameraIdx == ace_sys_spectator_cam_1stperson) then {_this call ace_sys_spectator_fnc_spectate_events_old}};
						default {_this call ace_sys_spectator_fnc_spectate_events_old};
					}
				};
				default {_this call ace_sys_spectator_fnc_spectate_events_old};
			};
		};
		ace_sys_spectator_fnc_menucamslbchange_old = ace_sys_spectator_fnc_menucamslbchange;
		ace_sys_spectator_fnc_menucamslbchange = {
			switch (_this select 1) do {
				case 1: { // separator
				};
				case 3: { // separator
				};
				case 7: { // Special for toggling NVG
					if (ace_sys_spectator_UseNVG == 0) then {
						ace_sys_spectator_UseNVG = 1;
						ace_sys_spectator_NVGMode = 2
					} else {
						ace_sys_spectator_UseNVG = 0;
						ace_sys_spectator_NVGMode = -1;
						ace_sys_spectator_OldNVGMode = -5;
					};
				};
				case 8: { // Special for toggling tags
				};
				default {
					_this call ace_sys_spectator_fnc_menucamslbchange_old;
				};
			};
		};
	};
};

//testing
if (isServer&&!isDedicated) then {
	[] call compile preprocessFileLineNumbers "SerP\template_test.sqf";
};
__debug(end)