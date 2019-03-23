#region Doc
/// @function ChannelService_START_CHANNEL(Channel_channel, num_targetX, num_targetY) Sets up the relevant
///		variables of the channel service depending on the ability to channel.
/// @param {Channel}   Channel_channel      The ability to begin channelling.
/// @param {number} num_targetX       The x target of the channel.
/// @param {number} num_targetY       The y target of the channel.
#endregion
var _Channel_channel = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];

var ChannelScripts_scripts = Channel_GetChannelScripts(_Channel_channel);

scr_startChannel = ChannelScripts_GetStartChannel(ChannelScripts_scripts);
scr_channel = ChannelScripts_GetContinueChannel(ChannelScripts_scripts);
scr_cancelChannel = ChannelScripts_GetCancelChannel(ChannelScripts_scripts);
scr_finishChannel = ChannelScripts_GetFinishChannel(ChannelScripts_scripts);

num_currentTimer = Channel_GetDuration(_Channel_channel);
bool_channelling = true;
bool_readyToChannel = false;

id_ability = script_execute(scr_startChannel, id_owner, _num_targetX, _num_targetY);

if (!id_ability) {
	ErrorHandler_Error("Start channel script did not return a value");
} else if (!Utility_ObjectIsAncestorOfInstance(oChannel, id_ability)) {
	ErrorHandler_Error("Start channel script did not return an id of a channel object");
}
