/// @function ds_Ability_New(string_name, obj_object, enum_type, num_range, bool_offensive) Creates a new ds_Ability.
/// @param {string} string_name The effect type.
/// @param {obj} obj_object The array of arguments.
/// @param {enum} enum_type The number of steps.
/// @param {num} num_range The instance id of the caster.
/// @param {bool} bool_offensive The instance id of the caster.
/// @returns {Ability} The new ability.
var _string_name = argument[0];
var _obj_object = argument[1];
var _enum_type = argument[2];
var _num_range = argument[3];
var _bool_offensive = argument[4];

var _ds_Ability_ability = ds_map_create();

_ds_Ability_ability[? "name"] = _string_name;
_ds_Ability_ability[? "object"] = _obj_object;
_ds_Ability_ability[? "type"] = _enum_type;
_ds_Ability_ability[? "range"] = _num_range;
_ds_Ability_ability[? "offensive"] = _bool_offensive;

return _ds_Ability_ability;
