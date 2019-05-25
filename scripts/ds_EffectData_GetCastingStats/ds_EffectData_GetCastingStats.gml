/// @function ds_EffectData_GetCastingStats(ds_EffectData_data) Gets the casting stats from a ds_EffectData.
/// @param {ds_EffectData} ds_EffectData_data The effect data.
/// @returns {ds_Stats} The casting stats.
var _ds_EffectData_data = argument[0];

if(!ds_EffectData_InstanceOf(_ds_EffectData_data)){
	ErrorHandler_FatalError("Tried to get casting stats from non EffectData structure.");
}

return _ds_EffectData_data[? DS_EFFECT_DATA_CASTING_STATS];
