#region Doc
/// @function Friendly_Setup(num_maxHealth, bool_hasOneShotService, bool_hasChannelService, map_baseStats)
/// @param {number} num_maxHealth Max Health
/// @param {boolean} bool_hasOneShotService Whether the friendly object should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the friendly object should have a channel service.
/// @param {map} map_baseStats The immutable base stats of the friendly: map from stats to their values.
#endregion
var _num_maxHealth = argument[0];
var _bool_hasOneShotService = argument[1];
var _bool_hasChannelService = argument[2];
var _map_baseStats = argument[3];


NPC_Setup(_num_maxHealth, _bool_hasOneShotService, _bool_hasChannelService, _map_baseStats);