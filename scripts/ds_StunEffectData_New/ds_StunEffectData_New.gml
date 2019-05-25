/// @function ds_StunEffectData_New(num_steps, id_caster, ds_Stats_castingStats, list_ds_EffectData_castingEffects) Creates a new stun effect data.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {ds_Stats} ds_Stats_castingStats The stats to use for the effect.
/// @param {list_ds_EffectData} list_ds_EffectData_castingEffects The effects to use for the effect.
/// @returns {ds_StunEffectData} The new stun effect data.
var _num_steps = argument[0];
var _id_caster = argument[1];
var _ds_Stats_castingStats = argument[2];
var _list_ds_EffectData_castingEffects = argument[3];


return ds_EffectData_NEW(
	Enum_Effects.STUN,
	_num_steps,
	_id_caster,
	_ds_Stats_castingStats,
	_list_ds_EffectData_castingEffects
);
