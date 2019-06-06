#region Doc
/// @function DamageManager_ApplyDamage(id_source, id_target, ds_DamageData_data) Adds an entry in the target's
///		damage list with the damage data. Throws an error if the target isn't an oMortal.
/// @param {id} id_source The id of the source of the damage
/// @param {id} id_target The target to whos list the damage should be appended
/// @param {ds_DamageData} ds_DamageData_data The damage data to use. NOTE: This will be destroyed when it
///                                           has been used.
/// @returns {boolean} Asserts damage dealt
#endregion
var _id_source = argument[0];
var _id_target = argument[1];
var _ds_DamageData_data = argument[2];

if(!Utility_ObjectIsAncestorOfInstance(oMortal,_id_target)){
	ErrorHandler_FatalError("Damage target not mortal!");
	return false;	
}

if(!ds_DamageData_InstanceOf(_ds_DamageData_data)){
	ErrorHandler_FatalError("Non-damage data passed as damage data! Damage data: " + _ds_DamageData_data);
	return false;	
}

var _num_damageAmount = ds_DamageData_GetDamageAmount(_ds_DamageData_data);
var _num_strength = ds_Stats_Get(_id_source.ds_Stats_frameStats, Enum_Stats.STRENGTH);
var _num_damageAfterStats = _num_strength * _num_damageAmount;
ds_DamageData_SetDamageAmount(_ds_DamageData_data, _num_damageAfterStats);

_ds_DamageData_data = AbilityCaster_applyOnDealDamageEffects(_id_source, _ds_DamageData_data);

ds_list_add(_id_target.list_ds_DamageData_damageList, _ds_DamageData_data);

return true;