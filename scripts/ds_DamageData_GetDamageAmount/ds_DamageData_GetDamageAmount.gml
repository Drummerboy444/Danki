/// @function ds_DamageData_getDamageAmount(ds_DamageData_data) Gets the damage amount from a ds_DamageData.
/// @param {ds_DamageData} ds_DamageData_data The damage data.
/// @returns {num} The damage amount.
var _ds_DamageData_data = argument[0];

if(!ds_DamageData_InstanceOf(_ds_DamageData_data)){
	ErrorHandler_FatalError("Tried to get damage amount from non ds_DamageData structure.");
}

return _ds_DamageData_data[? DS_DAMAGE_DATA_AMOUNT];
