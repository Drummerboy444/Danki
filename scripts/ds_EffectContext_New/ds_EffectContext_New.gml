/// @function ds_EffectContext_New(ds_EffectData_effect, ds_Stats_castingStats, list_ds_EffectData_castingEffects)
///		Creates a new instance of ds_EffectContext
/// @param {ds_EffectData} ds_EffectData_effect The effect data. NOTE this will be dstroyed with the EffectContext
/// @param {ds_Stats} ds_Stats_castingStats The stats to be used when calculating the effect. This will be copied
///                                         across.
/// @param {list_ds_EffectData} list_ds_EffectData_castingEffects The list of effect data to use when calculating
///                                                               the effect. This will be copied across.
/// @returns {ds_EffectContext} The new effect context.
var _ds_EffectData_effect = argument[0];
var _ds_Stats_castingStats = argument[1];
var _list_ds_EffectData_castingEffects = argument[2];


var _ds_EffectContext_new = ds_map_create();

_ds_EffectContext_new[? DS_EFFECT_CONTEXT_EFFECT] = _ds_EffectData_effect;
_ds_EffectContext_new[? DS_EFFECT_CONTEXT_CASTING_STATS] = ds_Stats_CreateAndCopy(_ds_Stats_castingStats);

var _list_EffectData_copy = ds_list_create();
ds_EffectData_CopyList(_list_EffectData_copy, _list_ds_EffectData_castingEffects);
_ds_EffectContext_new[? DS_EFFECT_CONTEXT_CASTING_EFFECTS] = _list_EffectData_copy;

return _ds_EffectContext_new;
