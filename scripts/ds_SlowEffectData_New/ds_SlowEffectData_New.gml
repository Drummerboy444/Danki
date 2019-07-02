/// @function ds_SlowEffectData_New(num_steps, id_caster, num_slowMultiplier) Creates a new slow effect data.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {number} num_slowMultiplier The multiplicative effect of the slow on the targets speed.
/// @returns {ds_SlowEffectData} The new slow effect data.
var _num_steps = argument[0];
var _id_caster = argument[1];
var _num_slowMultiplier = argument[2];

var _ds_SlowEffectData_new = ds_EffectData_NEW(Enum_Effects.SLOW, _num_steps, _id_caster, shd_ice);
_ds_SlowEffectData_new[? DS_SLOW_EFFECT_DATA_SLOW_MULTIPLIER] = _num_slowMultiplier;

return _ds_SlowEffectData_new;
