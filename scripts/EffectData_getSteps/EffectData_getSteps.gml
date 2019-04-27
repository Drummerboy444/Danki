/// @function EffectData_getSteps(EffectData_data) Gets the steps from an EffectData
/// @param {EffectData} EffectData_data The effect data.
/// @returns {number} The effect steps.
var _EffectData_data = argument[0];

if(!EffectData_InstanceOf(_EffectData_data)){
	ErrorHandler_FatalError("Tried to get steps from non EffectData structure.");
}

return _EffectData_data[2];
