/// @function EffectData_getEffect(EffectData_data) Gets the effect enum value from an EffectData.
/// @param {EffectData} EffectData_data The effect data.
/// @returns {enum} The effect enum.
var _EffectData_data = argument[0];

if(!EffectData_InstanceOf(_EffectData_data)) ErrorHandler_FatalError("Tried to get effect from non EffectData structure.");

return _EffectData_data[0];
