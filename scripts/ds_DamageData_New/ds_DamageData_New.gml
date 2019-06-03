/// @function ds_DamageData_new(enum_damageType, num_amount, ds_AbilityCasterSnapshot_snapshot) Creates a new ds_DamageData
/// @param {enum} enum_damageType The type of damage.
/// @param {num} num_amount The amount of damage.
/// @param {ds_AbilityCasterSnapshot} ds_AbilityCasterSnapshot_snapshot The ability caster snapshot.
/// @returns {ds_DamageData}
var _enum_damageType = argument[0];
var _num_amount = argument[1];
var _ds_AbilityCasterSnapshot_snapshot = argument[2];


var _ds_DamageData_new = ds_map_create();
_ds_DamageData_new[? DS_DAMAGE_DATA_TYPE] = _enum_damageType;
_ds_DamageData_new[? DS_DAMAGE_DATA_AMOUNT] = _num_amount;
_ds_DamageData_new[? DS_DAMAGE_DATA_SNAPSHOT] = _ds_AbilityCasterSnapshot_snapshot;
return _ds_DamageData_new;
