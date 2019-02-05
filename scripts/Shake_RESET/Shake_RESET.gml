/// @function Shake_RESET(id_oShake) Resets the given caller, if it is an oShake, adding it back to the pool.
/// @param {id} oShake object to be reset.

with(argument[0]){
	bool_isActive = false;
	bool_isApplying = false;
	num_power = 0;
	num_duration = 0;
}
