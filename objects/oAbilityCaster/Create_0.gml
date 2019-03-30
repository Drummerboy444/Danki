event_inherited();

id_oneShotService = noone;
id_channelService = noone;

id_target = noone;

ds_Stats_baseStats = ds_Stats_New();
ds_Stats_stats = ds_Stats_New();
ds_Stats_frameStats = ds_Stats_New();

scr_plan = AbilityCaster_NO_OP_PLAN;
ds_Agenda_previousAgenda = ds_Agenda_New();
ds_Agenda_agenda = ds_Agenda_New();
ds_Personality_personality = ds_Personality_CreateDefault();

num_aggroRange = 0;

// Effects buffer list has EffectData entries
list_effectsBuffer = ds_list_create();
// Active effects list has EffectData entries
list_activeEffects = ds_list_create();

map_effectToBucket = ds_map_create();
for (var i = 0; i < Enum_Effects.length; i++) {
	map_effectToBucket[? i] = ds_list_create();
}
