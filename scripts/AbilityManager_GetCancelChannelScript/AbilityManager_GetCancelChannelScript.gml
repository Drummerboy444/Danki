#region Doc
/// @function GetCancelChannelScript(enum enum_ability) Returns the cancelChannel script for a CHANNEL ability, or noone
/// for any other type of ability
/// @param {enum} enum_ability
/// @returns {script} The ability cancelChannel script
#endregion
var _enum_ability = argument[0];

// Return noone if not a CHANNEL ability
if(AbilityManager_GetAbilityType(_enum_ability) != Enum_AbilityTypes.CHANNEL){
	ErrorHandler_Error("Cannot get the cancel channel script of an ability whose type is not CHANNEL");
	return noone;
}

var _ChannelScripts_scripts = oAbilityManager.map_abilityToScripts[? _enum_ability];

return ChannelScripts_GetCancelChannel(_ChannelScripts_scripts);