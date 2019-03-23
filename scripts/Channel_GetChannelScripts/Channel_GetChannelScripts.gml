/// @function Channel_GetChannelScripts(Channel_channel) Gets the ChannelScripts data structure of an channel.
/// @param {Channel} Channel_channel The channel
/// @returns {ChannelScripts} The channel scripts data structure.
var _Channel_channel = argument[0];

if(!Channel_InstanceOf(_Channel_channel)){
	ErrorHandler_FatalError("Tried to get ChannelScripts from non Ability structure.");
}

return _Channel_channel[5];