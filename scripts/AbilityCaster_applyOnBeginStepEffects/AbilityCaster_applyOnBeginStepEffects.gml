/// @function AbilityCaster_applyOnBeginStepEffects(id_abilityCaster) Applies on begin step effects.
/// @param {id} id_abilityCaster The oAbilityCaster instances whose effects are being applied.
var _id_abilityCaster = argument[0];

with(_id_abilityCaster){
	AbilityCaster_APPLY_EFFECTS(Enum_EventHooks.ON_BEGIN_STEP);
}