/// @function DOTEffectData_InstanceOf(any_data) Returns true if the given data is an instance of DOTEffectData.
/// @param {any} any_data The data to check
/// @returns {boolean} True if the given data is an instance of DOTEffectData.
var _any_data = argument[0];


return
	EffectData_INSTANCE_OF(_any_data) &&
	EffectData_GetEffect(_any_data) == Enum_Effects.DOT &&
	array_length_1d(_any_data[1]) == 0;
