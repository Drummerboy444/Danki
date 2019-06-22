event_inherited();

id_oneShotService = noone;
id_channelService = noone;
bool_onGlobalCooldown = false;
num_globalCooldownRemaining = 0;

obj_opponent = noone;
id_target = noone;

ds_Stats_baseStats = ds_Stats_New();
ds_Stats_stats = ds_Stats_New();
ds_Stats_frameStats = ds_Stats_New();

scr_plan = AbilityCaster_NO_OP_PLAN;
ds_Agenda_previousAgenda = ds_Agenda_New();
ds_Agenda_agenda = ds_Agenda_New();
ds_Personality_personality = ds_Personality_CreateDefault();

path_currentPath = undefined;
bool_hasPath = false;
num_pathPosition = 0;

ds_ContextBag_bag = ds_ContextBag_New();

num_aggroRange = 0;

list_ds_EffectContext_effectsBuffer = ds_list_create();
list_ds_EffectContext_activeEffects = ds_list_create();

// map from effect enums to lists of ds_EffectContexts
map_effectToBucket = ds_map_create();
for (var i = 0; i < Enum_Effects.length; i++) {
	map_effectToBucket[? i] = ds_list_create();
}
