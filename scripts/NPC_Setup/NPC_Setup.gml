#region Doc
/// @function NPC_Setup(num_maxHealth, bool_hasOneShotService, bool_hasChannelService)
/// @param {number} num_maxHealth Max Health
/// @param {boolean} bool_hasOneShotService Whether the NPC should have a one shot service.
/// @param {boolean} bool_hasChannelService Whether the NPC should have a channel service.
#endregion
var _num_maxHealth = argument[0];
var _bool_hasOneShotService = argument[1];
var _bool_hasChannelService = argument[2];


Mortal_Setup(_num_maxHealth, _bool_hasOneShotService, _bool_hasChannelService);