#region Doc
/// @function ChannelService_CANCEL_CHANNEL() Calls the cancel channel script.
#endregion


// TODO: Decide which variables should be handed to this script
script_execute(scr_cancelChannel);

num_currentTimer = 0;
bool_channelling = false;
bool_hasFinished = true;
