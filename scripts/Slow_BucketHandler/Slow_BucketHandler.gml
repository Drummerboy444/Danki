/// @function Slow_BucketHandler(id_abilityCaster, list_bucket) Handles the bucket of slow effects.
/// @param {id} id_abilityCaster.
/// @param {list} list_bucket.

var _id_abilityCaster = argument[0];
var _list_bucket = argument[1];

for(var _num_index = 0; _num_index < ds_list_size(_list_bucket); _num_index++){
	var _SlowEffectData_data = _list_bucket[| _num_index];
	var _num_slowMultiplyer = SlowEffectData_GetSlowMultiplyer(_SlowEffectData_data);
	var _num_CurrentSpeed = ds_Stats_Get(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED);
	
	ds_Stats_Set(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED, _num_CurrentSpeed * _num_slowMultiplyer);
}
