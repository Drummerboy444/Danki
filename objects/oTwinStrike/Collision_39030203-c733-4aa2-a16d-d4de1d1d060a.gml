if(
	num_animationLength == num_baseAnimationLength
	&& Utility_ObjectIsAncestorOfInstance(obj_target, other.id)
) {
	DamageManager_ApplyDamage(
		id_source,
		other.id,
		ds_DamageData_New(
			Enum_DamageTypes.SLASHING,
			TWINSTRIKE_DAMAGE,
			ds_AbilityCasterSnapshot_snapshot,
			false
		)
	)
}