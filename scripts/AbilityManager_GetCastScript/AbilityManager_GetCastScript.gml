#region Doc
/// @function GetCastScript(enum enum_ability) Returns the cast script for a ONE_SHOT ability, or noone for any other type of
/// ability
/// @param {enum} enum_ability
/// @returns {script} The ability cast script
#endregion
var _enum_ability = argument[0];

// Return noone if not a ONE_SHOT ability
if(AbilityManager_GetAbilityType(_enum_ability) != Enum_AbilityTypes.ONE_SHOT){
	return noone;
}

var _arr_abilityScripts = oAbilityManager.map_ability_to_scripts[? _enum_ability];

return _arr_abilityScripts[0];