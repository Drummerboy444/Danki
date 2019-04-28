/// @function DashEffectData_GetSlowSteps(DashEffectData_data) Returns the slow steps.
/// @param {DashEffectData} DashEffectData_data The dash effect data to get the slow steps from.
/// @returns {number} The slow steps.
var _DashEffectData_data = argument[0];


if(!DashEffectData_InstanceOf(_DashEffectData_data)){
	ErrorHandler_FatalError("Tried to get slow steps from non DashEffectData structure.");
}

var _arr_arguments = EffectData_GET_ARGUMENTS(_DashEffectData_data);
return _arr_arguments[2];
