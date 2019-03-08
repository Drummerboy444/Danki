/// @function AbilityCaster_TICK_EFFECTS() Ticks down active effects, then removes any expired effects.

// Loop through backwards so we check each element exactly once (list length may change throughout this loop).
for(var i=ds_list_size(list_activeEffects)-1; i>=0; i--){
	var _arr_effectData = list_activeEffects[| i];
	var _num_remainingSteps = AbilityCaster_GetStepsFromEffect(_arr_effectData);
	
	// Check if effect has expired (0 steps remaining):
	if(_num_remainingSteps <= 0){
		ds_list_delete(list_activeEffects, i);	
	} else {
		var _arr_newEffectData = AbilityCaster_SET_STEPS(_arr_effectData, _num_remainingSteps - 1);
		list_activeEffects[| i] = _arr_newEffectData;
	}
}