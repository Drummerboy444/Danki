#region Doc
/// @function GetCancelChannelScript(enum enum_ability) Returns the cancelChannel script for a CHANNEL ability, or noone
/// for any other type of ability
/// @param {enum} enum_ability
/// @returns {script} The ability cancelChannel script
#endregion
var _enum_ability = argument[0];

// Return noone if not a CHANNEL ability
if(AbilityManager_GetAbilityType(_enum_ability) != Enum_Ability_types.CHANNEL){
	return noone;
}

var _arr_abilityScripts = oAbilityManager.map_ability_to_scripts[? _enum_ability];

return _arr_abilityScripts[2];