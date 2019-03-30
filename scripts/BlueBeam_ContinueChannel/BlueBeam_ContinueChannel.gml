#region Doc
/// @function BlueBeam_ContinueChannel(id_caster, num_targetX, num_targetY, id_ability) A template for a ContinueChannel script for a channel ability.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target of the ability.
/// @param   {number}  num_targetY       The y target of the ability.
/// @param	 {id}	   id_ability		 The id of the ability object to be used by this script, generated in the StartChannel script.
#endregion

var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];
var _id_ability = argument[3];

_id_ability.x = _id_caster.x;
_id_ability.y = _id_caster.y;
_id_ability.num_targetX = _num_targetX;
_id_ability.num_targetY = _num_targetY;