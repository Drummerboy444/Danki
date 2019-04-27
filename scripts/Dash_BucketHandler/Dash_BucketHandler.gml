/// @function Dash_BucketHandler(id_abilityCaster, list_bucket) Handles the bucket of dash effects.
/// @param {id} id_abilityCaster.
/// @param {list} list_bucket.
var _id_abilityCaster = argument[0];
var _list_bucket = argument[1];

// There should be at most one dash effect on the player, so we just deal with the first element in the list.
if(ds_list_size(_list_bucket)==0) return;

var _DashEffectData_data = _list_bucket[| 0];
var _num_dashMultiplyer = DashEffectData_GetDashMultiplyer(_DashEffectData_data);
var _num_slowMultiplyer = DashEffectData_GetSlowMultiplyer(_DashEffectData_data);
var _num_slowSteps = DashEffectData_GetSlowSteps(_DashEffectData_data);

var _num_CurrentSpeed = ds_Stats_Get(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED);
	
ds_Stats_Set(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED, _num_CurrentSpeed * _num_dashMultiplyer);

if(EffectData_GetSteps(_DashEffectData_data) <= 0){
	AbilityCaster_AddEffectDataToBuffer(
		_id_abilityCaster,
		SlowEffectData_New(
			_num_slowSteps,
			_id_abilityCaster,
			_num_slowMultiplyer
		)
	)
}