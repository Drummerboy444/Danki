/// @function ds_Agenda_Copy(ds_Agenda_target, ds_Agenda_source) Copies the contents of the source agenda to
///		the target agenda.
/// @param {ds_Agenda} ds_Agenda_target The target agenda to copy to.
/// @param {ds_Agenda} ds_Agenda_source The source agenda to copy from.
var _ds_Agenda_target = argument[0];
var _ds_Agenda_source = argument[1];


if (!ds_Agenda_InstanceOf(_ds_Agenda_target)) {
	ErrorHandler_Error("Cannot copy agenda, as the target was not of type ds_Agenda");
}

if (!ds_Agenda_InstanceOf(_ds_Agenda_source)) {
	ErrorHandler_Error("Cannot copy agenda, as the source was not of type ds_Agenda");
}

ds_map_copy(_ds_Agenda_target, _ds_Agenda_source);
