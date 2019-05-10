/// @function ds_EffectData_setSteps(ds_EffectData_toUpdate, num_steps) Creates a new ds_EffectData instance, 
/// with the steps value set to the given steps, and returns it.
/// @param {ds_EffectData} ds_EffectData_toUpdate The effect data to update.
/// @param {number} num_steps The new number of steps.
var _ds_EffectData_toUpdate = argument[0];
var _num_steps = argument[1];

_ds_EffectData_toUpdate[? DS_EFFECTDATA_STEPS] = _num_steps;
