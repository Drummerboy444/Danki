/// @function EffectData_setSteps(EffectData_toUpdate, num_steps) Creates a new EffectData instance, with the
///		steps value set to the given steps, and returns it.
/// @param {EffectData} EffectData_toUpdate The effect data to update.
/// @param {number} num_steps The new number of steps.
/// @returns {EffectData} The new effect data with the updated number of steps.
var _EffectData_toUpdate = argument[0];
var _num_steps = argument[1];


var _enum_effect = EffectData_getEffect(_EffectData_toUpdate);
var _arr_arguments = EffectData_getArguments(_EffectData_toUpdate);
var _id_caster = EffectData_getCasterId(_EffectData_toUpdate);

return EffectData_new(_enum_effect, _arr_arguments, _num_steps, _id_caster)
