#region Doc
/// @function Mortal_Setup(bool_hasOneShotService, bool_hasChannelService, map_baseStats, scr_plan, num_agroRange)
/// @param {boolean} bool_hasOneShotService Whether the mortal object should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the mortal object should have a channel service.
/// @param {map} map_baseStats The immutable base stats of the mortal: map from stats to their values.
/// @param {script} scr_plan The plan script for the mortal.
/// @param {number} num_agroRange The agro range of the mortal.
#endregion
var _bool_hasOneShotService = argument[0];
var _bool_hasChannelService = argument[1];
var _map_baseStats = argument[2];
var _scr_plan = argument[3];
var _num_agroRange = argument[4];


AbilityCaster_Setup(_bool_hasOneShotService, _bool_hasChannelService, _map_baseStats, _scr_plan, _num_agroRange);

var _num_health = StatsManager_GetHealth(id);
if (_num_health <= 0) {
	var _str_healthAsString = string(_num_health);
	ErrorHandler_Error("Attempting to instantiate an oMortal with health <= 0, value was: " + _str_healthAsString);
}
num_currentHealth = _num_health;
