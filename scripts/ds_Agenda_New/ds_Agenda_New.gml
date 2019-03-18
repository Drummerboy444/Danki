/// @function ds_Agenda_New() Creates a new ds_Agenda with all intentions set to false.
/// @returns {ds_Agenda} The new ds_Agenda.


var _ds_Agenda_newAgenda = ds_map_create();
for (var i = 0; i < Enum_Actions.length; i++) {
	_ds_Agenda_newAgenda[? i] = false;
}

return _ds_Agenda_newAgenda;
