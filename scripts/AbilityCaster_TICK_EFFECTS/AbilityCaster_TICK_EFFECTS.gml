/// @function AbilityCaster_TICK_EFFECTS() Ticks down active effects, then removes any expired effects.

// Loop through backwards so we check each element exactly once (list length may change throughout this loop).
for(var i=ds_list_size(list_activeEffects)-1; i>=0; i--){
	var _EffectData_active = list_activeEffects[| i];
	var _num_remainingSteps = EffectData_GetSteps(_EffectData_active);
	
	// Check if effect has expired (0 steps remaining):
	if(_num_remainingSteps <= 0){
		ds_list_delete(list_activeEffects, i);	
	} else {
		var _EffectData_new = EffectData_SetSteps(_EffectData_active, _num_remainingSteps - 1);
		list_activeEffects[| i] = _EffectData_new;
	}
}