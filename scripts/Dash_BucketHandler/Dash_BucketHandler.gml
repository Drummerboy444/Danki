/// @function Dash_BucketHandler(id_abilityCaster, list_bucket) Handles the bucket of dash effects.
/// @param {id} id_abilityCaster.
/// @param {list} list_bucket.
var _id_abilityCaster = argument[0];
var _list_bucket = argument[1];

// There should be at most one dash effect on the player, so we just deal with the first element in the list.
if(ds_list_size(_list_bucket)==0) return;

var _ds_DashEffectData_data = _list_bucket[| 0];
var _num_dashMultiplier = ds_DashEffectData_GetDashMultiplier(_ds_DashEffectData_data);
var _num_slowMultiplier = ds_DashEffectData_GetSlowMultiplier(_ds_DashEffectData_data);
var _num_slowSteps = ds_DashEffectData_GetSlowSteps(_ds_DashEffectData_data);

var _num_CurrentSpeed = ds_Stats_Get(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED);
	
ds_Stats_Set(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED, _num_CurrentSpeed * _num_dashMultiplier);

if(ds_EffectData_IsOnLastStep(_ds_DashEffectData_data)){
	AbilityCaster_AddEffectDataToBuffer(
		_id_abilityCaster,
		ds_SlowEffectData_New(
			_num_slowSteps,
			_id_abilityCaster,
			_num_slowMultiplier
		)
	)
}