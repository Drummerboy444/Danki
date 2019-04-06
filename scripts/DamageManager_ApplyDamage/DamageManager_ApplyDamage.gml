#region Doc
/// @function DamageManager_ApplyDamage(id_source, id_target, DamageData_data) Adds an entry in the target's
///		damage list with the damage data. Throws an error if the target isn't an oMortal.
/// @param {id} id_source The id of the source of the damage
/// @param {id} id_target The target to whos list the damage should be appended
/// @param {DamageData} DamageData_data The damage type and amount
/// @returns {boolean} Asserts damage dealt
#endregion
var _id_source = argument[0];
var _id_target = argument[1];
var _DamageData_data = argument[2];

if(!Utility_ObjectIsAncestorOfInstance(oMortal,_id_target)){
	ErrorHandler_FatalError("Damage target not mortal!");
	return false;	
}

if(!DamageData_InstanceOf(_DamageData_data)){
	ErrorHandler_FatalError("Non-damage data passed as damage data! Damage data: " + _DamageData_data);
	return false;	
}

_num_damageAmount = DamageData_GetDamageAmount(_DamageData_data);

_num_strength = ds_Stats_Get(_id_source.ds_Stats_frameStats, Enum_Stats.STRENGTH);
_num_damageAfterStats = _num_strength * _num_damageAmount;
_DamageData_data = DamageData_SetDamageAmount(_DamageData_data, _num_damageAfterStats);

_DamageData_data = AbilityCaster_applyOnDealDamageEffects(_id_source, _DamageData_data);

ds_list_add(_id_target.list_damageList, _DamageData_data);

return true;