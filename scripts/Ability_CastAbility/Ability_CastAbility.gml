#region Doc
/// @function Ability_CastAbility(id_caster, enum_ability)
/// @param {instance id} id_caster: The instance casting the ability
/// @param {enum} enum_ability: The ability being casted
#endregion
var _id_caster = argument[0];
var _enum_ability = argument[1];

var _abilityScript = oAbilityManager.map_ability_to_script[_enum_ability];

script_execute(_abilityScript, _id_caster);