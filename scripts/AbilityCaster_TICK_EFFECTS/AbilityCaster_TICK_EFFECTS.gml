/// @function AbilityCaster_TICK_EFFECTS() Ticks down active effects, then removes any expired effects.

// Loop through backwards so we check each element exactly once (list length may change throughout this loop).
for(var i=ds_list_size(list_activeEffects)-1; i>=0; i--){
	var _ds_EffectData_active = list_activeEffects[| i];
	var _num_remainingSteps = ds_EffectData_GetSteps(_ds_EffectData_active);
	
	// Check if effect has expired (0 steps remaining):
	if(_num_remainingSteps <= 0){
		ds_list_delete(list_activeEffects, i);	
	} else {
		var _ds_EffectData_new = ds_EffectData_SetSteps(_ds_EffectData_active, _num_remainingSteps - 1);
		list_activeEffects[| i] = _ds_EffectData_new;
	}
}