#region Doc
/// @function GetCastScript(enum enum_ability) Returns the cast script for a ONE_SHOT ability, or noone for any other type of
/// ability
/// @param {enum} enum_ability
/// @returns {script} The ability cast script
#endregion
var _enum_ability = argument[0];

// Return noone if not a ONE_SHOT ability
if(AbilityManager_GetAbilityType(_enum_ability) != Enum_AbilityTypes.ONE_SHOT){
	ErrorHandler_Error("Cannot get the cast script of an ability whose type is not ONE_SHOT");
	return noone;
}

var _OneShotScripts_scripts = oAbilityManager.map_abilityToScripts[? _enum_ability];

return OneShotScripts_GetCastScript(_OneShotScripts_scripts);