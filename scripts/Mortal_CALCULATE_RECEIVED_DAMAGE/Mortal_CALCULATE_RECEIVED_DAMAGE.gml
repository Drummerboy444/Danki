#region Doc
/// @function Mortal_CALCULATE_RECEIVED_DAMAGE(DamageData_data)
/// @param {DamageData} DamageData_data The damage data.
/// @return {number} The amount of damage to recieve.
#endregion
var _DamageData_data = argument[0];

var _enum_damageType = DamageData_GetDamageType(_DamageData_data);
var _num_damageAmount = DamageData_GetDamageAmount(_DamageData_data);

var _num_armour = ds_Stats_Get(ds_Stats_frameStats, Enum_Stats.ARMOUR);
_num_damageAmount = max(0, _num_damageAmount - _num_armour);

return _num_damageAmount;
// further calculations involving the Mortals effects with respect to damage type and amount
// return the final calculated damage
