/// @function DashEffectData_GetDashMultiplyer(DashEffectData_data) Returns the dash multiplyer.
/// @param {DashEffectData} DashEffectData_data The dash effect data to get the multiplyer from.
/// @returns {number} The dash multiplyer.
var _DashEffectData_data = argument[0];


if(!DashEffectData_InstanceOf(_DashEffectData_data)){
	ErrorHandler_FatalError("Tried to get dash multiplyer from non DashEffectData structure.");
}

var _arr_arguments = EffectData_GET_ARGUMENTS(_DashEffectData_data);
return _arr_arguments[0];
