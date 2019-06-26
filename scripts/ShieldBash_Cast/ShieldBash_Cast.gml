#region Doc
/// @function ShieldBash_Cast(id_caster, num_targetX, num_targetY) Creates an instance of oShieldBash
///		at the given target.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target of the ability.
/// @param   {number}  num_targetY       The y target of the ability.
/// @returns {id}                        The instance id of the oShieldBash that was created.
#endregion
var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];

AbilityCaster_ApplyEffect(
	_id_caster,
	ds_EffectContext_New(
		ds_DashEffectData_New(
			SHIELDBASH_DASH_STEPS + SHIELDBASH_DASH_SLOW_STEPS,
			_id_caster,
			SHIELDBASH_DASH_SPEED_MULTIPLIER,
			SHIELDBASH_DASH_SLOW_MULTIPLIER,
			SHIELDBASH_DASH_SLOW_STEPS
		),
		ds_AbilityCasterSnapshot_FromId(_id_caster)
	)
);

var _num_direction = point_direction(_id_caster.x, _id_caster.y, _num_targetX, _num_targetY);

var _num_castX = _id_caster.x + lengthdir_x(SHIELDBASH_RANGE, _num_direction);
var _num_castY = _id_caster.y + lengthdir_y(SHIELDBASH_RANGE, _num_direction);

var _id_ShieldBash = Ability_Create(
	_num_castX,
	_num_castY,
	oShieldBash,
	ds_AbilityCasterSnapshot_FromId(_id_caster),
	_id_caster.obj_opponent
);

_id_ShieldBash.image_angle = _num_direction;
_id_ShieldBash.id_source = _id_caster;

return _id_ShieldBash;
