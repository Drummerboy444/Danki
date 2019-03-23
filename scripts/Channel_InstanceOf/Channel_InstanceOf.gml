/// @function Channel_InstanceOf(any_data) Returns true if the given data is an instance of Channel.
/// @param {any} any_data The data to check
/// @returns {boolean} True if the given data is an instance of Channel.
var _any_data = argument[0];

return 
	Ability_INSTANCE_OF(_any_data) &&
	Ability_GetType(_any_data) == Enum_AbilityTypes.CHANNEL;