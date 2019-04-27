/// @function SlowEffectData_New(num_steps, id_caster, num_slowMultiplyer) Creates a new slow effect data
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {number} num_slowMultiplyer The multiplicative effect of the slow on the targets speed
/// @returns {DOTEffectData} The new slow effect data.
var _num_steps = argument[0];
var _id_caster = argument[1];
var _num_slowMultiplyer = argument[2];


return EffectData_NEW(Enum_Effects.SLOW, [_num_slowMultiplyer], _num_steps, _id_caster);
