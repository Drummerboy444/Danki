/// @function ds_DamageData_getDamageType(ds_DamageData_data) Gets the DamageType enum value from a ds_DamageData.
/// @param {ds_DamageData} ds_DamageData_data The damage data.
/// @returns {enum} The DamageType enum.
var _ds_DamageData_data = argument[0];

if(!ds_DamageData_InstanceOf(_ds_DamageData_data)){
	ErrorHandler_FatalError("Tried to get DamageType from non ds_DamageData structure.");
}

return _ds_DamageData_data[? DS_DAMAGE_DATA_TYPE];
