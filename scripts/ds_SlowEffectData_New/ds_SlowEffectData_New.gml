/// @function ds_SlowEffectData_New(num_steps, id_caster, ds_Stats_castingStats, list_ds_EffectData_castingEffects, num_slowMultiplier) Creates a new slow effect data.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {ds_Stats} ds_Stats_castingStats The stats to use for the effect.
/// @param {list_ds_EffectData} list_ds_EffectData_castingEffects The effects to use for the effect.
/// @param {number} num_slowMultiplier The multiplicative effect of the slow on the targets speed.
/// @returns {ds_SlowEffectData} The new slow effect data.
var _num_steps = argument[0];
var _id_caster = argument[1];
var _ds_Stats_castingStats = argument[2];
var _list_ds_EffectData_castingEffects = argument[3];
var _num_slowMultiplier = argument[4];

var _ds_SlowEffectData_new = ds_EffectData_NEW(
	Enum_Effects.SLOW,
	_num_steps,
	_id_caster,
	_ds_Stats_castingStats,
	_list_ds_EffectData_castingEffects
);
_ds_SlowEffectData_new[? DS_SLOW_EFFECT_DATA_SLOW_MULTIPLIER] = _num_slowMultiplier;

return _ds_SlowEffectData_new;
