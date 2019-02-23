event_inherited();

id_oneShotService = noone;
id_channelService = noone;

map_baseStats = StatsManager_GenerateEmptyStats();
map_currentStats = StatsManager_GenerateEmptyStats();

// Effects buffer list has entries of form:
//		[enum_effect, arr_arguments, num_totalSteps]
list_effectsBuffer = ds_list_create();
// Active effects list has entries of form:
//		[enum_effect, arr_arguments, num_remainingSteps]
list_activeEffects = ds_list_create();