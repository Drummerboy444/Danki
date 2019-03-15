/// @function EffectData_setSteps(EffectData_toUpdate, num_steps) Creates a new EffectData instance, with the
///		steps value set to the given steps, and returns it.
/// @param {EffectData} EffectData_toUpdate The effect data to update.
/// @param {number} num_steps The new number of steps.
/// @returns {EffectData} The new effect data with the updated number of steps.
var _EffectData_toUpdate = argument[0];
var _num_steps = argument[1];

_EffectData_toUpdate[2] = _num_steps;

return _EffectData_toUpdate
