/// @function ds_EffectData_NEW(enum_effect, num_steps, id_caster, ?_any_arguments) Creates a new ds_EffectData
/// @param {enum} enum_effect The effect type.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {?any} any_arguments All of the required arguments.
/// @returns {ds_EffectData} The new effect data.
var _enum_effect = argument[0];
var _num_steps = argument[1];
var _id_caster = argument[2];


var _ds_EffectData_newEffectData = ds_map_create();

_ds_EffectData_newEffectData[? DS_EFFECTDATA_EFFECT] = _enum_effect;
_ds_EffectData_newEffectData[? DS_EFFECTDATA_STEPS] = _num_steps;
_ds_EffectData_newEffectData[? DS_EFFECTDATA_CASTER] = _id_caster;

return _ds_EffectData_newEffectData;
