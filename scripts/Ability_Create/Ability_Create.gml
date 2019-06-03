/// @function Ability_Create(num_x, num_y, obj_ability, ds_AbilityCasterSnapshot_snapshot) Instantiates an
///		ability, setting the requrired variables on it.
/// @param {number} num_x The x position to create the ability at.
/// @param {number} num_y The y position to create the ability at.
/// @param {object} obj_ability The ability to create.
/// @param {ds_AbilityCasterSnapshot} ds_AbilityCasterSnapshot_snapshot The snapshot to add to the ability.
/// @returns {id} The id of the newly created ability.
var _num_x = argument[0];
var _num_y = argument[1];
var _obj_ability = argument[2];
var _ds_AbilityCasterSnapshot_snapshot = argument[3];


var _id_ability = instance_create_layer(_num_x, _num_y, LAYERS_ABILITIES, _obj_ability);
_id_ability.ds_AbilityCasterSnapshot_snapshot = _ds_AbilityCasterSnapshot_snapshot

return _id_ability;
