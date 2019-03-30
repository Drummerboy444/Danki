/// @function ds_Ability_New(string_name, obj_ability, enum_type, num_range, bool_offensive) Creates a new ds_Ability.
/// @param {string} string_name The name of the ability.
/// @param {obj} obj_ability The oAbility decendant object for the ability.
/// @param {enum} enum_type The type (channel/oneshot).
/// @param {num} num_range The range.
/// @param {bool} bool_offensive True if ability is offensive.
/// @returns {Ability} The new ability.
var _string_name = argument[0];
var _obj_ability = argument[1];
var _enum_type = argument[2];
var _num_range = argument[3];
var _bool_offensive = argument[4];

var _ds_Ability_ability = ds_map_create();

_ds_Ability_ability[? "name"] = _string_name;
_ds_Ability_ability[? "ability"] = _obj_ability;
_ds_Ability_ability[? "type"] = _enum_type;
_ds_Ability_ability[? "range"] = _num_range;
_ds_Ability_ability[? "offensive"] = _bool_offensive;

return _ds_Ability_ability;
