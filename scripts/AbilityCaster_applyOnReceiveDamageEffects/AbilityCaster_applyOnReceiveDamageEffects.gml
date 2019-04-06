/// @function AbilityCaster_applyOnReceiveDamageEffects(id_abilityCaster, DamageData_data) Applies on receive damage effects.
/// @param {id} id_abilityCaster The oAbilityCaster instances whose effects are being applied.
/// @param {DamageData} DamageData_data The damage data to be processed by effects.
var _id_abilityCaster = argument[0];
var _DamageData_data = argument[1];

with(_id_abilityCaster){
	return AbilityCaster_APPLY_EFFECTS(Enum_EventHooks.ON_RECEIVE_DAMAGE, _DamageData_data);
}