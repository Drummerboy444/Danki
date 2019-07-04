/// @function Dash_BucketHandler(id_abilityCaster, list_ds_EffectContext_bucket) Handles the bucket of dash effects.
/// @param {id} id_abilityCaster.
/// @param {list} list_ds_EffectContext_bucket.
var _id_abilityCaster = argument[0];
var _list_ds_EffectContext_bucket = argument[1];

// There should be at most one dash effect on the player, so we just deal with the first element in the list.
if(ds_list_size(_list_ds_EffectContext_bucket)==0) return;

var _ds_EffectContext_data = _list_ds_EffectContext_bucket[| 0];
var _ds_EffectData_data = ds_EffectContext_GetEffectData(_ds_EffectContext_data);
if (!ds_DashEffectData_InstanceOf(_ds_EffectData_data)) {
	ErrorHandler_FatalError("Effect data in bucket was not of type ds_DashEffectData");
}
var _ds_DashEffectData_data = _ds_EffectData_data;
var _num_dashMultiplier = ds_DashEffectData_GetDashMultiplier(_ds_DashEffectData_data);
var _num_slowMultiplier = ds_DashEffectData_GetSlowMultiplier(_ds_DashEffectData_data);
var _num_slowSteps = ds_DashEffectData_GetSlowSteps(_ds_DashEffectData_data);

var _num_CurrentSpeed = ds_Stats_Get(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED);
var _num_steps = ds_EffectData_GetSteps(_ds_EffectData_data);

var _num_speedMultiplier = _num_steps > _num_slowSteps ? _num_dashMultiplier : _num_slowMultiplier;

ds_Stats_Set(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED, _num_CurrentSpeed * _num_speedMultiplier);