/// @function ds_Ability_GetType(ds_Ability_ability) Gets the Type (oneshot or channel) of an ability.
/// @param {ds_Ability} ds_Ability_ability
/// @returns {enum} The type.
var _ds_Ability_ability = argument[0];

if(!ds_Ability_INSTANCE_OF(_ds_Ability_ability)){
	ErrorHandler_FatalError("Tried to get type from non Ability structure.");
}

return _ds_Ability_ability[? "type"];
