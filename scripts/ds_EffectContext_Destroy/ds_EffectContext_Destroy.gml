/// @function ds_EffectContext_Destroy(ds_EffectContext_context) Destroys the given effect context.
/// @param {ds_EffectContext} ds_EffectContext_context The effect context to destroy.
var _ds_EffectContext_context = argument[0];


if (!ds_EffectContext_InstanceOf(_ds_EffectContext_context)) {
	ErrorHandler_FatalError("Attempting to destroy object that isn't an instance of EffectContext");
}

var _ds_EffectData_effectData = _ds_EffectContext_context[? DS_EFFECT_CONTEXT_EFFECT_DATA];
ds_EffectData_Destroy(_ds_EffectData_effectData);

var _ds_Stats_castingStats = _ds_EffectContext_context[? DS_EFFECT_CONTEXT_CASTING_STATS];
ds_Stats_Destroy(_ds_Stats_castingStats);

var _list_ds_EffectData_castingEffects = _ds_EffectContext_context[? DS_EFFECT_CONTEXT_CASTING_EFFECTS];
for (var i = 0; i < ds_list_destroy(_list_ds_EffectData_castingEffects); i++) {
	var _ds_EffectData_castingEffect = _list_ds_EffectData_castingEffects[| i];
	ds_EffectData_Destroy(_ds_EffectData_castingEffect);
}
ds_list_destroy(_list_ds_EffectData_castingEffects);

ds_map_destroy(_ds_EffectContext_context);
