/// @function AbilityCaster_APPLY_EFFECTS() Applies active effects to player stats.

AbilityCaster_EMPTY_BUCKETS();

for (var i = 0; i < ds_list_size(list_activeEffects); i++) {
	var _arr_activeEffectData = list_activeEffects[| i];
	var _enum_effect = AbilityCaster_GET_EFFECT(_arr_activeEffectData);
	var _list_bucket = map_effectToBucket[? _enum_effect];
	ds_list_add(_list_bucket, _arr_activeEffectData);
}


for (var i = 0; i < Enum_Effects.length; i++) {
	var _scr_bucketHandlerScript = EffectsManager_GetBucketHandler(i);
	var _list_bucket = map_effectToBucket[? i];
	if(!ds_list_empty(_list_bucket)) {
		script_execute(_scr_bucketHandlerScript, _list_bucket);
	}
}
