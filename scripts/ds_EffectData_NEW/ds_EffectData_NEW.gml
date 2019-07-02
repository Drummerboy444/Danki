/// @function ds_EffectData_NEW(enum_effect, num_steps, id_caster, ?shd_shader) Creates a new ds_EffectData
/// @param {enum} enum_effect The effect type.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {shd} ?shd_shader The shader this effect should apply.
/// @returns {ds_EffectData} The new effect data.
var _enum_effect = argument[0];
var _num_steps = argument[1];
var _id_caster = argument[2];
var _shd_shader = argument_count > 3 ? argument[3] : noone;

var _ds_EffectData_newEffectData = ds_map_create();

_ds_EffectData_newEffectData[? DS_EFFECT_DATA_EFFECT] = _enum_effect;
_ds_EffectData_newEffectData[? DS_EFFECT_DATA_STEPS] = _num_steps;
_ds_EffectData_newEffectData[? DS_EFFECT_DATA_CASTER] = _id_caster;
_ds_EffectData_newEffectData[? DS_EFFECT_DATA_SHADER] = _shd_shader;


return _ds_EffectData_newEffectData;
