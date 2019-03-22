/// @function AbilityCaster_PLAN_TEST(ds_Agenda_previousAgenda) Creates a new agenda and adds to it
///		depending on the whether the object has a target and its current health.
/// @param {ds_Agenda} ds_Agenda_previousAgenda The previous agenda.
/// @returns {ds_Agenda} The new agenda to use this step.
var _ds_Agenda_previousAgenda = argument[0];


var _ds_Agenda_newAgenda = ds_Agenda_New();

// We could just always have the find target intention. This would have the effect of always swapping
// to the nearest target. This way means that we'll stick with a target until it goes out of range.
if (id_target == noone) {
	ds_Agenda_SetIntention(_ds_Agenda_newAgenda, Enum_Actions.FIND_TARGET, true);
}

var _num_thirdHealth = StatsManager_GetHealth(id) / 3;
var _num_twoThirdsHealth = _num_thirdHealth * 2;
// This would only work for an instance of oMortal, also we might not want to just gram current health
// directly like this?
if (num_currentHealth < _num_thirdHealth) {
	ds_Agenda_SetIntention(_ds_Agenda_newAgenda, Enum_Actions.DEFEND, true);
	ds_Agenda_SetIntention(_ds_Agenda_newAgenda, Enum_Actions.RETREAT, true);
} else if (num_currentHealth < _num_twoThirdsHealth) {
	ds_Agenda_SetIntention(_ds_Agenda_newAgenda, Enum_Actions.ATTACK, true);
	ds_Agenda_SetIntention(_ds_Agenda_newAgenda, Enum_Actions.EVADE, true);
} else {
	ds_Agenda_SetIntention(_ds_Agenda_newAgenda, Enum_Actions.ATTACK, true);
	ds_Agenda_SetIntention(_ds_Agenda_newAgenda, Enum_Actions.ADVANCE, true);
}

return _ds_Agenda_newAgenda;
