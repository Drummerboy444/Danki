/// @function AbilityCaster_IsOnGlobalCooldown(id_abilityCaster) Returns true if the given ability caster's
///		global cooldown is on.
/// @param   {id}       id_abilityCaster  The instance to check against.
/// @returns {boolean}                    True if the global cooldown is on.
var _id_abilityCaster = argument[0];


if (!Utility_ObjectIsAncestorOfInstance(oAbilityCaster, _id_abilityCaster)) {
	ErrorHandler_FatalError("Cannot check the global cooldown of an instance that is not an oAbilityCaster");
}

return _id_abilityCaster.bool_onGlobalCooldown;
