#region Doc
/// @function ChannelService_START_CHANNEL(enum_ability, num_targetX, num_targetY) Sets up the relevant
///		variables of the channel service depending on the ability to channel.
/// @param {enum}   enum_ability      The ability to begin channelling.
/// @param {number} num_targetX       The x target of the channel.
/// @param {number} num_targetY       The y target of the channel.
#endregion
var _enum_ability = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];

scr_startChannel = AbilityManager_GetStartChannelScript(_enum_ability);
scr_channel = AbilityManager_GetChannelScript(_enum_ability);
scr_cancelChannel = AbilityManager_GetCancelChannelScript(_enum_ability);
scr_finishChannel = AbilityManager_GetFinishChannelScript(_enum_ability);

num_currentTimer = AbilityManager_GetChannelLength(_enum_ability);
bool_channelling = true;
bool_readyToChannel = false;

id_ability = script_execute(scr_startChannel, id_owner, _num_targetX, _num_targetY);

if (!id_ability) {
	ErrorHandler_Error("Start channel script did not return a value");
} else if (!Utility_ObjectIsAncestorOfInstance(oChannel, id_ability)) {
	ErrorHandler_Error("Start channel script did not return an id of a channel object");
}
