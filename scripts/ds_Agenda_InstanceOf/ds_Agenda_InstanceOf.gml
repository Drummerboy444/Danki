/// @function ds_Agenda_InstanceOf(any_agenda) Checks if the given variable is an instance of ds_Agenda.
/// @param {any} any_agenda The variable to check.
/// @returns {boolean} True if the variable is a ds_Agenda.
var _any_agenda = argument[0];


if (!ds_exists(_any_agenda, ds_type_map)) {
	return false;
}

if (ds_map_size(_any_agenda) != Enum_Actions.length) {
	return false;
}

for (var i = 0; i < Enum_Actions.length; i++) {
	if (is_undefined(_any_agenda[? i])) {
		return false;
	}
}

return true;
