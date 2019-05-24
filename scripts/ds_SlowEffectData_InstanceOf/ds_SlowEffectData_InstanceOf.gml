/// @function ds_SlowEffectData_InstanceOf(any_data) Returns true if the given data is an instance of 
/// ds_SlowEffectData.
/// @param {any} any_data The data to check.
/// @returns {boolean} True if the given data is an instance of ds_SlowEffectData.
var _any_data = argument[0];


return
	ds_EffectData_InstanceOf(_any_data)
	&& ds_EffectData_GetEffect(_any_data) == Enum_Effects.SLOW
	&& ds_map_exists(_any_data, DS_SLOW_EFFECT_DATA_SLOW_MULTIPLIER)
	&& is_real(_any_data[? DS_SLOW_EFFECT_DATA_SLOW_MULTIPLIER]);
