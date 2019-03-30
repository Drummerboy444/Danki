/// @function ds_Stats_InstanceOf(any_data) Returns true if the given input is an instance of ds_Stats.
/// @param {any} any_data The data to check.
/// @returns {boolean} Whether the given input is an instance of ds_Stats.
var _any_data = argument[0];


if (!ds_exists(_any_data, ds_type_map)) {
	return false;
}

for (var _enum_stat = 0; _enum_stat < Enum_Stats.length; _enum_stat++) {
	var _num_statValue = _any_data[? _enum_stat];
	if (!is_real(_num_statValue)) {
		return false;
	}
}

return true;
