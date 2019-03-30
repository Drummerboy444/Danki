#region Doc
/// @function NPC_Setup(bool_hasOneShotService, bool_hasChannelService, map_baseStats, scr_plan, num_agroRange)
/// @param {boolean} bool_hasOneShotService Whether the NPC should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the NPC should have a channel service.
/// @param {map} map_baseStats The immutable base stats of the NPC: map from stats to their values.
/// @param {script} scr_plan The plan script for the NPC.
/// @param {number} num_agroRange The agro range of the NPC.
#endregion
var _bool_hasOneShotService = argument[0];
var _bool_hasChannelService = argument[1];
var _map_baseStats = argument[2];
var _scr_plan = argument[3];
var _num_agroRange = argument[4];


Mortal_Setup(_bool_hasOneShotService, _bool_hasChannelService, _map_baseStats, _scr_plan, _num_agroRange);