/// @function AbilityCaster_StartGlobalCooldown(id_abilityCaster) Starts the global cooldown of the given
///		ability caster.
/// @param   {id}       id_abilityCaster  The instance id of the ability caster to reset the global cooldown of.
var _id_abilityCaster = argument[0];


if (!Utility_ObjectIsAncestorOfInstance(oAbilityCaster, _id_abilityCaster)) {
	ErrorHandler_FatalError("Cannot start the global cooldown of an instance that is not an oAbilityCaster");
}

_id_abilityCaster.num_globalCooldownRemaining = GENERAL_GLOBAL_COOLDOWN;
_id_abilityCaster.bool_onGlobalCooldown = true;
return true;
