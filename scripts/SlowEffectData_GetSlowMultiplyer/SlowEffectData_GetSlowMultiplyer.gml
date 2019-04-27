/// @function SlowEffectData_GetSlowMultiplyer(SlowEffectData_data) Returns the slow multiplyer.
/// @param {SlowEffectData} SlowEffectData_data The slow effect data to get the multiplyer from.
/// @returns {number} The slow multiplyer
var _SlowEffectData_data = argument[0];


if(!SlowEffectData_InstanceOf(_SlowEffectData_data)){
	ErrorHandler_FatalError("Tried to get slow multiplyer from non SlowEffectData structure.");
}

var _arr_arguments = EffectData_GET_ARGUMENTS(_SlowEffectData_data);
return _arr_arguments[0];
