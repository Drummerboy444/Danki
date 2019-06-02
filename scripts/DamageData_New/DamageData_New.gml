/// @function DamageData_new(enum_damageType, num_amount) Creates a new DamageData
/// @param {enum} enum_damageType The type of damage.
/// @param {num} num_amount The amount of damage.
/// @returns {DamageData}
var _enum_damageType = argument[0];
var _num_amount = argument[1];


var _DamageData_new = ds_map_create();
_DamageData_new[? DS_DAMAGE_DATA_TYPE] = _enum_damageType;
_DamageData_new[? DS_DAMAGE_DATA_AMOUNT] = _num_amount;
return _DamageData_new;
