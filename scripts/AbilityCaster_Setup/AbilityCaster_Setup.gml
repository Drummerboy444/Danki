#region Doc
/// @function AbilityCaster_Setup(map_stats, bool_hasOneShotService, bool_hasChannelService)
/// @param {map} map_stats Contains the ability caster's stats.
/// @param {boolean} bool_hasOneShotService Whether the caster should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the caster should have a channel service.
#endregion
var _map_baseStats = argument[0];
var _bool_hasOneShotService = argument[1];
var _bool_hasChannelService = argument[2];

Collidable_Setup();

map_stats[? Enum_Stats.SPEED] = _map_baseStats[? Enum_Stats.SPEED];

id_oneShotService = _bool_hasOneShotService ? Service_Instantiate(id, oOneShotService) : noone;
id_channelService = _bool_hasChannelService ? Service_Instantiate(id, oChannelService) : noone;
