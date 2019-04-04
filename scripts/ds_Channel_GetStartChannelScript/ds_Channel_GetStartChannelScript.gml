/// @function ds_Channel_GetStartChannelScript(ds_Channel_channel) Gets the StartChannelScript of a channel.
/// @param {ds_Channel} ds_Channel_channel The channel
/// @returns {script} The StartChannelScript.
var _ds_Channel_channel = argument[0];

if(!ds_Channel_InstanceOf(_ds_Channel_channel)){
	ErrorHandler_FatalError("Tried to get the start channel script for a non ds_Channel structure.");
}

return _ds_Channel_channel[? DS_CHANNEL_START_CHANNEL_SCRIPT];