#region Doc
/// @function IceBeam_finishChannel(num_targetX, num_targetY)
/// @param   {number}  num_targetX       The x target of the channel.
/// @param   {number}  num_targetY       The y target of the channel.
#endregion

var _num_targetX = argument[0];
var _num_targetY = argument[1];

show_debug_message("Finish channel");

instance_destroy(id_channelObject);

id_channelObject = noone;