/// @function DOT_BucketHandler(id_abilityCaster, list_bucket) Handles the bucket of damage over time effects.
/// @param {id} id_abilityCaster.
/// @param {list} list_bucket.
var _id_abilityCaster = argument[0];
var _list_bucket = argument[1];


for (var i = 0; i < ds_list_size(_list_bucket); i++) {
	var _DOTEffectData_data = _list_bucket[| i];
	var _id_source = ds_EffectData_GetCasterId(_DOTEffectData_data);
	var _num_damagePerStep = DOTEffectData_GetDamagePerStep(_DOTEffectData_data);
	var _enum_damageType = DOTEffectData_GetDamageType(_DOTEffectData_data);
	DamageManager_ApplyDamage(
		_id_source,
		_id_abilityCaster,
		DamageData_New(
			_enum_damageType,
			_num_damagePerStep
		)
	);
}
