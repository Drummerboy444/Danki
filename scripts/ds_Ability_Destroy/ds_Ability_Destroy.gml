/// @function ds_Ability_Destroy(ds_Ability_ability) Destroys an instance of ds_Ability_ability.
/// @param {ds_Ability} ds_Ability_ability The ability to destroy.
/// @returns {boolean} True if the given data is an instance of Ability and was therefore destroyed.
var _ds_Ability_ability = argument[0];

if(!ds_Ability_INSTANCE_OF(_ds_Ability_ability)){
	ErrorHandler_Error("Tried to get object from non ds_Ability structure.");
	return false;
}

ds_map_destroy(_ds_Ability_ability);

return true;
