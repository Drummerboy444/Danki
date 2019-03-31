#region Doc
/// @function ChannelService_START_CHANNEL(enum_ability) Sets up the relevant
///		variables of the channel service depending on the ability to channel.
/// @param {enum}   enum_ability      The ability to begin channelling.
#endregion
var _enum_ability = argument[0];

var _ds_Channel_channel = AbilityManager_GetAbilityFromEnum(_enum_ability);

scr_startChannel = ds_Channel_GetStartChannelScript(_ds_Channel_channel);
scr_continueChannel = ds_Channel_GetContinueChannelScript(_ds_Channel_channel);
scr_cancelChannel = ds_Channel_GetCancelChannelScript(_ds_Channel_channel);
scr_finishChannel = ds_Channel_GetFinishChannelScript(_ds_Channel_channel);

num_currentTimer = ds_Channel_GetDuration(_ds_Channel_channel);
bool_channelling = true;
bool_readyToChannel = false;

id_ability = script_execute(scr_startChannel, id_owner, num_targetX, num_targetY);

if (!id_ability) {
	ErrorHandler_Error("Start channel script did not return a value");
} else if (!Utility_ObjectIsAncestorOfInstance(oChannel, id_ability)) {
	ErrorHandler_Error("Start channel script did not return an id of a channel object");
}
