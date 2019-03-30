/// @function DamageData_InstanceOf(any_data) Returns true if the given data is an instance of DamageData.
/// @param {any} any_data The data to check
/// @returns {boolean} True if the given data is an instance of DamageData.
var _any_data = argument[0];

return 
	is_array(_any_data) &&
	array_length_1d(_any_data) == 2 &&
	is_real(_any_data[0]) &&
	_any_data[0] < Enum_DamageTypes.length &&
	is_real(_any_data[1]);
