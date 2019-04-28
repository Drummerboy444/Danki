/// @function DashEffectData_GetSlowMultiplier(DashEffectData_data) Returns the slow multiplier.
/// @param {DashEffectData} DashEffectData_data The dash effect data to get the multiplier from.
/// @returns {number} The slow multiplier.
var _DashEffectData_data = argument[0];


if(!DashEffectData_InstanceOf(_DashEffectData_data)){
	ErrorHandler_FatalError("Tried to get slow multiplier from non DashEffectData structure.");
}

var _arr_arguments = EffectData_GET_ARGUMENTS(_DashEffectData_data);
return _arr_arguments[1];
