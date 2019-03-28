/// @function ds_Agenda_Clear(ds_Agenda_agenda) Sets all intentions of the agenda to false
/// @param {ds_Agenda} ds_Agenda_agenda The agenda to clear.
var _ds_Agenda_agenda = argument[0];


if (!ds_Agenda_InstanceOf(_ds_Agenda_agenda)) {
	ErrorHandler_Error("Cannot clear the agenda, as the given agenda was not of type ds_Agenda");
}

for (var _enum_action = 0; _enum_action < Enum_Actions.length; _enum_action++) {
	ds_Agenda_SetIntention(_ds_Agenda_agenda, _enum_action, false);
}
