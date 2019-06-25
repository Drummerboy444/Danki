/// @function ds_EffectData_getShader(ds_EffectData_data) Gets the shader id from a ds_EffectData.
/// @param {ds_EffectData} ds_EffectData_data The effect data.
/// @returns {shd} The shader id.
var _ds_EffectData_data = argument[0];

if(!ds_EffectData_InstanceOf(_ds_EffectData_data)){
	ErrorHandler_FatalError("Tried to get shader from non EffectData structure.");
}

return _ds_EffectData_data[? DS_EFFECT_DATA_SHADER];
