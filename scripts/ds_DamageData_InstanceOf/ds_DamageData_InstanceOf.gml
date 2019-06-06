/// @function ds_DamageData_InstanceOf(any_data) Returns true if the given data is an instance of ds_DamageData.
/// @param {any} any_data The data to check
/// @returns {boolean} True if the given data is an instance of ds_DamageData.
var _any_data = argument[0];


return 
	ds_exists(_any_data, ds_type_map)
	&& ds_map_size(_any_data) == 4
	&& ds_map_exists(_any_data, DS_DAMAGE_DATA_TYPE)
	&& is_real(_any_data[? DS_DAMAGE_DATA_TYPE])
	&& _any_data[? DS_DAMAGE_DATA_TYPE] < Enum_DamageTypes.length
	&& ds_map_exists(_any_data, DS_DAMAGE_DATA_AMOUNT)
	&& is_real(_any_data[? DS_DAMAGE_DATA_AMOUNT])
	&& ds_map_exists(_any_data, DS_DAMAGE_DATA_SNAPSHOT)
	&& ds_AbilityCasterSnapshot_InstanceOf(_any_data[? DS_DAMAGE_DATA_SNAPSHOT])
	&& ds_map_exists(_any_data, DS_DAMAGE_DATA_DESTROY_SNAPSHOT);
