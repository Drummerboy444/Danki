#region Doc
/// @function Ability_CastAbility(id_caster, enum_ability)
/// @param {instance id} id_caster: The instance casting the ability
/// @param {enum} enum_ability: The ability being casted
#endregion
var id_caster = argument[0];
var enum_ability = argument[1];

var abilityScript = oAbilityManager.map_ability_to_script[enum_ability];

script_execute(abilityScript, id_caster);