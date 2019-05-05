/// @function TargetDummy_PLAN(ds_Agenda_previousAgenda, ds_Agenda_toWriteTo)
/// @param {ds_Agenda} ds_Agenda_previousAgenda The previous agenda.
/// @param {ds_Agenda} ds_Agenda_toWriteTo The blank agenda to write the new values to.
/// @returns {ds_Agenda} The new agenda.
var _ds_Agenda_previousAgenda = argument[0];
var _ds_Agenda_toWriteTo = argument[1];

ds_Agenda_Clear(_ds_Agenda_toWriteTo);

var bool_retreating = ds_Agenda_Includes(_ds_Agenda_previousAgenda, Enum_Actions.RETREAT);
var bool_advancing = ds_Agenda_Includes(_ds_Agenda_previousAgenda, Enum_Actions.ADVANCE);

if(instance_exists(oPlayer)){
	ds_Agenda_SetIntention(_ds_Agenda_toWriteTo, Enum_Actions.FIND_TARGET, true);
} else {
	return _ds_Agenda_toWriteTo;
}

if(id_target == noone) return _ds_Agenda_toWriteTo;

var _num_distanceToTarget = Utility_DistanceBetweenObjectCentres(id, id_target);
if(_num_distanceToTarget > num_aggroRange) return _ds_Agenda_toWriteTo;

var _num_idealRange = num_aggroRange * 0.2 * (2 - num_currentHealth/ds_Stats_Get(ds_Stats_frameStats, Enum_Stats.HEALTH));

if(
	_num_distanceToTarget > 2 * _num_idealRange
	or (bool_advancing and _num_distanceToTarget > _num_idealRange)
){
	show_debug_message("Advance");
	ds_Agenda_SetIntention(_ds_Agenda_toWriteTo, Enum_Actions.ADVANCE, true);
	ds_Agenda_SetIntention(_ds_Agenda_toWriteTo, Enum_Actions.ATTACK, true);
}
else if(
	_num_distanceToTarget < 0.5 * _num_idealRange
	or (bool_retreating and _num_distanceToTarget < 2*_num_idealRange)
){
	show_debug_message("Retreat");
	ds_Agenda_SetIntention(_ds_Agenda_toWriteTo, Enum_Actions.RETREAT, true);
}
else {
	show_debug_message("Evade");
	ds_Agenda_SetIntention(_ds_Agenda_toWriteTo, Enum_Actions.EVADE, true);
	ds_Agenda_SetIntention(_ds_Agenda_toWriteTo, Enum_Actions.ATTACK, true);
}

return _ds_Agenda_toWriteTo;
