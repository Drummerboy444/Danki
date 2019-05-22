/// @function ds_DOTEffectData_InstanceOf(any_data) Returns true if the given data is an instance of 
/// ds_DOTEffectData.
/// @param {any} any_data The data to check
/// @returns {boolean} True if the given data is an instance of ds_DOTEffectData.
var _any_data = argument[0];


return
	ds_EffectData_InstanceOf(_any_data)
	&& ds_EffectData_GetEffect(_any_data) == Enum_Effects.DOT
	&& ds_map_exists(_any_data, DS_DOT_EFFECT_DATA_DAMAGE_PER_STEP)
	&& is_real(_any_data[? DS_DOT_EFFECT_DATA_DAMAGE_PER_STEP])
	&& ds_map_exists(_any_data, DS_DOT_EFFECT_DATA_DAMGE_TYPE)
	&& is_real(_any_data[? DS_DOT_EFFECT_DATA_DAMGE_TYPE]);
