/// @function ds_Channel_New(string_name, obj_object, num_range, bool_offensive, script_startChannel, script_continueChannel,
///		script_cancelChannel, script_finishChannel num_duration) Creates a new ds_Channel.
/// @param {string} string_name The effect type.
/// @param {obj} obj_object The array of arguments.
/// @param {num} num_range The instance id of the caster.
/// @param {bool} bool_offensive The instance id of the caster.
/// @param {script} script_startChannel The start channel script.
/// @param {script} script_continueChannel The continue channel script.
/// @param {script} script_cancelChannel The cancel channel script.
/// @param {script} script_finishChannel The finish channel script.
/// @param {num} num_duration The duration of the ability, defaults to 0 if not set.
/// @returns {ds_Channel} The new channel.
var _string_name = argument[0];
var _obj_object = argument[1];
var _num_range = argument[2];
var _bool_offensive = argument[3];
var _script_startChannel = argument[4];
var _script_continueChannel = argument[5];
var _script_cancelChannel = argument[6];
var _script_finishChannel = argument[7];
var _num_duration = argument[8];


var _ds_Channel_channel = ds_Ability_NEW(
	_string_name,
	_obj_object,
	Enum_AbilityTypes.CHANNEL,
	_num_range,
	_bool_offensive);
	
_ds_Channel_channel[? "startChannelScript"] = _script_startChannel;
_ds_Channel_channel[? "continueChannelScript"] = _script_continueChannel;
_ds_Channel_channel[? "cancelChannelScript"] = _script_cancelChannel;
_ds_Channel_channel[? "finishChannelScript"] = _script_finishChannel;
_ds_Channel_channel[? "duration"] = _num_duration;

return _ds_Channel_channel;