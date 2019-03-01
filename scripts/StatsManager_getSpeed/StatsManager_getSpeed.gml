/// @function StatsManager_GetSpeed(id_abilityCaster) Checks if the given instance is an ability caster, if so
///		returns the casters speed, otherwise throws and error and returns noone.
/// @param {id} id_abilityCaster The id of the ability caster
/// @returns {number | noone} The speed of the ability caster
var _id_abilityCaster = argument[0];


if (!Utility_ObjectIsAncestorOfInstance(oAbilityCaster, _id_abilityCaster)) {
	var _str_object = object_get_name(_id_abilityCaster.object_index);
	ErrorHandler_Error("Cannot get the speed of an object of type " + _str_object);
	return noone;
}

return _id_abilityCaster.map_frameStats[? Enum_Stats.SPEED];
