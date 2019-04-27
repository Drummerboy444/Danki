/// @function SlowEffectData_InstanceOf(any_data) Returns true if the given data is an instance of SlowEffectData.
/// @param {any} any_data The data to check
/// @returns {boolean} True if the given data is an instance of SlowEffectData.
var _any_data = argument[0];


if (!EffectData_INSTANCE_OF(_any_data) || !EffectData_GetEffect(_any_data) == Enum_Effects.SLOW) {
	return false;
}

var _arr_arguments = EffectData_GET_ARGUMENTS(_any_data);

return
	array_length_1d(_arr_arguments) == 1 &&
	is_real(_arr_arguments[0]);
