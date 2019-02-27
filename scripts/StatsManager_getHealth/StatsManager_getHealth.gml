/// @function StatsManager_GetHealth(id_abilityCaster) Checks if the given instance is an ability caster, if so
///		returns the casters health, otherwise throws and error and returns noone.
/// @param {id} id_abilityCaster The id of the ability caster
/// @returns {number | noone} The health of the ability caster
var _id_abilityCaster = argument[0];


if (!Utility_ObjectIsAncestorOfInstance(oAbilityCaster, _id_abilityCaster)) {
	var _str_object = object_get_name(_id_abilityCaster.object_index);
	ErrorHandler_Error("Cannot get the health of an object of type " + _str_object);
	return noone;
}

return _id_abilityCaster.map_currentStats[? Enum_Stats.HEALTH];
