/// @function OneShot_New(string_name, obj_object, num_range, bool_offensive, OneShotScripts_scripts) Creates a new OneShot.
/// @param {string} string_name The effect type.
/// @param {obj} obj_object The array of arguments.
/// @param {num} num_range The instance id of the caster.
/// @param {bool} bool_offensive The instance id of the caster.
/// @param {OneShotScripts} OneShotScripts_scripts The OneShotScripts_scripts structure for the ability.
/// @returns {OneShot} The new OneShot.
var _string_name = argument[0];
var _obj_object = argument[1];
var _num_range = argument[2];
var _bool_offensive = argument[3];
var _OneShotScripts_scripts = argument[4];


return Ability_NEW(
	_string_name,
	_obj_object,
	Enum_AbilityTypes.CHANNEL,
	_num_range,
	_bool_offensive,
	_OneShotScripts_scripts,
	0);