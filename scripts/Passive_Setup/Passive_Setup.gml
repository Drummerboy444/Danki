#region Doc
/// @function Passive_Setup(bool_hasOneShotService, bool_hasChannelService)
/// @param {boolean} bool_hasOneShotService Whether the passive object should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the passive object should have a channel service.
#endregion
var _bool_hasOneShotService = argument[0];
var _bool_hasChannelService = argument[1];


AbilityCaster_Setup(_bool_hasOneShotService, _bool_hasChannelService);
