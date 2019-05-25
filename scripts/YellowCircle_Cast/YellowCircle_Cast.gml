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

if(position_meeting(_num_targetX, _num_targetY, oEnemy)){
	AbilityCaster_AddEffectDataToBuffer(
		_id_nearestEnemy,
		ds_DOTEffectData_New(
			YELLOW_CIRCLE_DOT_DURATION,
			_id_caster,
			_id_caster.ds_Stats_frameStats,
			_id_caster.list_ds_EffectData_activeEffects,
			YELLOW_CIRCLE_DOT_DAMAGE_PER_STEP,
			Enum_DamageTypes.FIRE
		)
	);
}

return instance_create_layer(_num_targetX, _num_targetY, LAYERS_ABILITIES, oYellowCircle);
