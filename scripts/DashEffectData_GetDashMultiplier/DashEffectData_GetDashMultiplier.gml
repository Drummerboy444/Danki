/// @function DashEffectData_GetDashMultiplier(DashEffectData_data) Returns the dash multiplier.
/// @param {DashEffectData} DashEffectData_data The dash effect data to get the multiplier from.
/// @returns {number} The dash multiplier.
var _DashEffectData_data = argument[0];


if(!DashEffectData_InstanceOf(_DashEffectData_data)){
	ErrorHandler_FatalError("Tried to get dash multiplier from non DashEffectData structure.");
}

var _arr_arguments = EffectData_GET_ARGUMENTS(_DashEffectData_data);
return _arr_arguments[0];
