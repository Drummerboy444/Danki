#region Doc
/// @function ChannelService_Channel(id_channelService, enum_ability, num_targetX, num_targetY)
///		This script should be called by an ability caster when they wish to channel or continue channelling an
///		ability. If the ability caster was not channelling before, then this script sets up the relevant
///		variables on that casters channel service, otherwise this script calls through to the correct channel
///		script depending on what state of the channel we're in. This script returns false until the channel
///		has finished, then it returns true.
/// @param   {id}      id_channelService The id of the channel service to use.
/// @param   {enum}    enum_ability      The ability to channel.
/// @param   {number}  num_targetX       The x target of the channel.
/// @param   {number}  num_targetY       The y target of the channel.
/// @returns {boolean} True if the channel has finished, otherwise false.
#endregion
var _id_channelService = argument[0];
var _enum_ability = argument[1];
var _num_targetX = argument[2];
var _num_targetY = argument[3];

with(_id_channelService){
	
	var _enum_abilityType = AbilityManager_GetAbilityType(_enum_ability);
	if (_enum_abilityType != Enum_AbilityTypes.CHANNEL) {
		ErrorHandler_Error("Cannot channel an ability whose type is not CHANNEL");
		return false;
	}

	_id_channeidlService.bool_attemptingToChannel = true;

	if (bool_readyToChannel) {
		ChannelService_START_CHANNEL(_enum_ability, _num_targetX, _num_targetY);
		return false;
	}
	
	num_currentTimer--;

	if (num_currentTimer <= 0) {
		if (bool_channelling) {
			ChannelService_FINISH_CHANNEL(_num_targetX, _num_targetY);
		}
		return true; // This goes outside the other if statement so that we continue to return true
		             // even after the channel has finished
	}

	ChannelService_CONTINUE_CHANNEL(_num_targetX, _num_targetY);

	return false;
	
}
