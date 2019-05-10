/// @function ds_DOTEffectData_GetDamageType(ds_DOTEffectData_data) Gets the damage type for the given 
/// ds_DOTEffectData.
/// @param {ds_DOTEffectData} ds_DOTEffectData_data The data to get the damage type from.
/// @returns {Enum} The damage type.
var _ds_DOTEffectData_data = argument[0];


if(!ds_DOTEffectData_InstanceOf(_ds_DOTEffectData_data)){
	ErrorHandler_FatalError("Tried to get damage type from non DOTEffectData structure.");
}

return _ds_DOTEffectData_data[? DS_EFFECTDATA_DAMAGETYPE];
