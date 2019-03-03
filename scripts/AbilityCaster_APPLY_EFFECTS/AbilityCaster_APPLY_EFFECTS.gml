/// @function AbilityCaster_APPLY_EFFECTS() Applies active effects to player stats.

AbilityCaster_EMPTY_BUCKETS();

for (var i = 0; i < ds_list_size(list_activeEffects); i++) {
	var _arr_activeEffect = list_activeEffects[| i];
	var _enum_effect = _arr_activeEffect[0];
	var _list_bucket = map_effectToBucket[? _enum_effect];
	ds_list_add(_list_bucket, _arr_activeEffect);
}
