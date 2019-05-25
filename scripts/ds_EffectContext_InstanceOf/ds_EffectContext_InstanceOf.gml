/// @function ds_EffectContext_InstanceOf(any_data) Returns true if the given data is an instance of effect context.
/// @param {any} any_data The data to check.
/// @returns {boolean} True if the data is an instance of EffectContext.
var _any_data = argument[0];


return
	ds_exists(_any_data, ds_type_map)
	&& ds_map_size(_any_data) == 3
	&& ds_map_exists(_any_data, DS_EFFECT_CONTEXT_EFFECT_DATA)
	&& ds_EffectData_InstanceOf(_any_data[? DS_EFFECT_CONTEXT_EFFECT_DATA])
	&& ds_map_exists(_any_data, DS_EFFECT_CONTEXT_CASTING_STATS)
	&& ds_Stats_InstanceOf(_any_data[? DS_EFFECT_CONTEXT_CASTING_STATS])
	&& ds_map_exists(_any_data, DS_EFFECT_CONTEXT_CASTING_EFFECTS)
	&& Utility_DsListInstancesOf(
		_any_data[? DS_EFFECT_CONTEXT_CASTING_EFFECTS],
		ds_EffectData_InstanceOf
	);
