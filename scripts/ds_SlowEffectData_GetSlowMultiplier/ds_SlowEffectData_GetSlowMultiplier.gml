/// @function ds_SlowEffectData_GetSlowMultiplier(ds_SlowEffectData_data) Returns the slow multiplier.
/// @param {ds_SlowEffectData} ds_SlowEffectData_data The slow effect data to get the multiplier from.
/// @returns {number} The slow multiplier.
var _ds_SlowEffectData_data = argument[0];


if(!ds_SlowEffectData_InstanceOf(_ds_SlowEffectData_data)){
	ErrorHandler_FatalError("Tried to get slow multiplier from non SlowEffectData structure.");
}

return _ds_SlowEffectData_data[? DS_SLOW_EFFECT_DATA_SLOW_MULTIPLIER];
