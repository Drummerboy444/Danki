/// @function DOT_BucketHandler(id_abilityCaster, list_ds_EffectContext_bucket) Handles the bucket of damage over time effects.
/// @param {id} id_abilityCaster.
/// @param {list} list_ds_EffectContext_bucket.
var _id_abilityCaster = argument[0];
var _list_ds_EffectContext_bucket = argument[1];


for (var i = 0; i < ds_list_size(_list_ds_EffectContext_bucket); i++) {
	var _ds_EffectContext_data = _list_ds_EffectContext_bucket[| i];
	var _ds_EffectData_data = ds_EffectContext_GetEffectData(_ds_EffectContext_data);
	if (!ds_DOTEffectData_InstanceOf(_ds_EffectData_data)) {
		ErrorHandler_FatalError("Effect data in bucket was not of type ds_DOTEffectData");
	}
	var _ds_DOTEffectData_data = _ds_EffectData_data;
	var _id_source = ds_EffectData_GetCasterId(_ds_DOTEffectData_data);
	var _num_damagePerStep = ds_DOTEffectData_GetDamagePerStep(_ds_DOTEffectData_data);
	var _enum_damageType = ds_DOTEffectData_GetDamageType(_ds_DOTEffectData_data);
	
	var _ds_AbilityCasterSnapshot_snapshotToCopy = ds_EffectContext_GetSnapshot(_ds_EffectContext_data);
	
	var _ds_AbilityCasterSnapshot_snapshot = ds_AbilityCasterSnapshot_New(
		ds_AbilityCasterSnapshot_GetStats(_ds_AbilityCasterSnapshot_snapshotToCopy),
		ds_AbilityCasterSnapshot_GetEffects(_ds_AbilityCasterSnapshot_snapshotToCopy)
	);
	
	var _ds_DamageData_data = ds_DamageData_New(
		_enum_damageType,
		_num_damagePerStep,
		_ds_AbilityCasterSnapshot_snapshot,
		true
	);
	
	DamageManager_ApplyDamage(
		_id_source,
		_id_abilityCaster,
		_ds_DamageData_data
	);
}
