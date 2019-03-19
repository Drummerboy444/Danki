/// @function AbilityCaster_NO_OP_PLAN(ds_Agenda_previousAgenda) The no op plan takes in the previous agenda argument
///		and returns an agenda with all intentions set to false. This is to represent a plan that does nothing.
/// @param {ds_Agenda} ds_Agenda_previousAgenda The previous agenda.
/// @returns {ds_Agenda} An agenda with all intentions set to false.
var _ds_Agenda_previousAgenda = argument[0];


ds_Agenda_Destroy(_ds_Agenda_previousAgenda);
return ds_Agenda_New();
