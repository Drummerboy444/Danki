/// @function Dash_BucketHandler(id_abilityCaster, list_bucket) Handles the bucket of dash effects.
/// @param {id} id_abilityCaster.
/// @param {list} list_bucket.
var _id_abilityCaster = argument[0];
var _list_bucket = argument[1];

// There should be at most one dash effect on the player, so we just deal with the first element in the list.
if(ds_list_size(_list_bucket)==0) return;

var _EffectData_data = _list_bucket[| 0];
var _arr_arguments = EffectData_GetArguments(_EffectData_data);
var _num_CurrentSpeed = ds_Stats_Get(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED);
	
ds_Stats_Set(_id_abilityCaster.ds_Stats_frameStats, Enum_Stats.SPEED, _num_CurrentSpeed * _arr_arguments[0]);

if(EffectData_GetSteps(_EffectData_data) <= 0){
	AbilityCaster_AddEffectDataToBuffer(
		_id_abilityCaster,
		EffectData_NEW(Enum_Effects.SLOW, [_arr_arguments[1]], _arr_arguments[2], _id_abilityCaster)
	)
}