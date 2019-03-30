/// @function ds_Ability_InstanceOf(any_data) Returns true if the given data is an instance of ds_Ability.
/// @param {any} any_data The data to check
/// @returns {boolean} True if the given data is an instance of ds_Ability.
var _any_data = argument[0];

return ds_exists(_any_data, ds_type_map)
	and ds_map_exists(_any_data, "name")
	and ds_map_exists(_any_data, "ability")
	and ds_map_exists(_any_data, "type")
	and ds_map_exists(_any_data, "range")
	and ds_map_exists(_any_data, "offensive");