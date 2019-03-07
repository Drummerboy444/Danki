/// @function AbilityCaster_TICK_EFFECTS() Ticks down active effects, then removes any expired effects.

// Loop through backwards so we check each element exactly once (list length may change throughout this loop).
for(i=ds_list_size(list_activeEffects)-1; i>=0; i--){
	// Each element in list_activeEffects has form [effect, arguments, steps_remaining];
	var _arr_effect = list_activeEffects[| i];
	
	// Check if effect has expired (0 steps remaining):
	if(_arr_effect[2] <= 0){
		ds_list_delete(list_activeEffects, i);	
	} else {	
		// Note, _arr_effect[2] is the number of remaining steps of the effect
		_arr_effect[2] -= 1;
		list_activeEffects[| i] = _arr_effect;
	}
}