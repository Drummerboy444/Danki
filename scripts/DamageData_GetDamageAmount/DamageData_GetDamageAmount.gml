/// @function DamageData_getDamageAmount(DamageData_data) Gets the damage amount from an DamageData.
/// @param {DamageData} DamageData_data The damage data.
/// @returns {num} The damage amount.
var _DamageData_data = argument[0];

if(!DamageData_InstanceOf(_DamageData_data)) ErrorHandler_FatalError("Tried to get damage amount from non DamageData structure.");

return _DamageData_data[1];
