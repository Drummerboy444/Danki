/// @function EffectData_getCasterId(EffectData_data) Gets the caster id from an EffectData.
/// @param {EffectData} EffectData_data The effect data.
/// @returns {id} The instance id of the caster.
var _EffectData_data = argument[0];

if(!EffectData_InstanceOf(_EffectData_data)){
	ErrorHandler_FatalError("Tried to get caster id from non EffectData structure.");
}

return _EffectData_data[3];
