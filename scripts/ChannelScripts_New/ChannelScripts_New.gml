/// @function ChannelScripts_new(scr_startChannel, scr_continueChannel, scr_cancelChannel, scr_finishChannel) Creates a new ChannelScripts type.
/// @param {scr} scr_startChannel Script called at start of channel
/// @param {scr} scr_continueChannel Script called every step during channel
/// @param {scr} scr_cancelChannel The Script called if the channel is stopped before finishing
/// @param {scr} scr_finishChannel The script called at the end of the channel if it isn't cancelled
/// @returns {ChannelScripts} The ChannelScripts variable.
var _scr_startChannel = argument[0];
var _scr_continueChannel = argument[1];
var _scr_cancelChannel = argument[2];
var _scr_finishChannel = argument[3];

return [_scr_startChannel, _scr_continueChannel, _scr_cancelChannel, _scr_finishChannel];
