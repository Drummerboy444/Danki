/// @function ds_DOTEffectData_GetDamagePerStep(ds_DOTEffectData_data) Gets the damage per step for the given 
/// ds_DOTEffectData.
/// @param {ds_DOTEffectData} ds_DOTEffectData_data The data to get the damage per step from.
/// @returns {number} The damage per step.
var _ds_DOTEffectData_data = argument[0];


if(!ds_DOTEffectData_InstanceOf(_ds_DOTEffectData_data)){
	ErrorHandler_FatalError("Tried to get damage per step from non DOTEffectData structure.");
}

return _ds_DOTEffectData_data[? DS_DOT_EFFECT_DATA_DAMAGE_PER_STEP];
