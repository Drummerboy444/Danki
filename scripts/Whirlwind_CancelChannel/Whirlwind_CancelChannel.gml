#region Doc
/// @function Whirlwind_CancelChannel(id_caster, num_targetX, num_targetY, id_whirlwind) Whirlwind cancel channel script.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target.
/// @param   {number}  num_targetY       The y target.
/// @param	 {id}	   id_whirlwind		 The id of the whirlwind object to be used by this script, generated in the StartChannel script.
#endregion

var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];
var _id_whirlwind = argument[3];

instance_destroy(_id_whirlwind);