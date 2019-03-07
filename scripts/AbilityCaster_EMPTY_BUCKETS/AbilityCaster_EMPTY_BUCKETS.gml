/// @function AbilityCaster_EMPTY_BUCKETS() Empties the buckets containing ability caster active effects.

for (var i = 0; i < Enum_Effects.length; i++) {
	ds_list_clear(map_effectToBucket[? i]);
}
