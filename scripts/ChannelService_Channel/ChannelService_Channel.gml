#region Doc
/// @function ChannelService_Channel(id_channelService, enum_ability, num_targetX, num_targetY, ?bool_overrideGlobalCooldown)
///		This script should be called by an ability caster when they wish to channel or continue channelling an
///		ability. If the ability caster was not channelling before, then this script sets up the relevant
///		variables on that casters channel service, otherwise this script calls through to the correct channel
///		script depending on what state of the channel we're in. This script returns false until the channel
///		has finished, then it returns true.
/// @param   {id}      id_channelService            The id of the channel service to use.
/// @param   {enum}	   enum_ability                 The ability to channel.
/// @param   {number}  num_targetX                  The x target of the channel.
/// @param   {number}  num_targetY                  The y target of the channel.
/// @param   {boolean} ?bool_overrideGlobalCooldown An optional parameter that, if true, will begin the
///                                                 channel even if the global cooldown is on. Defaults
///                                                 to false.
/// @returns {boolean} True if the channel has finished, otherwise false.
#endregion
var _id_channelService = argument[0];
var _enum_ability = argument[1];
var _num_targetX = argument[2];
var _num_targetY = argument[3];
var _bool_overrideGlobalCooldown = argument_count > 4 ? argument[4]: false;

var _ds_Channel_channel = AbilityManager_GetAbilityFromEnum(_enum_ability);

if (!Utility_InstanceOfObject(_id_channelService, oChannelService)) {
	ErrorHandler_Error("Cannot channel ability as _id_channelService was not an instance of oChannelService");
	return true;
}

with(_id_channelService){
	
	num_targetX = _num_targetX;
	num_targetY = _num_targetY;
	
	if (!ds_Channel_InstanceOf(_ds_Channel_channel)) {
		ErrorHandler_Error("Cannot channel input Channel type invalid");
		return false;
	}

	bool_attemptingToChannel = true;
	
	if (bool_readyToChannel) {
		if (AbilityCaster_IsOnGlobalCooldown(id_owner) && !_bool_overrideGlobalCooldown) {
			return false;
		}
		ChannelService_START_CHANNEL(_enum_ability);
		
		AbilityCaster_applyOnCastEffects(id_owner);
		
		if (!_bool_overrideGlobalCooldown) {
			AbilityCaster_StartGlobalCooldown(id_owner);
		}
		return false;
	}
	
	num_currentTimer--;

	if (num_currentTimer <= 0) {
		if (bool_channelling) {
			ChannelService_FINISH_CHANNEL();
		}
		return true; // This goes outside the other if statement so that we continue to return true
		             // even after the channel has finished
	}

	ChannelService_CONTINUE_CHANNEL();

	return false;
	
}
