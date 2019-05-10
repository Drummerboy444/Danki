/// @function ds_DashEffectData_GetSlowSteps(ds_DashEffectData_data) Returns the slow steps.
/// @param {ds_DashEffectData} ds_DashEffectData_data The dash effect data to get the slow steps from.
/// @returns {number} The slow steps.
var _ds_DashEffectData_data = argument[0];


if(!ds_DashEffectData_InstanceOf(_ds_DashEffectData_data)){
	ErrorHandler_FatalError("Tried to get slow steps from non DashEffectData structure.");
}

return _ds_DashEffectData_data[? DS_EFFECTDATA_SLOWSTEPS];
