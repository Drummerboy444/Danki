/// @function ds_EffectContext_New(ds_EffectData_effectData, ds_AbilityCasterSnapshot_snapshot) Creates a new instance
///		of ds_EffectContext
/// @param {ds_EffectData} ds_EffectData_effectData The effect data. NOTE this will be dstroyed with the EffectContext
/// @param {ds_AbilityCasterSnapshot} ds_AbilityCasterSnapshot The ability caster snapshot to be used when calculating the effect.
/// @returns {ds_EffectContext} The new effect context.
var _ds_EffectData_effectData = argument[0];
var _ds_AbilityCasterSnapshot_snapshot = argument[1];


var _ds_EffectContext_new = ds_map_create();
_ds_EffectContext_new[? DS_EFFECT_CONTEXT_EFFECT_DATA] = _ds_EffectData_effectData;
_ds_EffectContext_new[? DS_EFFECT_CONTEXT_SNAPSHOT] = _ds_AbilityCasterSnapshot_snapshot;

return _ds_EffectContext_new;
