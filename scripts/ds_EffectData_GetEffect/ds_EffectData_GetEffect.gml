/// @function ds_EffectData_getEffect(ds_EffectData_data) Gets the effect enum value from an ds_EffectData.
/// @param {ds_EffectData} ds_EffectData_data The effect data.
/// @returns {enum} The effect enum.
var _ds_EffectData_data = argument[0];

if(!ds_EffectData_InstanceOf(_ds_EffectData_data)){
	ErrorHandler_FatalError("Tried to get effect from non EffectData structure.");
}

return _ds_EffectData_data[? DS_EFFECTDATA_EFFECT];
