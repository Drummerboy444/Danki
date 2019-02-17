#region Doc
/// @function ChannelService_FINISH_CHANNEL() Calls the finish channel script and sets the variables on the
///		channel service accordingly.
#endregion


// TODO: Decide which variables should be handed to this script
script_execute(scr_finishChannel);

num_currentTimer = 0;
bool_channelling = false;
