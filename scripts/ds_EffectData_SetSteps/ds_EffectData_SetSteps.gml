/// @function ds_EffectData_setSteps(ds_EffectData_toUpdate, num_steps) Sets the number of steps for a
/// ds_EffectData.
/// @param {ds_EffectData} ds_EffectData_toUpdate The effect data to update.
/// @param {number} num_steps The new number of steps.
var _ds_EffectData_toUpdate = argument[0];
var _num_steps = argument[1];

_ds_EffectData_toUpdate[? DS_EFFECT_DATA_STEPS] = _num_steps;
