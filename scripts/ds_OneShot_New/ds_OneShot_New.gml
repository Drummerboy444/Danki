/// @function ds_OneShot_New(string_name, obj_object, num_range, bool_offensive, script_castScript) Creates a new ds_OneShot.
/// @param {string} string_name The effect type.
/// @param {obj} obj_object The array of arguments.
/// @param {num} num_range The instance id of the caster.
/// @param {bool} bool_offensive The instance id of the caster.
/// @param {script} script_castScript The cast script.
/// @returns {ds_OneShot} The new OneShot.
var _string_name = argument[0];
var _obj_object = argument[1];
var _num_range = argument[2];
var _bool_offensive = argument[3];
var _script_castScript = argument[4];


var _ds_OneShot_oneShot = ds_Ability_NEW(
	_string_name,
	_obj_object,
	Enum_AbilityTypes.ONE_SHOT,
	_num_range,
	_bool_offensive);
	
_ds_OneShot_oneShot[? "castScript"] = _script_castScript;

return _ds_OneShot_oneShot;