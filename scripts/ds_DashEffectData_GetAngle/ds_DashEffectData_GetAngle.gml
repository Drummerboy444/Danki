/// @function ds_DashEffectData_GetAngle(ds_DashEffectData_data) Returns the angle.
/// @param {ds_DashEffectData} ds_DashEffectData_data The dash effect data to get the angle from.
/// @returns {number} The angle.
var _ds_DashEffectData_data = argument[0];


if(!ds_DashEffectData_InstanceOf(_ds_DashEffectData_data)){
	ErrorHandler_FatalError("Tried to get angle from non DashEffectData structure.");
}

return _ds_DashEffectData_data[? DS_DASH_EFFECT_DATA_ANGLE];
