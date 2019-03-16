#region Doc
/// @function GetChannelScript(enum enum_ability) Returns the Channel script for a CHANNEL ability, or noone
/// for any other type of ability
/// @param {enum} enum_ability
/// @returns {script} The ability Channel script
#endregion
var _enum_ability = argument[0];

// Return noone if not a CHANNEL ability
if(AbilityManager_GetAbilityType(_enum_ability) != Enum_AbilityTypes.CHANNEL){
	ErrorHandler_Error("Cannot get the channel script of an ability whose type is not CHANNEL");
	return noone;
}

var _ChannelScripts_scripts = oAbilityManager.map_abilityToScripts[? _enum_ability];

return ChannelScripts_GetContinueChannel(_ChannelScripts_scripts);