/// @function ds_Channel_GetContinueChannelScript(ds_Channel_channel) Gets the continueChannelScript of a channel.
/// @param {ds_Channel} ds_Channel_channel The channel
/// @returns {script} The continueChannelScript.
var _ds_Channel_channel = argument[0];

if(!ds_Channel_InstanceOf(_ds_Channel_channel)){
	ErrorHandler_FatalError("Tried to get the continue channel script for a non ds_Channel structure.");
}

return _ds_Channel_channel[? "continueChannelScript"];