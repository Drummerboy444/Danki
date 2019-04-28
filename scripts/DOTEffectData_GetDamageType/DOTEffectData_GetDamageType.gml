/// @function DOTEffectData_GetDamageType(DOTEffectData_data) Gets the damage type for the given DOTEffectData.
/// @param {DOTEffectData} DOTEffectData_data The data to get the damage type from.
/// @returns {Enum} The damage type.
var _DOTEffectData_data = argument[0];


if(!DOTEffectData_InstanceOf(_DOTEffectData_data)){
	ErrorHandler_FatalError("Tried to get damage type from non DOTEffectData structure.");
}

var _arr_arguments = EffectData_GET_ARGUMENTS(_DOTEffectData_data);
return _arr_arguments[1];
