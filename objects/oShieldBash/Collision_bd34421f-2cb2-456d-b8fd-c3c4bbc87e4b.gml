if(
	num_currentStep == 0
	&& Utility_ObjectIsAncestorOfInstance(obj_target, other.id)
) {
	DamageManager_ApplyDamage(
		id_source,
		other.id,
		ds_DamageData_New(
			Enum_DamageTypes.ICE,
			SHIELDBASH_DAMAGE,
			ds_AbilityCasterSnapshot_snapshot,
			false
		)
	)
}