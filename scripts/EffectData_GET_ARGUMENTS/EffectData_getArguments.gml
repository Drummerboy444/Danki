/// @function EffectData_getArguments(EffectData_data) Gets the arguments from an EffectData.
/// @param {EffectData} EffectData_data The effect data.
/// @returns {array} The effect arguments.
var _EffectData_data = argument[0];

if(!EffectData_INSTANCE_OF(_EffectData_data)){
	ErrorHandler_FatalError("Tried to get arguments from non EffectData structure.");
}

return _EffectData_data[1];
