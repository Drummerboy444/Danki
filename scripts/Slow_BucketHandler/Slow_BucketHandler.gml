/// @function Slow_BucketHandler(id_abilityCaster, list_ds_EffectContext_bucket) Handles the bucket of slow effects.
/// @param {id} id_abilityCaster.
/// @param {list} list_ds_EffectContext_bucket.
var _id_abilityCaster = argument[0];
var _list_ds_EffectContext_bucket = argument[1];

for(var i = 0; i < ds_list_size(_list_ds_EffectContext_bucket); i++){
	var _ds_EffectContext_data = _list_ds_EffectContext_bucket[| i];
	var _ds_EffectData_data = ds_EffectContext_GetEffectData(_ds_EffectContext_data);
	if (!ds_SlowEffectData_InstanceOf(_ds_EffectData_data)) {
		ErrorHandler_FatalError("Effect data in bucket was not of type ds_SlowEffectData");
	}
	var _ds_SlowEffectData_data = _ds_EffectData_data;
	var _num_slowMultiplier = ds_SlowEffectData_GetSlowMultiplier(_ds_SlowEffectData_data);
	var _num_CurrentSpeed = ds_Stats_Get(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED);
	
	ds_Stats_Set(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED, _num_CurrentSpeed * _num_slowMultiplier);
}
