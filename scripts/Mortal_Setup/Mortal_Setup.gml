#region Doc
/// @function Mortal_Setup(map_baseStats, bool_hasOneShotService, bool_hasChannelService)
/// @param {map} map_stats The base stats of the mortal
/// @param {boolean} bool_hasOneShotService Whether the mortal object should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the mortal object should have a channel service.
#endregion
var _map_baseStats = argument[0];
var _bool_hasOneShotService = argument[1];
var _bool_hasChannelService = argument[2];


AbilityCaster_Setup(_map_baseStats, _bool_hasOneShotService, _bool_hasChannelService);

map_stats[? Enum_Stats.HEALTH] = _map_baseStats[? Enum_Stats.HEALTH];
num_currentHealth = map_stats[? Enum_Stats.HEALTH];