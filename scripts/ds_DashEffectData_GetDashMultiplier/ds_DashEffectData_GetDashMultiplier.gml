/// @function ds_DashEffectData_GetDashMultiplier(ds_DashEffectData_data) Returns the dash multiplier.
/// @param {ds_DashEffectData} ds_DashEffectData_data The dash effect data to get the multiplier from.
/// @returns {number} The dash multiplier.
var _ds_DashEffectData_data = argument[0];


if(!ds_DashEffectData_InstanceOf(_ds_DashEffectData_data)){
	ErrorHandler_FatalError("Tried to get dash multiplier from non DashEffectData structure.");
}

return _ds_DashEffectData_data[? DS_EFFECTDATA_DASHMULTIPLIER];
