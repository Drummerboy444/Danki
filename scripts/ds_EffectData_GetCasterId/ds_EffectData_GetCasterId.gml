/// @function ds_EffectData_getCasterId(ds_EffectData_data) Gets the caster id from a ds_EffectData.
/// @param {ds_EffectData} ds_EffectData_data The effect data.
/// @returns {id} The instance id of the caster.
var _ds_EffectData_data = argument[0];

if(!ds_EffectData_InstanceOf(_ds_EffectData_data)){
	ErrorHandler_FatalError("Tried to get caster id from non EffectData structure.");
}

return _ds_EffectData_data[? DS_EFFECTDATA_CASTER];
