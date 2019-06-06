/// @function ds_DamageData_SetDamageAmount(ds_DamageData_data, num_damageAmount) Sets the damage amount on
///		the given damage data.
/// @param {ds_DamageData} ds_DamageData_data The damage data to update.
/// @param {number} num_damageAmount The new damage amount.
var _ds_DamageData_data = argument[0];
var _num_damageAmount = argument[1];

if(!ds_DamageData_InstanceOf(_ds_DamageData_data)){
	ErrorHandler_FatalError("Connot set the damage amount on a none ds_DamageData input");
}

_ds_DamageData_data[? DS_DAMAGE_DATA_AMOUNT] = _num_damageAmount;
