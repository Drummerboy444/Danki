/// @function AbilityCaster_APPLY_EFFECTS() Applies active effects to player stats.

AbilityCaster_EMPTY_BUCKETS();

for (var i = 0; i < ds_list_size(list_activeEffects); i++) {
	var _EffectData_active = list_activeEffects[| i];
	var _enum_effect = EffectData_GetEffect(_EffectData_active);
	var _list_bucket = map_effectToBucket[? _enum_effect];
	ds_list_add(_list_bucket, _EffectData_active);
}


for (var i = 0; i < Enum_Effects.length; i++) {
	var _scr_bucketHandlerScript = EffectsManager_GetBucketHandler(i);
	var _list_bucket = map_effectToBucket[? i];
	if(!ds_list_empty(_list_bucket)) {
		script_execute(_scr_bucketHandlerScript, id, _list_bucket);
	}
}
