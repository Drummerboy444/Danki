/// @function ds_OneShot_InstanceOf(any_data) Returns true if the given data is an instance of OneShot.
/// @param {any} any_data The data to check
/// @returns {boolean} True if the given data is an instance of OneShot.
var _any_data = argument[0];

return 
	ds_Ability_INSTANCE_OF(_any_data) &&
	ds_Ability_GetType(_any_data) == Enum_AbilityTypes.ONE_SHOT;