instance_destroy(id_oneShotService);
instance_destroy(id_channelService);

ds_list_destroy(list_effectsBuffer);
ds_list_destroy(list_activeEffects);

ds_map_destroy(map_stats);
ds_map_destroy(map_frameStats);
