#region Doc
/// @function Mortal_CALCULATE_RECEIVED_DAMAGE(ds_DamageData_data)
/// @param {ds_DamageData} ds_DamageData_data The damage data.
/// @return {number} The amount of damage to recieve.
#endregion
var _ds_DamageData_data = argument[0];

_ds_DamageData_data = AbilityCaster_applyOnReceiveDamageEffects(id, _ds_DamageData_data);

var _num_damageAmount = ds_DamageData_GetDamageAmount(_ds_DamageData_data);
var _ds_AbilityCasterSnapshot_snapshot = ds_DamageData_GetSnapshot(_ds_DamageData_data);
var _ds_Stats_stats = ds_AbilityCasterSnapshot_GetStats(_ds_AbilityCasterSnapshot_snapshot);

var _num_armour = ds_Stats_Get(_ds_Stats_stats, Enum_Stats.ARMOUR);
_num_damageAmount = max(0, _num_damageAmount - _num_armour);

return _num_damageAmount;
// further calculations involving the Mortals effects with respect to damage type and amount
// return the final calculated damage
