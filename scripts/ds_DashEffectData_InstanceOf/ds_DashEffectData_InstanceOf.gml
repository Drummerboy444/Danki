/// @function ds_DashEffectData_InstanceOf(any_data) Returns true if the given data is an instance of 
/// ds_DashEffectData.
/// @param {any} any_data The data to check.
/// @returns {boolean} True if the given data is an instance of ds_DashEffectData.
var _any_data = argument[0];


if (!ds_EffectData_InstanceOf(_any_data) || !ds_EffectData_GetEffect(_any_data) == Enum_Effects.DASH) {
	return false;
}

var _arr_arguments = ds_EffectData_GET_ARGUMENTS_ARRAY(_any_data);

return
	array_length_1d(_arr_arguments) == 3 &&
	is_real(_arr_arguments[0]) &&
	is_real(_arr_arguments[1]) &&
	is_real(_arr_arguments[2]);
