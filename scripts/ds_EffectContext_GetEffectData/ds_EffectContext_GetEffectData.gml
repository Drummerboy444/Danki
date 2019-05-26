/// @function ds_EffectContext_GetEffectData(ds_EffectContext_context) Gets the effect data from the effect context.
/// @param {ds_EffectContext} ds_EffectContext_context The effect context.
/// @returns {ds_EffectData} The effect data from the effect context.
var _ds_EffectContext_context = argument[0];


if (!ds_EffectContext_InstanceOf(_ds_EffectContext_context)) {
	ErrorHandler_FatalError("Tried to get effect from non-EffectContext data structure");
}

return _ds_EffectContext_context[? DS_EFFECT_CONTEXT_EFFECT_DATA];
