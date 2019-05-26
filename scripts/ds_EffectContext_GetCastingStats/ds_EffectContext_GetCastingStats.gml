/// @function ds_EffectContext_GetCastingStats(ds_EffectContext_context) Gets the casting stats from the effect context.
/// @param {ds_EffectContext} ds_EffectContext_context The effect context.
/// @returns {ds_Stats} The casting stats from the effect context.
var _ds_EffectContext_context = argument[0];


if (!ds_EffectContext_InstanceOf(_ds_EffectContext_context)) {
	ErrorHandler_FatalError("Tried to get casting stats from non-EffectContext data structure");
}

return _ds_EffectContext_context[? DS_EFFECT_CONTEXT_CASTING_STATS];
