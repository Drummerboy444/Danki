/// @function AbilityCaster_CREATE_EFFECT_DATA(enum_effect, arr_arguments, num_steps, id_caster)
///		Creates a new effect data array from the given values and returns it.
/// @param {enum} enum_effect The effect type.
/// @param {array} arr_arguments The array of arguments.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @returns {array} The new effect data.
var _enum_effect = argument[0];
var _arr_arguments = argument[1];
var _num_steps = argument[2];
var _id_caster = argument[3];


return [_enum_effect, _arr_arguments, _num_steps, _id_caster];
