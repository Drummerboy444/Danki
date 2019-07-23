show_debug_message(obj_target)
show_debug_message(other.id)
show_debug_message(Utility_ObjectIsAncestorOfInstance(obj_target, other.id))
if(
	num_currentStep == 0
	&& Utility_ObjectIsAncestorOfInstance(obj_target, other.id)
) {
	show_debug_message("hit")
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
	if(
		Utility_ObjectIsAncestorOfInstance(oPlayer, other.id)
	){
		Camera_Shake(20, 60)
	}
}
