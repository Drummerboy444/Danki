#region Doc
/// @function BlueBeam_ContinueChannel(id_caster, num_targetX, num_targetY, id_blueBeam) Blue beam continue channel script.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target of the beam.
/// @param   {number}  num_targetY       The y target of the beam.
/// @param	 {id}	   id_blueBeam		 The id of the blue beam object to be used by this script, generated in the StartChannel script.
#endregion

var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];
var _id_blueBeam = argument[3];

_id_blueBeam.x = _id_caster.x;
_id_blueBeam.y = _id_caster.y;
_id_blueBeam.num_targetX = _num_targetX;
_id_blueBeam.num_targetY = _num_targetY;

var _obj_hostileType = AbilityCaster_GetHostileType(_id_caster);
var _id_nearestHostile = instance_nearest(_num_targetX, _num_targetY, _obj_hostileType);

if(_id_nearestHostile == noone) return;

if(position_meeting(_num_targetX, _num_targetY, _id_nearestHostile)){
	AbilityCaster_AddEffectDataToBuffer(
		_id_nearestHostile,
		SlowEffectData_New(BLUE_BEAM_SLOW_DURATION, _id_caster, BLUE_BEAM_SLOW_MULTIPLIER)
	);
	DamageManager_ApplyDamage(
		_id_caster,
		_id_nearestHostile,
		DamageData_New(Enum_DamageTypes.ICE, BLUE_BEAM_STEP_DAMAGE)
	)
}