/// @function DamageData_SetDamageAmount(DamageData_data, num_damageAmount) Creates a new DamageData instance,
///		with the dmage amount value set to the given value, and returns it.
/// @param {DamageData}   DamageData_data   The damage data to update from.
/// @param {number}       num_damageAmount  The new damage amount.
/// @returns {DamageData}                   The DamageData with the updated damage amount
var _DamageData_data = argument[0];
var _num_damageAmount = argument[1];

if(!DamageData_InstanceOf(_DamageData_data)){
	ErrorHandler_FatalError("Connot set the damage amount on a none DamageData input");
}

_DamageData_data[? DS_DAMAGE_DATA_AMOUNT] = _num_damageAmount;
