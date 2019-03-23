/// @function Channel_New(string_name, obj_object, num_range, bool_offensive, ChannelScripts_scripts, num_duration) Creates a new Channel.
/// @param {string} string_name The effect type.
/// @param {obj} obj_object The array of arguments.
/// @param {num} num_range The instance id of the caster.
/// @param {bool} bool_offensive The instance id of the caster.
/// @param {ChannelScripts} ChannelScripts_scripts The ChannelScripts structure for the ability.
/// @param {num} num_duration The duration of the ability, defaults to 0 if not set.
/// @returns {Channel} The new channel.
var _string_name = argument[0];
var _obj_object = argument[1];
var _num_range = argument[2];
var _bool_offensive = argument[3];
var _ChannelScripts_scripts = argument[4];
var _num_duration = argument[5];


return Ability_NEW(
	_string_name,
	_obj_object,
	Enum_AbilityTypes.CHANNEL,
	_num_range,
	_bool_offensive,
	_ChannelScripts_scripts,
	_num_duration);