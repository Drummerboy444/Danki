/// @function AbilityCaster_NO_OP_PLAN(ds_Agenda_previousAgenda, ds_Agenda_toWriteTo) The no op plan sets
///		all values on the agenda to write to to false and returns it. This is to represent a plan that
///		does nothing.
/// @param {ds_Agenda} ds_Agenda_previousAgenda The previous agenda.
/// @param {ds_Agenda} ds_Agenda_toWriteTo The previous agenda.
/// @returns {ds_Agenda} An agenda with all intentions set to false.
var _ds_Agenda_previousAgenda = argument[0];
var _ds_Agenda_toWriteTo = argument[1];


ds_Agenda_Clear(_ds_Agenda_toWriteTo);
return _ds_Agenda_toWriteTo;
