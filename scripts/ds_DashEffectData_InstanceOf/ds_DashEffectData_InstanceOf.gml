/// @function ds_DashEffectData_InstanceOf(any_data) Returns true if the given data is an instance of 
/// ds_DashEffectData.
/// @param {any} any_data The data to check.
/// @returns {boolean} True if the given data is an instance of ds_DashEffectData.
var _any_data = argument[0];


return
ds_EffectData_InstanceOf(_any_data)
&& ds_EffectData_GetEffect(_any_data) == Enum_Effects.DASH
&& ds_map_exists(_any_data, DS_DASHEFFECTDATA_DASHMULTIPLIER)
&& is_real(_any_data[? DS_DASHEFFECTDATA_DASHMULTIPLIER])
&& ds_map_exists(_any_data, DS_DASHEFFECTDATA_DASHSLOWMULTIPLIER)
&& is_real(_any_data[? DS_DASHEFFECTDATA_DASHSLOWMULTIPLIER])
&& ds_map_exists(_any_data, DS_DASHEFFECTDATA_SLOWSTEPS)
&& is_real(_any_data[? DS_DASHEFFECTDATA_SLOWSTEPS]);
