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
			SHIELDBASH_DASH_STEPS,
			_id_caster,
			SHIELDBASH_DASH_SPEED_MULTIPLIER,
			SHIELDBASH_DASH_SLOW_MULTIPLIER,
			SHIELDBASH_DASH_SLOW_STEPS
		),
		ds_AbilityCasterSnapshot_FromId(_id_caster)
	)
);

return Ability_Create(
	_num_targetX,
	_num_targetY,
	oShieldBash,
	ds_AbilityCasterSnapshot_FromId(_id_caster)
);
