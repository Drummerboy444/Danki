#region Doc
/// @function Whirlwind_StartChannel(id_caster, num_targetX, num_targetY) Blue beam start channel script.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target of the beam.
/// @param   {number}  num_targetY       The y target of the beam.
/// @returns {id}	   id_whirlwind		 The id of the blue beam object generated in this script.
#endregion

var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];

var _id_whirlwind = Ability_Create(
	_id_caster.x,
	_id_caster.y,
	oWhirlwind,
	ds_AbilityCasterSnapshot_FromId(_id_caster),
	_id_caster.obj_opponent
);

var emitter = audio_emitter_create();
audio_play_sound_on(emitter, sound0, false, 1);

return _id_whirlwind;