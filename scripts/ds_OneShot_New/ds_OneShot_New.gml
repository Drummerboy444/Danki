/// @function ds_OneShot_New(string_name, obj_ability, num_range, bool_offensive, scr_castScript) Creates a new ds_OneShot.
/// @param {string} string_name The name of the ability.
/// @param {obj} obj_ability The oAbility decendant object for the ability.
/// @param {num} num_range The range.
/// @param {bool} bool_offensive True if ability is offensive.
/// @param {script} scr_castScript The cast script.
/// @returns {ds_OneShot} The new OneShot.
var _string_name = argument[0];
var _obj_ability = argument[1];
var _num_range = argument[2];
var _bool_offensive = argument[3];
var _scr_castScript = argument[4];

var _ds_OneShot_oneShot = ds_Ability_NEW(
	_string_name,
	_obj_ability,
	Enum_AbilityTypes.ONE_SHOT,
	_num_range,
	_bool_offensive);
	
_ds_OneShot_oneShot[? DS_ONE_SHOT_CAST_SCRIPT] = _scr_castScript;

return _ds_OneShot_oneShot;