/// @function StunEffectData_InstanceOf(any_data) Returns true if the given data is an instance of StunEffectData.
/// @param {any} any_data The data to check.
/// @returns {boolean} True if the given data is an instance of StunEffectData.
var _any_data = argument[0];


if (!EffectData_InstanceOf(_any_data) || !EffectData_GetEffect(_any_data) == Enum_Effects.STUN) {
	return false;
}

var _arr_arguments = EffectData_GET_ARGUMENTS(_any_data);

return array_length_1d(_arr_arguments) == 0;
