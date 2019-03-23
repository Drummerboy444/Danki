/// @function Channel_GetDuration(Channel_channel) Gets the duration of an channel.
/// @param {Channel} Channel_channel The channel
/// @returns {num} The duration.
var _Channel_channel = argument[0];

if(!Channel_InstanceOf(_Channel_channel)){
	ErrorHandler_FatalError("Tried to get type from non Ability structure.");
}

return _Channel_channel[6];