/// @function DOTEffectData_GetDamagePerStep(DOTEffectData_data) Gets the damage per step for the given DOTEffectData.
/// @param {DOTEffectData} DOTEffectData_data The data to get the damage per step from.
/// @returns {number} The damage per step.
var _DOTEffectData_data = argument[0];


if(!DOTEffectData_InstanceOf(_DOTEffectData_data)){
	ErrorHandler_FatalError("Tried to get damage per step from non DOTEffectData structure.");
}

var _arr_arguments = EffectData_GET_ARGUMENTS(_DOTEffectData_data);
return _arr_arguments[0];
