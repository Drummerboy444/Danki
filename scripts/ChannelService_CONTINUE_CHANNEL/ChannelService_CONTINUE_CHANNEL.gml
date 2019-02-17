#region Doc
/// @function ChannelService_CONTINUE_CHANNEL(num_targetX, num_targetY) Calls the channel script.
/// @param {number} num_targetX The x target of the channel.
/// @param {number} num_targetY The y target of the channel.
#endregion
var _num_targetX = argument[0];
var _num_targetY = argument[1];


// TODO: Decide which variables should be handed to this script
script_execute(scr_channel);

bool_channelling = true;
