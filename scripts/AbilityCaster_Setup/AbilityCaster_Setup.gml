#region Doc
/// @function AbilityCaster_Setup(bool_hasOneShotService, bool_hasChannelService, map_baseStats)
/// @param {boolean} bool_hasOneShotService Whether the caster should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the caster should have a channel service.
/// @param {map} map_baseStats The immutable base stats of the caster: map from stats to their values.
#endregion
var _bool_hasOneShotService = argument[0];
var _bool_hasChannelService = argument[1];
var _map_baseStats = argument[2];


Collidable_Setup();

id_oneShotService = _bool_hasOneShotService ? Service_Instantiate(id, oOneShotService) : noone;
id_channelService = _bool_hasChannelService ? Service_Instantiate(id, oChannelService) : noone;

ds_map_copy(map_baseStats, _map_baseStats);
ds_map_copy(map_stats, map_baseStats); // TODO: hook into whatever system we'll use for setting stats
                                       //       due to things like armor, passive effects etc.
