#region Doc
/// @function BlueBeam_FinishChannel(id_caster, num_targetX, num_targetY, id_blueBeam) Blue beam finish channel script.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target of the beam.
/// @param   {number}  num_targetY       The y target of the beam.
/// @param	 {id}	   id_blueBeam		 The id of the blueBeam object to be used by this script, generated in the StartChannel script.
#endregion

var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];
var _id_blueBeam = argument[3];

instance_destroy(_id_blueBeam);

instance_create_layer(_num_targetX, _num_targetY, LAYERS_ABILITIES, oBlueBeamExplosion);

var _id_nearestEnemy = instance_nearest(_num_targetX, _num_targetY, oEnemy);

if(_id_nearestEnemy == noone) return;

if(point_distance(_num_targetX, _num_targetY, _id_nearestEnemy.x, _id_nearestEnemy.y) < BLUE_BEAM_STUN_RADIUS){
	AbilityCaster_ApplyEffect(
		_id_nearestEnemy,
		ds_EffectContext_New(
			ds_StunEffectData_New(
				BLUE_BEAM_STUN_DURATION,
				_id_caster
			),
			ds_AbilityCasterSnapshot_FromId(_id_caster)
		)
	);
}