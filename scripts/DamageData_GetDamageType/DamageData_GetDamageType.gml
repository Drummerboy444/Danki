/// @function DamageData_getDamageType(DamageData_data) Gets the DamageType enum value from an DamageData.
/// @param {DamageData} DamageData_data The damage data.
/// @returns {enum} The DamageType enum.
var _DamageData_data = argument[0];

if(!DamageData_InstanceOf(_DamageData_data)) ErrorHandler_FatalError("Tried to get DamageType from non DamageData structure.");

return _DamageData_data[0];
