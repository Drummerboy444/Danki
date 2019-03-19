/// @function ds_Agenda_Destroy(ds_Agenda_agenda) Destroys the given ds_Agenda.
/// @param {ds_Agenda} ds_Agenda_agenda The agenda to destroy.
/// @returns {boolean} True if the agenda was destroyed.
var _ds_Agenda_agenda = argument[0];


if (!ds_Agenda_InstanceOf(_ds_Agenda_agenda)) {
	ErrorHandler_Error(
		"Variable was not destroyed as it was of type " + typeof(_ds_Agenda_agenda) + " and not of type ds_Agenda"
	);
	return false;
}

ds_map_destroy(_ds_Agenda_agenda);
return true;
