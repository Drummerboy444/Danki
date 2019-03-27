/// @function ds_Channel_GetDuration(ds_Channel_channel) Gets the duration of an channel.
/// @param {ds_Channel} ds_Channel_channel The channel
/// @returns {num} The duration.
var _ds_Channel_channel = argument[0];

if(!ds_Channel_InstanceOf(_ds_Channel_channel)){
	ErrorHandler_FatalError("Tried to get type from non Channel structure.");
}

return _ds_Channel_channel[? "duration"];