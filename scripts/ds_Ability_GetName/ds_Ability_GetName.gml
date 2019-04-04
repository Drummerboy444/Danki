/// @function ds_Ability_GetName(ds_Ability_ability) Gets the name of an ability.
/// @param {ds_Ability} ds_Ability_ability
/// @returns {string} The name.
var _ds_Ability_ability = argument[0];

if(!ds_Ability_INSTANCE_OF(_Ability_ability)){
	ErrorHandler_FatalError("Tried to get name from non Ability structure.");
}

return _ds_Ability_ability[? DS_ABILITY_NAME];
