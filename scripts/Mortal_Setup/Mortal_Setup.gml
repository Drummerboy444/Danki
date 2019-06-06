#region Doc
/// @function Mortal_Setup
///		(bool_hasOneShotService, bool_hasChannelService, ds_Stats_baseStats, scr_plan, scr_deathScript, num_aggroRange, obj_opponent)
/// @param {boolean} bool_hasOneShotService Whether the mortal object should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the mortal object should have a channel service.
/// @param {ds_Stats} ds_Stats_baseStats The immutable base stats of the mortal.
/// @param {script} scr_plan The plan script for the mortal.
/// @param {script} scr_deathScript The script to run on death.
/// @param {number} num_aggroRange The aggro range of the mortal.
/// @param {object} obj_opponent The object the ability caster targets with offensive abilities. Must inherit from oAbilityCaster.
#endregion
var _bool_hasOneShotService = argument[0];
var _bool_hasChannelService = argument[1];
var _ds_Stats_baseStats = argument[2];
var _scr_plan = argument[3];
var _scr_deathScript = argument[4];
var _num_aggroRange = argument[5];
var _obj_opponent = argument[6];


AbilityCaster_Setup(_bool_hasOneShotService, _bool_hasChannelService, _ds_Stats_baseStats, _scr_plan, _num_aggroRange, _obj_opponent);

var _num_health = ds_Stats_Get(ds_Stats_frameStats, Enum_Stats.HEALTH);
if (_num_health <= 0) {
	var _str_healthAsString = string(_num_health);
	ErrorHandler_Error("Attempting to instantiate an oMortal with health <= 0, value was: " + _str_healthAsString);
}
num_currentHealth = _num_health;

scr_deathScript = _scr_deathScript;