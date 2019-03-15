/// @function EffectData_instanceOf(any_data) Returns true if the given data is an instance of EffectData.
/// @param {any} any_data The data to check
/// @returns {bollean} True if the given data is an instance of EffectData.
var _any_data = argument[0];


return 
	is_array(_any_data) &&
	array_length_1d(_any_data) == 4 &&
	is_real(_any_data[0]) &&
	_any_data[0] < Enum_Effects.length &&
	is_array(_any_data[1]) &&
	is_real(_any_data[2]) &&
	is_real(_any_data[3]);
