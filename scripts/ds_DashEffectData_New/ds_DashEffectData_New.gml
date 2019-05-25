/// @function ds_DashEffectData_New(num_steps, id_caster, ds_Stats_castingStats, list_ds_EffectData_castingEffects, num_dashMultiplier, num_slowMultiplier, num_slowSteps)
///	Creates a new dash effect data.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {ds_Stats} ds_Stats_castingStats The stats to use for the effect.
/// @param {list_ds_EffectData} list_ds_EffectData_castingEffects The effects to use for the effect.
/// @param {number} num_dashMultiplier The multiplicative effect of the dash on the targets speed.
/// @param {number} num_slowMultiplier The multiplicative effect of the subsequent slow on the targets speed.
/// @param {number} num_slowSteps The number of steps for the subsequent slow.
/// @returns {ds_DashEffectData} The new dash effect data.
var _num_steps = argument[0];
var _id_caster = argument[1];
var _ds_Stats_castingStats = argument[2];
var _list_ds_EffectData_castingEffects = argument[3];
var _num_dashMultiplier = argument[4];
var _num_slowMultiplier = argument[5];
var _num_slowSteps = argument[6];


var _ds_DashEffectData_new = ds_EffectData_NEW(
	Enum_Effects.DASH,
	_num_steps,
	_id_caster,
	_ds_Stats_castingStats,
	_list_ds_EffectData_castingEffects
);
_ds_DashEffectData_new[? DS_DASH_EFFECT_DATA_DASH_MULTIPLIER] = _num_dashMultiplier;
_ds_DashEffectData_new[? DS_DASH_EFFECT_DATA_SLOW_MULTIPLIER] = _num_slowMultiplier;
_ds_DashEffectData_new[? DS_DASH_EFFECT_DATA_SLOW_STEPS] = _num_slowSteps;

return _ds_DashEffectData_new;
