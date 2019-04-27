/// @function DashEffectData_GetSlowMultiplyer(DashEffectData_data) Returns the slow multiplyer.
/// @param {DashEffectData} DashEffectData_data The dash effect data to get the multiplyer from.
/// @returns {number} The slow multiplyer.
var _DashEffectData_data = argument[0];


if(!DashEffectData_InstanceOf(_DashEffectData_data)){
	ErrorHandler_FatalError("Tried to get slow multiplyer from non DashEffectData structure.");
}

var _arr_arguments = EffectData_GET_ARGUMENTS(_DashEffectData_data);
return _arr_arguments[1];
