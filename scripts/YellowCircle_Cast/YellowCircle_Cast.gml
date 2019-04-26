#region Doc
/// @function YellowCircle_Cast(id_caster, num_targetX, num_targetY) Creates an instance of oYellowCircle
///		at the given target.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target of the ability.
/// @param   {number}  num_targetY       The y target of the ability.
/// @returns {id}                        The instance id of the oYellowCircle that was created.
#endregion
var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];

var _id_nearestEnemy = instance_nearest(_num_targetX, _num_targetY, oEnemy);

if(_id_nearestEnemy == noone) return;

if(point_distance(_num_targetX, _num_targetY, _id_nearestEnemy.x, _id_nearestEnemy.y) < 8){
	DamageManager_ApplyDamage(id_owner, _id_nearestEnemy, DamageData_New(Enum_DamageTypes.BLUNT, 75))
}

return instance_create_layer(_num_targetX, _num_targetY, LAYERS_ABILITIES, oYellowCircle);
