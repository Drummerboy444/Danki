#region Doc
/// @function ChannelService_FINISH_CHANNEL(num_targetX, num_targetY) Calls the finish channel script
///		and sets the variables on the channel service accordingly.
/// @param {number} num_targetX The x target of the channel.
/// @param {number} num_targetY The y target of the channel.
#endregion
var _num_targetX = argument[0];
var _num_targetY = argument[1];

script_execute(scr_finishChannel, id_owner, _num_targetX, _num_targetY, id_ability);

bool_channelling = false;
