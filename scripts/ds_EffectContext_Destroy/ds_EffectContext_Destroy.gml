/// @function ds_EffectContext_Destroy(ds_EffectContext_context) Destroys the given effect context.
/// @param {ds_EffectContext} ds_EffectContext_context The effect context to destroy.
var _ds_EffectContext_context = argument[0];


if (!ds_EffectContext_InstanceOf(_ds_EffectContext_context)) {
	ErrorHandler_FatalError("Attempting to destroy object that isn't an instance of EffectContext");
}

var _ds_EffectData_effectData = _ds_EffectContext_context[? DS_EFFECT_CONTEXT_EFFECT_DATA];
ds_EffectData_Destroy(_ds_EffectData_effectData);

var _ds_AbilityCasterSnapshot_snapshot = _ds_EffectContext_context[? DS_EFFECT_CONTEXT_SNAPSHOT];
ds_AbilityCasterSnapshot_Destroy(_ds_AbilityCasterSnapshot_snapshot);

ds_map_destroy(_ds_EffectContext_context);
