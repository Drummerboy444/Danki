/// @function ds_DashEffectData_IsRecovering(ds_DashEffectData_data) Returns true if the effect is currently in the recovery phase.
/// @param {ds_DashEffectData} ds_DashEffectData_data The dash effect data to check.
/// @returns {bool} True if recovering.
var _ds_DashEffectData_data = argument[0];


if(!ds_DashEffectData_InstanceOf(_ds_DashEffectData_data)){
	ErrorHandler_FatalError("Tried to check recovery on non DashEffectData structure.");
}

return ds_EffectData_GetSteps(_ds_DashEffectData_data) < ds_DashEffectData_GetSlowSteps(_ds_DashEffectData_data);
