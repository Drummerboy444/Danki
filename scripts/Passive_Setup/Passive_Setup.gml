#region Doc
/// @function Passive_Setup(bool_hasOneShotService, bool_hasChannelService, map_baseStats, scr_plan, num_aggroRange)
/// @param {boolean} bool_hasOneShotService Whether the passive object should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the passive object should have a channel service.
/// @param {map} map_baseStats The immutable base stats of the passive: map from stats to their values.
/// @param {script} scr_plan The plan script for the passive.
/// @param {number} num_aggroRange The aggro range of the passive.
#endregion
var _bool_hasOneShotService = argument[0];
var _bool_hasChannelService = argument[1];
var _map_baseStats = argument[2];
var _scr_plan = argument[3];
var _num_aggroRange = argument[4];


AbilityCaster_Setup(_bool_hasOneShotService, _bool_hasChannelService, _map_baseStats, _scr_plan, _num_aggroRange);

ds_map_destroy(_map_baseStats);
