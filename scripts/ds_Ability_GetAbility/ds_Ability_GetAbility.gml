/// @function ds_Ability_GetAbility(ds_Ability_ability) Gets the Object for an ability.
/// @param {ds_Ability} ds_Ability_ability
/// @returns {obj} The ability object.
var _ds_Ability_ability = argument[0];

if(!ds_Ability_INSTANCE_OF(_ds_Ability_ability)){
	ErrorHandler_FatalError("Tried to get object from non Ability structure.");
}

return _ds_Ability_ability[? "ability"];
