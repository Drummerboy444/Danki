/// @function ds_DOTEffectData_New(num_steps, id_caster, num_damagePerStep, enum_damageType) Creates a new DOT
/// effect data.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {number} num_damagePerStep The damage per step.
/// @param {Enum} enum_damageType The damage type.
/// @returns {ds_DOTEffectData} The new DOT effect data.
var _num_steps = argument[0];
var _id_caster = argument[1];
var _num_damagePerStep = argument[2];
var _enum_damageType = argument[3];


var _ds_DOTEffectData_new = ds_EffectData_NEW(Enum_Effects.DOT, _num_steps, _id_caster, shd_fire);
_ds_DOTEffectData_new[? DS_DOT_EFFECT_DATA_DAMAGE_PER_STEP] = _num_damagePerStep
_ds_DOTEffectData_new[? DS_DOT_EFFECT_DATA_DAMAGE_TYPE] = _enum_damageType;

return _ds_DOTEffectData_new;
