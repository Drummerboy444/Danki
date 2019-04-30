/// @function EffectData_IsOnLastStep(EffectData_data) Returns true if the effect is on it's final step.
/// @param {EffectData} EffectData_data The effect data.
/// @returns {bool} True if the effect is on it's final step.
var _EffectData_data = argument[0];

if(!EffectData_InstanceOf(_EffectData_data)){
	ErrorHandler_FatalError("Expected EffectData input. Received type: " + typeof(_EffectData_data));
}

return EffectData_GetSteps(_EffectData_data) <= 0