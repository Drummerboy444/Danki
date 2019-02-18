#region Doc
/// @function AbilityManager_GetChannelLength(enum_ability) Returns the channel length for a
///		CHANNEL ability, or noone for any other type of ability
/// @param {enum} enum_ability
/// @returns {number} The length of the channel
#endregion
var _enum_ability = argument[0];

// Return noone if not a CHANNEL ability
if(AbilityManager_GetAbilityType(_enum_ability) != Enum_AbilityTypes.CHANNEL){
	return noone;
}

return oAbilityManager.map_channelToLength[? _enum_ability];
