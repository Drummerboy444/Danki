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

var _id_nearestEnemy = instance_nearest(_num_targetX, _num_targetY, oEnemy);

if(_id_nearestEnemy == noone) return;

if(point_distance(_num_targetX, _num_targetY, _id_nearestEnemy.x, _id_nearestEnemy.y) < 40){
	AbilityCaster_AddEffectDataToBuffer(
		_id_nearestEnemy,
		SlowEffectData_New(20, _id_caster, 0.5)
	);
	DamageManager_ApplyDamage(id_owner, _id_nearestEnemy, DamageData_New(Enum_DamageTypes.ICE, 1))
}