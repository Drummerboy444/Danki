/// @function Ability_New(string_name, obj_object, enum_type, num_range, bool_offensive, AbilityScripts_scripts, num_duration) Creates a new Ability.
/// @param {string} string_name The effect type.
/// @param {obj} obj_object The array of arguments.
/// @param {enum} enum_type The number of steps.
/// @param {num} num_range The instance id of the caster.
/// @param {bool} bool_offensive The instance id of the caster.
/// @param {AbilityScripts} AbilityScripts_scripts The ChannelScripts/OneShotScripts structure for the ability.
/// @param {num} num_duration? The duration of the ability, defaults to 0 if not set.
/// @returns {Ability} The new ability.
var _string_name = argument[0];
var _obj_object = argument[1];
var _enum_type = argument[2];
var _num_range = argument[3];
var _bool_offensive = argument[4];
var _AbilityScripts_scripts = argument[5];
var _num_duration = argument[6];


return [
	_string_name,
	_obj_object,
	_enum_type,
	_num_range,
	_bool_offensive,
	_AbilityScripts_scripts,
	_num_duration
];
