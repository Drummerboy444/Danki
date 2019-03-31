/// @function ds_Channel_InstanceOf(any_data) Returns true if the given data is an instance of ds_Channel.
/// @param {any} any_data The data to check
/// @returns {boolean} True if the given data is an instance of ds_Channel.
var _any_data = argument[0];

return 
	ds_Ability_INSTANCE_OF(_any_data) &&
	ds_Ability_GetType(_any_data) == Enum_AbilityTypes.CHANNEL
	and ds_map_exists(_any_data, DS_CHANNEL_START_CHANNEL_SCRIPT)
		and script_exists(_any_data[? DS_CHANNEL_START_CHANNEL_SCRIPT])
	and ds_map_exists(_any_data, DS_CHANNEL_CONTINUE_CHANNEL_SCRIPT)
		and script_exists(_any_data[? DS_CHANNEL_CONTINUE_CHANNEL_SCRIPT])
	and ds_map_exists(_any_data, DS_CHANNEL_CANCEL_CHANNEL_SCRIPT)
		and script_exists(_any_data[? DS_CHANNEL_CANCEL_CHANNEL_SCRIPT])
	and ds_map_exists(_any_data, DS_CHANNEL_FINISH_CHANNEL_SCRIPT)
		and script_exists(_any_data[? DS_CHANNEL_FINISH_CHANNEL_SCRIPT])
	and ds_map_exists(_any_data, DS_CHANNEL_DURATION)
		and is_real(_any_data[? DS_CHANNEL_DURATION]);
