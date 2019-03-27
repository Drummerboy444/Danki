instance_destroy(id_oneShotService);
instance_destroy(id_channelService);

ds_list_destroy(list_effectsBuffer);
ds_list_destroy(list_activeEffects);

ds_map_destroy(map_stats);
ds_map_destroy(map_frameStats);

for (var i = 0; i < Enum_Effects.length; i++) {
	ds_list_destroy(map_effectToBucket[? i]);
}
ds_map_destroy(map_effectToBucket);

ds_Agenda_Destroy(ds_Agenda_previousAgenda)
ds_Agenda_Destroy(ds_Agenda_agenda);

ds_Personality_Destroy(ds_Personality_personality);