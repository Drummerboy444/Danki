#region Doc
/// @function AbilityCaster_Setup(bool_hasOneShotService, bool_hasChannelService)
/// @param {boolean} bool_hasOneShotService Whether the caster should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the caster should have a channel service.
#endregion
var _bool_hasOneShotService = argument[0];
var _bool_hasChannelService = argument[1];


Collidable_Setup();

id_oneShotService = _bool_hasOneShotService ? Service_Instantiate(id, oOneShotService) : noone;
id_channelService = _bool_hasChannelService ? Service_Instantiate(id, oChannelService) : noone;
