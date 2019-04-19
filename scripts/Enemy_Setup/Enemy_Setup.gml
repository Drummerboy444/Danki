#region Doc
/// @function Enemy_Setup(bool_hasOneShotService, bool_hasChannelService, ds_Stats_baseStats, scr_plan, scr_deathScript, num_aggroRange)
/// @param {boolean} bool_hasOneShotService Whether the enemy should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the enemy should have a channel service.
/// @param {ds_Stats} ds_Stats_baseStats The immutable base stats of the enemy.
/// @param {script} scr_plan The plan script for the enemy.
/// @param {script} scr_deathScript The script to run on death.
/// @param {number} num_aggroRange The aggro range of the enemy.
#endregion
var _bool_hasOneShotService = argument[0];
var _bool_hasChannelService = argument[1];
var _ds_Stats_baseStats = argument[2];
var _scr_plan = argument[3];
var _scr_deathScript = argument[4];
var _num_aggroRange = argument[4];


NPC_Setup(_bool_hasOneShotService, _bool_hasChannelService, _ds_Stats_baseStats, _scr_plan, _scr_deathScript, _num_aggroRange);
