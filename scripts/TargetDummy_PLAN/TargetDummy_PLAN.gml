var _ds_Agenda_previousAgenda = argument[0];
var _ds_Agenda_toWriteTo = argument[1];


ds_Agenda_SetIntention(_ds_Agenda_toWriteTo, Enum_Actions.FIND_TARGET, true);
ds_Agenda_SetIntention(_ds_Agenda_toWriteTo, Enum_Actions.ADVANCE, true);
ds_Agenda_SetIntention(_ds_Agenda_toWriteTo, Enum_Actions.ATTACK, true);

return _ds_Agenda_toWriteTo;
