/// @function Ability_InstanceOf(any_data) Returns true if the given data is an instance of Ability.
/// @param {any} any_data The data to check
/// @returns {boolean} True if the given data is an instance of Ability.
var _any_data = argument[0];

return 
	is_array(_any_data) &&
	array_length_1d(_any_data) == 6 &&
	is_string(_any_data[0]) &&
	object_exists(_any_data[1]) &&
	is_real(_any_data[2]) &&
	is_real(_any_data[3]) &&
	is_bool(_any_data[4]) &&
	is_array(_any_data[5]) &&
	is_real(_any_data[6]);
