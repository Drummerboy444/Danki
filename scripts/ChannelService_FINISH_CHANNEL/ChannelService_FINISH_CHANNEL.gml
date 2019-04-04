#region Doc
/// @function ChannelService_FINISH_CHANNEL() Calls the finish channel script
///		and sets the variables on the channel service accordingly.
#endregion

script_execute(scr_finishChannel, id_owner, num_targetX, num_targetY, id_ability);

bool_channelling = false;
