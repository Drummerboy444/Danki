event_inherited();

id_oneShotService = noone;
id_channelService = noone;

id_target = noone;

map_baseStats = StatsManager_GenerateEmptyStats();
map_stats = StatsManager_GenerateEmptyStats();
map_frameStats = StatsManager_GenerateEmptyStats();

scr_plan = AbilityCaster_NO_OP_PLAN;
ds_Agenda_previousAgenda = ds_Agenda_New();
ds_Agenda_agenda = ds_Agenda_New();
ds_Personality_personality = ds_Personality_CreateDefault();

// Effects buffer list has EffectData entries
list_effectsBuffer = ds_list_create();
// Active effects list has EffectData entries
list_activeEffects = ds_list_create();

map_effectToBucket = ds_map_create();
for (var i = 0; i < Enum_Effects.length; i++) {
	map_effectToBucket[? i] = ds_list_create();
}
