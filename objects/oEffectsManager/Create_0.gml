enum Enum_Effects {
	SLOW,
	DOT,
	length
}

// Map from effects to scripts which can handle the bucket of active effects
map_effectToBucketHandler = ds_map_create();
map_effectToBucketHandler[? Enum_Effects.SLOW] = SlowBucketHandler();
map_effectToBucketHandler[? Enum_Effects.DOT] = DOTBucketHandler();
