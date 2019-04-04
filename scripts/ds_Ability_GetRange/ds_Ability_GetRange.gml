/// @function ds_Ability_GetRange(ds_Ability_ability) Gets the range of an ability.
/// @param {ds_Ability} ds_Ability_ability The ability (of type ds_Ability)
/// @returns {num} The range.
var _ds_Ability_ability = argument[0];

if(!ds_Ability_INSTANCE_OF(_ds_Ability_ability)){
	ErrorHandler_FatalError("Tried to get range of non ds_Ability structure.");
}

return _ds_Ability_ability[? DS_ABILITY_RANGE];
