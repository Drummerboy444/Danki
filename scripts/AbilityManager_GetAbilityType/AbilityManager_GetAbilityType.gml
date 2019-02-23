#region Doc
/// @function GetAbilityType(enum enum_ability) Gets the type of an ability
/// @param {enum} enum_ability
/// @returns {enum} The ability type
#endregion
var _enum_ability = argument[0];

return oAbilityManager.map_abilityToType[? _enum_ability];