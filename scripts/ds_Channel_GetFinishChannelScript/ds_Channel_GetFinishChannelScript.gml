/// @function ds_Channel_GetFinishChannelScript(ds_Channel_channel) Gets the finishChannelScript of a channel.
/// @param {ds_Channel} ds_Channel_channel The channel
/// @returns {script} The finishChannelScript.
var _ds_Channel_channel = argument[0];

if(!ds_Channel_InstanceOf(_ds_Channel_channel)){
	ErrorHandler_FatalError("Tried to get the finish channel script for a non Channel structure.");
}

return _ds_Channel_channel[? "finishChannelScript"];