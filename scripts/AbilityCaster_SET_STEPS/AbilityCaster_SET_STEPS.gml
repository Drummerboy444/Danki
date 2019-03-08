/// @function AbilityCaster_SET_STEPS(arr_effectData, num_steps) Creates a new effect data array, with the
///		steps value set to the given steps, and returns it.
/// @param {array} arr_effectData The effect data to update.
/// @param {number} num_steps The new number of steps.
/// @returns {array} The new effect data with the updated number of steps.
var _arr_effectData = argument[0];
var _num_steps = argument[1];


var _enum_effect = AbilityCaster_GetEffect(_arr_effectData);
var _arr_arguments = AbilityCaster_GetArguments(_arr_effectData);
var _id_caster = AbilityCaster_GetCasterId(_arr_effectData);

return AbilityCaster_CREATE_EFFECT_DATA(_enum_effect, _arr_arguments, _num_steps, _id_caster)
