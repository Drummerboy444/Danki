/// @function ds_EffectData_instanceOf(any_data) Returns true if the given data is an instance of ds_EffectData.
/// @param {any} any_data The data to check
/// @returns {boolean} True if the given data is an instance of ds_EffectData.
var _any_data = argument[0];



return ds_exists(_any_data, ds_type_map)
	&& ds_map_exists(_any_data, DS_EFFECTDATA_CASTER)
	&& ds_map_exists(_any_data, DS_EFFECTDATA_EFFECT)
	&& ds_map_exists(_any_data, DS_EFFECTDATA_STEPS);
