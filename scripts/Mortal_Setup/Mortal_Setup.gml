#region Doc
/// @function Mortal_Setup(num_maxHealth, bool_hasOneShotService, bool_hasChannelService)
/// @param {number} num_maxHealth Max Health
/// @param {boolean} bool_hasOneShotService Whether the mortal object should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the mortal object should have a channel service.
#endregion
var _num_maxHealth = argument[0];
var _bool_hasOneShotService = argument[1];
var _bool_hasChannelService = argument[2];


AbilityCaster_Setup(_bool_hasOneShotService, _bool_hasChannelService);

num_maxHealth = _num_maxHealth;
num_currentHealth = _num_maxHealth;