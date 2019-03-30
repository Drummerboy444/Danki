#region Doc
/// @function BlueBeam_StartChannel(id_caster, num_targetX, num_targetY) A template for a StartChannel script for a channel ability.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target of the ability.
/// @param   {number}  num_targetY       The y target of the ability.
/// @returns {id}	   id_ability		 The id of the ability object generated in this script.
#endregion

var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];

// Note: we obviously won't want to return a generic abilit like this.
var ability = instance_create_layer(_id_caster.x, _id_caster.y, "Instances", oBlueBeam);
ability.num_targetX = _num_targetX;
ability.num_targetY = _num_targetY;

return ability;