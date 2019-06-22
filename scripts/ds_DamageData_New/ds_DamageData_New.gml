/// @function ds_DamageData_new(enum_damageType, num_amount, ds_AbilityCasterSnapshot_snapshot, ?bool_destroySnapshot)
///		Creates a new ds_DamageData
/// @param {enum} enum_damageType The type of damage.
/// @param {num} num_amount The amount of damage.
/// @param {ds_AbilityCasterSnapshot} ds_AbilityCasterSnapshot_snapshot The ability caster snapshot.
/// @param {boolean} ?bool_destroySnapshot Whether the snapshot should be destroyed as part of the damage datas
///                                       destroy script. Defaults to false.
/// @returns {ds_DamageData}
var _enum_damageType = argument[0];
var _num_amount = argument[1];
var _ds_AbilityCasterSnapshot_snapshot = argument[2];
var _bool_destroySnapshot = argument_count > 3 ? argument[3] : false;


var _ds_DamageData_new = ds_map_create();
_ds_DamageData_new[? DS_DAMAGE_DATA_TYPE] = _enum_damageType;
_ds_DamageData_new[? DS_DAMAGE_DATA_AMOUNT] = _num_amount;
_ds_DamageData_new[? DS_DAMAGE_DATA_SNAPSHOT] = _ds_AbilityCasterSnapshot_snapshot;
_ds_DamageData_new[? DS_DAMAGE_DATA_DESTROY_SNAPSHOT] = _bool_destroySnapshot;
return _ds_DamageData_new;
