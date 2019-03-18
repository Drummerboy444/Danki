/// @function ds_Agenda_SetIntention(ds_Agenda_agenda, enum_action, bool_intention) Sets whether the agenda includes the given action
/// @param {ds_Agenda} ds_Agenda_agenda The agenda to update.
/// @param {enum} enum_action The action to set the intention of.
/// @param {boolean} bool_intention Whether the action should or shouldn't be done.
/// @returns {boolean} Whether the intention was successfully set.
var _ds_Agenda_agenda = argument[0];
var _enum_action = argument[1];
var _bool_intention = argument[2];


if (!ds_Agenda_InstanceOf(_ds_Agenda_agenda)) {
	ErrorHandler_Error("Unable to update the agenda intention for variable of type " + typeof(_ds_Agenda_agenda));
	return false;
}

_ds_Agenda_agenda[? _enum_action] = _bool_intention;
return true;
