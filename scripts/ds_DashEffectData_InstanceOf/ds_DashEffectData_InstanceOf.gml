/// @function ds_DashEffectData_InstanceOf(any_data) Returns true if the given data is an instance of 
/// ds_DashEffectData.
/// @param {any} any_data The data to check.
/// @returns {boolean} True if the given data is an instance of ds_DashEffectData.
var _any_data = argument[0];


return
	ds_EffectData_InstanceOf(_any_data)
	&& ds_EffectData_GetEffect(_any_data) == Enum_Effects.DASH
	&& ds_map_exists(_any_data, DS_DASH_EFFECT_DATA_DASH_MULTIPLIER)
	&& is_real(_any_data[? DS_DASH_EFFECT_DATA_DASH_MULTIPLIER])
	&& ds_map_exists(_any_data, DS_DASH_EFFECT_DATA_SLOW_MULTIPLIER)
	&& is_real(_any_data[? DS_DASH_EFFECT_DATA_SLOW_MULTIPLIER])
	&& ds_map_exists(_any_data, DS_DASH_EFFECT_DATA_SLOW_STEPS)
	&& is_real(_any_data[? DS_DASH_EFFECT_DATA_SLOW_STEPS]);
