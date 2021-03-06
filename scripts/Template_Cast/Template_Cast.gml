#region Doc
/// @function Template_Cast(id_caster, num_targetX, num_targetY) A template for a cast script for a one-shot
///		ability. Other cast scripts should return the instance id of the newly created ability.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target of the ability.
/// @param   {number}  num_targetY       The y target of the ability.
/// @returns {id}                        The instance id of the ability that was created
#endregion

var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];