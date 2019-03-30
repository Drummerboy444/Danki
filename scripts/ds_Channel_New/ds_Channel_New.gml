/// @function ds_Channel_New(string_name, obj_ability, num_range, bool_offensive, scr_startChannel, scr_continueChannel,
///		scr_cancelChannel, scr_finishChannel num_duration) Creates a new ds_Channel.
/// @param {string} string_name The name of the ability.
/// @param {obj} obj_ability The oAbility decendant object for the ability.
/// @param {num} num_range The range.
/// @param {bool} bool_offensive True if ability is offensive.
/// @param {script} scr_startChannel The start channel script.
/// @param {script} scr_continueChannel The continue channel script.
/// @param {script} scr_cancelChannel The cancel channel script.
/// @param {script} scr_finishChannel The finish channel script.
/// @param {num} num_duration The duration of the ability.
/// @returns {ds_Channel} The new channel.

var _string_name = argument[0];
var _obj_ability = argument[1];
var _num_range = argument[2];
var _bool_offensive = argument[3];
var _scr_startChannel = argument[4];
var _scr_continueChannel = argument[5];
var _scr_cancelChannel = argument[6];
var _scr_finishChannel = argument[7];
var _num_duration = argument[8];


var _ds_Channel_channel = ds_Ability_NEW(
	_string_name,
	_obj_ability,
	Enum_AbilityTypes.CHANNEL,
	_num_range,
	_bool_offensive);
	
_ds_Channel_channel[? "startChannelScript"] = _scr_startChannel;
_ds_Channel_channel[? "continueChannelScript"] = _scr_continueChannel;
_ds_Channel_channel[? "cancelChannelScript"] = _scr_cancelChannel;
_ds_Channel_channel[? "finishChannelScript"] = _scr_finishChannel;
_ds_Channel_channel[? "duration"] = _num_duration;

return _ds_Channel_channel;