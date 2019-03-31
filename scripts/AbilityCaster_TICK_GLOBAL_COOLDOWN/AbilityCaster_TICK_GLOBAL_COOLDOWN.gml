/// @function AbilityCaster_TICK_GLOBAL_COOLDOWN() Ticks down the global cooldown of the ability caster
///		according to the casters haste. Also updates the whether the global cooldown is on or off.


num_globalCooldownRemaining--;
if (num_globalCooldownRemaining <= 0) {
	bool_onGlobalCooldown = false;
}
