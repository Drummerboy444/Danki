/// @function ds_EffectData_NEW(enum_effect, num_steps, id_caster, ds_Stats_castingStats, list_ds_EffectData_castingEffects)
///		Creates a new ds_EffectData
/// @param {enum} enum_effect The effect type.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {ds_Stats} ds_Stats_castingStats The stats to use for the effect.
/// @param {list_ds_EffectData} list_ds_EffectData_castingEffects The effects to use for the effect.
/// @returns {ds_EffectData} The new effect data.
var _enum_effect = argument[0];
var _num_steps = argument[1];
var _id_caster = argument[2];
var _ds_Stats_castingStats = argument[3];
var _list_ds_EffectData_castingEffects = argument[4];


if (!ds_Stats_InstanceOf(_ds_Stats_castingStats)) {
	ErrorHandler_FatalError("Cannot create effect data as non-stats data type was passed in as currentStats");
}

for (var i = 0; i < ds_list_size(_list_ds_EffectData_castingEffects); i++) {
	var _ds_EffectData_activeEffect = _list_ds_EffectData_castingEffects[| i];
	if (!ds_EffectData_InstanceOf(_ds_EffectData_activeEffect)) {
		ErrorHandler_FatalError(
			"Cannot create effect data as there was an object not of type ds_EffectData in the active effects list"
		);
	}
}

var _ds_EffectData_newEffectData = ds_map_create();

_ds_EffectData_newEffectData[? DS_EFFECT_DATA_EFFECT] = _enum_effect;
_ds_EffectData_newEffectData[? DS_EFFECT_DATA_STEPS] = _num_steps;
_ds_EffectData_newEffectData[? DS_EFFECT_DATA_CASTER] = _id_caster;

var _ds_Stats_copy = ds_Stats_New();
ds_Stats_Copy(_ds_Stats_copy, _ds_Stats_castingStats);
_ds_EffectData_newEffectData[? DS_EFFECT_DATA_CASTING_STATS] = _ds_Stats_copy;

var _list_ds_EffectData_copy = ds_list_create();
ds_EffectData_CopyList(_list_ds_EffectData_copy, _list_ds_EffectData_castingEffects);
_ds_EffectData_newEffectData[? DS_EFFECT_DATA_CASTING_EFFECTS] = _list_ds_EffectData_copy;

return _ds_EffectData_newEffectData;
