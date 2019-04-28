/// @function DOTEffectData_New(num_steps, id_caster, num_damagePerStep) Creates a new DOT effect data
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {number} num_damagePerStep The damage per step.
/// @returns {DOTEffectData} The new DOT effect data.
var _num_steps = argument[0];
var _id_caster = argument[1];
var _num_damagePerStep = argument[2];


return EffectData_NEW(Enum_Effects.DOT, [_num_damagePerStep], _num_steps, _id_caster);
