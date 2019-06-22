/// @function ds_DamageData_Destroy(ds_DamageData_data) Destroys the given damage data.
/// @param {ds_DamageData} ds_DamageData_data The damage data to destroy.
var _ds_DamageData_data = argument[0];


if (!ds_DamageData_InstanceOf(_ds_DamageData_data)) {
	ErrorHandler_FatalError("Attempting to destroy object that isn't an instance of DamageData")
}

if (_ds_DamageData_data[? DS_DAMAGE_DATA_DESTROY_SNAPSHOT]) {
	ds_AbilityCasterSnapshot_Destroy(_ds_DamageData_data[? DS_DAMAGE_DATA_SNAPSHOT]);
}

ds_map_destroy(_ds_DamageData_data);