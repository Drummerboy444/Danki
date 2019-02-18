#region Doc
/// @function GetFinishChannelScript(enum enum_ability) Returns the finishChannel script for a CHANNEL ability, or noone
/// for any other type of ability
/// @param {enum} enum_ability
/// @returns {script} The ability finishChannel script
#endregion
var _enum_ability = argument[0];

// Return noone if not a CHANNEL ability
if(AbilityManager_GetAbilityType(_enum_ability) != Enum_AbilityTypes.CHANNEL){
	return noone;
}

var _arr_abilityScripts = oAbilityManager.map_abilityToScripts[? _enum_ability];

return _arr_abilityScripts[3];