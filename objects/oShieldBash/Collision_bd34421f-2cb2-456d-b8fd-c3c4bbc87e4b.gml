if(
	num_currentStep == 0
	&& Utility_ObjectIsAncestorOfInstance(obj_target, other, true)
) {
	if(
		Utility_ObjectIsAncestorOfInstance(oPlayer, other, true)
	){
		Camera_Shake(20, 60)
	}
	
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
