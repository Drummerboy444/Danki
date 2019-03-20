#region Doc
/// @function YellowCircle_Cast(id_caster, num_targetX, num_targetY) Creates an instance of oYellowCircle
///		at the given target.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target of the ability.
/// @param   {number}  num_targetY       The y target of the ability.
#endregion
var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];


return instance_create_layer(_num_targetX, _num_targetY, "Abilities", oYellowCircle);