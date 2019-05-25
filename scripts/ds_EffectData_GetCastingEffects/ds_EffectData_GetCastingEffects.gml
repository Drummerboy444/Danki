/// @function ds_EffectData_GetCastingEffects(ds_EffectData_data) Gets the casting effects from a ds_EffectData.
/// @param {ds_EffectData} ds_EffectData_data The effect data.
/// @returns {list_ds_EffectData} The casting effects.
var _ds_EffectData_data = argument[0];

if(!ds_EffectData_InstanceOf(_ds_EffectData_data)){
	ErrorHandler_FatalError("Tried to get casting effects from non EffectData structure.");
}

return _ds_EffectData_data[? DS_EFFECT_DATA_CASTING_EFFECTS];
