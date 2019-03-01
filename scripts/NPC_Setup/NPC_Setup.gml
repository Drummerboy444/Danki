#region Doc
/// @function NPC_Setup(bool_hasOneShotService, bool_hasChannelService, map_baseStats)
/// @param {boolean} bool_hasOneShotService Whether the NPC should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the NPC should have a channel service.
/// @param {map} map_baseStats The immutable base stats of the NPC: map from stats to their values.
#endregion
var _bool_hasOneShotService = argument[0];
var _bool_hasChannelService = argument[1];
var _map_baseStats = argument[2];


Mortal_Setup(_bool_hasOneShotService, _bool_hasChannelService, _map_baseStats);