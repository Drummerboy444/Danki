/// @function AbilityCaster_APPLY_EFFECTS_TO_STATS() Applies active effects to player stats.

// todo: Cycle through all possible effects. For each, call a script that aggregates all correponding active effects and applies a change to stats.
for(i=0; i<ds_list_size(list_activeEffects); i++){
	var _arr_effect = list_activeEffects[| i];
	if(_arr_effect[0] = Enum_Effects.SLOWED){
		var _arr_effectArgs = _arr_effect[2];
		show_debug_message(_arr_effectArgs);
		map_frameStats[? Enum_Stats.SPEED] *= _arr_effectArgs[0];
	}
}