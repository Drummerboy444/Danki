/// @function AbilityManager_GetAbilityFromEnum(enum_Ability) Returns the ds_Ability of the ability enum.
/// @param {enum} enum_Ability the ability enum.
/// @returns {ds_Ability} The ds_Ability
var _enum_Ability = argument[0];

return oAbilityManager.map_EnumToAbility[? _enum_Ability];