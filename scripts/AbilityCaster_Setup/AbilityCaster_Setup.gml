#region Doc
/// @function AbilityCaster_Setup(bool_hasOneShotService, bool_hasChannelService, ds_Stats_baseStats, scr_plan, num_aggroRange)
/// @param {boolean} bool_hasOneShotService Whether the caster should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the caster should have a channel service.
/// @param {ds_Stats} ds_Stats_baseStats The immutable base stats of the caster.
/// @param {script} scr_plan The plan script for the ability caster, this should receive a previous agenda
///                          as a param and return a new agenda.
/// @param {number} num_aggroRange The aggro range of the ability caster.
#endregion
var _bool_hasOneShotService = argument[0];
var _bool_hasChannelService = argument[1];
var _ds_Stats_baseStats = argument[2];
var _scr_plan = argument[3];
var _num_aggroRange = argument[4];


Collidable_Setup();

id_oneShotService = _bool_hasOneShotService ? Service_Instantiate(id, oOneShotService) : noone;
id_channelService = _bool_hasChannelService ? Service_Instantiate(id, oChannelService) : noone;

scr_plan = _scr_plan;

num_aggroRange = _num_aggroRange;

ds_map_copy(ds_Stats_baseStats, _ds_Stats_baseStats);
ds_map_copy(ds_Stats_stats, ds_Stats_baseStats);    // TODO: Hook into whatever system we'll use for setting stats
                                          //       due to things like armor, passive effects etc.
ds_map_copy(ds_Stats_frameStats, ds_Stats_stats);   // To give stats on the ability casters first step.
