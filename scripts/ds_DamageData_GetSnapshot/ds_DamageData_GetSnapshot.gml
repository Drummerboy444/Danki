/// @function ds_DamageData_GetSnapshot(ds_DamageData_data) Gets the snapshot from a ds_DamageData.
/// @param {ds_DamageData} ds_DamageData_data The damage data.
/// @returns {ds_AbilityCastSnapshot} The snapshot.
var _ds_DamageData_data = argument[0];

if(!ds_DamageData_InstanceOf(_ds_DamageData_data)){
	ErrorHandler_FatalError("Tried to get snapshot from non ds_DamageData structure.");
}

return _ds_DamageData_data[? DS_DAMAGE_DATA_SNAPSHOT];
