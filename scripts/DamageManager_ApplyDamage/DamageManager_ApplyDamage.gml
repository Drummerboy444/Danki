#region Doc
/// @function DamageManager_ApplyDamage(id_target, enum_damageType, num_damageAmount) Adds an entry in the target's damage list with the damage
/// type and amount. Throws an error if the target isn't an oMortal.
/// @param {id} id_target The target to whos list the damage should be appended
/// @param {enum} enum_damageType The damage type
/// @param {num} num_damageAmount The amount of damage
/// @returns {boolean} Asserts damage dealt
#endregion
var _id_target = argument[0];
var _enum_damageType = argument[1];
var _num_damageAmount = argument[2];

if(!Utility_ObjectIsAncestorOfInstance(oMortal,_id_target)){
	// TODO throw error
	return false;	
}

ds_list_add(_id_target.list_damageList, [_enum_damageType, _num_damageAmount]);

return true;