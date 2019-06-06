/// @function ds_EffectContext_GetSnapshot(ds_EffectContext_context) Gets the ability caster snapshot from the
///		given effect context.
/// @param {ds_EffectContext} ds_EffectContext_context The context to get the snapshot from.
/// @returns {ds_AbilityCasterSnapshot} The snapshot from the context.
var _ds_EffectContext_context = argument[0];


if (!ds_EffectContext_InstanceOf(_ds_EffectContext_context)) {
	ErrorHandler_FatalError("Cannot the the snapshot from a non-effect context data structure");
}

return _ds_EffectContext_context[? DS_EFFECT_CONTEXT_SNAPSHOT];
