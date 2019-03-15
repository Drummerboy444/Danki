#region Doc
/// @function DamageManager_ApplyDamage(id_target, DamageData_data) Adds an entry in the target's damage list with the damage
/// data. Throws an error if the target isn't an oMortal.
/// @param {id} id_target The target to whos list the damage should be appended
/// @param {DamageData} DamageData_data The damage type and amount
/// @returns {boolean} Asserts damage dealt
#endregion
var _id_target = argument[0];
var _DamageData_data = argument[1];

if(!Utility_ObjectIsAncestorOfInstance(oMortal,_id_target)){
	ErrorHandler_FatalError("Damage target not mortal!");
	return false;	
}

if(!DamageData_InstanceOf(_DamageData_data)){
	ErrorHandler_FatalError("Non-damage data passed as damage data! Damage data: " + _DamageData_data);
	return false;	
}

ds_list_add(_id_target.list_damageList, _DamageData_data);

return true;