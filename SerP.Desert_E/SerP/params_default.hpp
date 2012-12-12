	class timeOfDay {
		title = "$STR_timeOfDay";
		values[] = {0,1,2,3,4,5,6,7,8};
		texts[] = {$STR_timeOfDay_Option0,$STR_timeOfDay_Option1,$STR_timeOfDay_Option2,$STR_timeOfDay_Option3,$STR_timeOfDay_Option4,$STR_timeOfDay_Option5,$STR_timeOfDay_Option6,$STR_timeOfDay_Option7,$STR_timeOfDay_Option8};
		default = 8;
		code = "timeOfDay = %1";
	};
	class weather {
		title = "$STR_weather";
		values[] = {0,1,2,3,4,5};
		texts[] = {$STR_weather_Option0,$STR_weather_Option1,$STR_weather_Option2,$STR_weather_Option3,$STR_weather_Option4,$STR_weather_Option5};
		default = 5;
		code = "weather = %1";
	};
	class briefing_mode {
		title = "$STR_briefing_mode";
		values[] = {0,1,2,3};
		texts[] = {$STR_briefing_mode_Option0,$STR_briefing_mode_Option1,$STR_briefing_mode_Option2,$STR_briefing_mode_Option3};
		default = 1;
		code = "briefing_mode = %1";
	};
	class loading {
		title = "$STR_serp_loading";
		values[] = {0,1,2};
		texts[] = {$STR_serp_loading_Option0,$STR_serp_loading_Option1,$STR_serp_loading_Option2};
		default = 0;
		code = "SerP_loading = %1";
	};
	class endMission {
		title = "EndMission";
		values[] = {1,0};
		texts[] = {"On","Off"};
		default = 1;
		code = "SerP_endMissionToggle = %1";
	};
