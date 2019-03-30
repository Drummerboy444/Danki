#region Doc
/// @function BlueBeam_StartChannel(id_caster, num_targetX, num_targetY) Blue beam start channel script.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target of the beam.
/// @param   {number}  num_targetY       The y target of the beam.
/// @returns {id}	   id_blueBeam		 The id of the blue beam object generated in this script.
#endregion

var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];

var id_blueBeam = instance_create_layer(_id_caster.x, _id_caster.y, "Abilities", oBlueBeam);
id_blueBeam.num_targetX = _num_targetX;
id_blueBeam.num_targetY = _num_targetY;

return id_blueBeam;