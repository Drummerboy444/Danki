/// @function ds_EffectData_IsOnLastStep(ds_EffectData_data) Returns true if the effect is on it's final step.
/// @param {ds_EffectData} ds_EffectData_data The effect data.
/// @returns {bool} True if the effect is on it's final step.
var _ds_EffectData_data = argument[0];

if(!ds_EffectData_InstanceOf(_ds_EffectData_data)){
	ErrorHandler_FatalError("Expected EffectData input. Received type: " + typeof(_ds_EffectData_data));
}

return ds_EffectData_GetSteps(_ds_EffectData_data) <= 0;