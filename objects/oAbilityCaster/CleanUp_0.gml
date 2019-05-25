instance_destroy(id_oneShotService);
instance_destroy(id_channelService);

for (var i = 0; i <= ds_list_size(list_ds_EffectContext_effectsBuffer); i++) {
	var _ds_EffectContext_delete = list_ds_EffectContext_effectsBuffer[| i];
	ds_EffectContext_Destroy(_ds_EffectContext_delete);
}

for (var i = 0; i <= ds_list_size(list_ds_EffectContext_activeEffects); i++) {
	var _ds_EffectContext_delete = list_ds_EffectContext_activeEffects[| i];
	ds_EffectContext_Destroy(_ds_EffectContext_delete);
}

ds_list_destroy(list_ds_EffectContext_effectsBuffer);
ds_list_destroy(list_ds_EffectContext_activeEffects);

ds_Stats_Destroy(ds_Stats_baseStats);
ds_Stats_Destroy(ds_Stats_stats);
ds_Stats_Destroy(ds_Stats_frameStats);

for (var i = 0; i < Enum_Effects.length; i++) {
	ds_list_destroy(map_effectToBucket[? i]);
}
ds_map_destroy(map_effectToBucket);

ds_Agenda_Destroy(ds_Agenda_previousAgenda)
ds_Agenda_Destroy(ds_Agenda_agenda);

ds_Personality_Destroy(ds_Personality_personality);

if (!is_undefined(path_currentPath)) {
	path_delete(path_currentPath);
}
