#region Doc
/// @function Passive_Setup(bool_hasOneShotService, bool_hasChannelService, ds_Stats_baseStats, scr_plan, num_aggroRange)
/// @param {boolean} bool_hasOneShotService Whether the passive object should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the passive object should have a channel service.
/// @param {ds_Stats} ds_Stats_baseStats The immutable base stats of the passive.
/// @param {script} scr_plan The plan script for the passive.
/// @param {number} num_aggroRange The aggro range of the passive.
#endregion
var _bool_hasOneShotService = argument[0];
var _bool_hasChannelService = argument[1];
var _ds_Stats_baseStats = argument[2];
var _scr_plan = argument[3];
var _num_aggroRange = argument[4];


AbilityCaster_Setup(_bool_hasOneShotService, _bool_hasChannelService, _ds_Stats_baseStats, _scr_plan, _num_aggroRange);

ds_Stats_Destroy(_ds_Stats_baseStats);
