/// @function ds_Ability_CheckOffensive(ds_Ability_ability) Asserts ability is offensive rather than defensive.
/// @param {ds_Ability} ds_Ability_ability
/// @returns {bool} True if offensive, false if defensive.
var _ds_Ability_ability = argument[0];

if(!ds_Ability_INSTANCE_OF(_ds_Ability_ability)){
	ErrorHandler_FatalError("Tried to check offensiveness of non ds_Ability structure.");
}

return _ds_Ability_ability[? DS_ABILITY_OFFENSIVE];
