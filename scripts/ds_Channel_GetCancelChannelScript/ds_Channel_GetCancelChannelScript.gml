/// @function ds_Channel_GetCancelChannelScript(ds_Channel_channel) Gets the cancelChannelScript of a channel.
/// @param {ds_Channel} ds_Channel_channel The channel
/// @returns {script} The cancelChannelScript.
var _ds_Channel_channel = argument[0];

if(!ds_Channel_InstanceOf(_ds_Channel_channel)){
	ErrorHandler_FatalError("Tried to get the cancel channel script for a non ds_Channel structure.");
}

return _ds_Channel_channel[? "cancelChannelScript"];