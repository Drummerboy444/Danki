/// @function AbilityCaster_GetRemainingCooldownProportion(id_abilityCaster) Returns the proportion of the
///		ability caster's current remaining global cooldown, as a value in the range [0, 1].
/// @param   {id}     id_abilityCaster  The ability caster to check the remaining cooldown proportion of.
/// @returns {number}                   The remaining global cooldown as a number in the range [0, 1].
var _id_abilityCaster = argument[0];


if (!Utility_ObjectIsAncestorOfInstance(oAbilityCaster, _id_abilityCaster)) {
	ErrorHandler_FatalError("Cannot get the remaining cooldown proportion of a non oAbilityCaster");
}

return _id_abilityCaster.num_globalCooldownRemaining / GLOBAL_COOLDOWN;
