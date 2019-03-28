/// @function AbilityManager_GetAbilityFromEnum(enum_ability) Returns the ds_Ability of the ability enum.
/// @param {enum} enum_ability the ability enum.
/// @returns {ds_Ability} The ds_Ability
var _enum_ability = argument[0];

return oAbilityManager.map_EnumToAbility[? _enum_ability];