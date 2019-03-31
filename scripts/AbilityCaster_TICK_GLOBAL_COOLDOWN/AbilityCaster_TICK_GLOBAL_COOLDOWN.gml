/// @function AbilityCaster_TICK_GLOBAL_COOLDOWN() Ticks down the global cooldown of the ability caster
///		according to the casters haste. Also updates the whether the global cooldown is on or off.


var _num_haste = ds_Stats_Get(ds_Stats_frameStats, Enum_Stats.HASTE);
var _num_hasteEffect = GENERAL_GLOBAL_COOLDOWN_HASTE_EFFECT * _num_haste;
var _num_tickRate = GENERAL_GLOBAL_COOLDOWN_BASE_TICK_RATE + _num_hasteEffect;
num_globalCooldownRemaining -= _num_tickRate;
if (num_globalCooldownRemaining <= 0) {
	bool_onGlobalCooldown = false;
}
