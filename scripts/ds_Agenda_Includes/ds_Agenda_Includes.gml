/// @function ds_Agenda_Includes(ds_Agenda_agenda, enum_action) Returns true if the given agenda includes the given action
/// @param {ds_Agenda} ds_Agenda_agenda The agenda to check.
/// @param {enum} enum_action The action to check if the agenda includes.
/// @returns {boolean} True if the agenda includes the action.
var _ds_Agenda_agenda = argument[0];
var _enum_action = argument[1];


if (!ds_Agenda_InstanceOf(_ds_Agenda_agenda)) {
	ErrorHandler_Error("Unable to check if agenda includes action for variable of type " + typeof(_ds_Agenda_agenda));
	return false;
}

return _ds_Agenda_agenda[? _enum_action];
