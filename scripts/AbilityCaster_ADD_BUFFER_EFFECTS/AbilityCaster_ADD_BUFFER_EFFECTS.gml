/// @function AbilityCaster_ADD_BUFFER_EFFECTS() Adds the buffer effects to the active effect list and clears the buffer.

// Add each effect from the buffer to the active effect list
for(i=0; i<ds_list_size(list_effectsBuffer); i++){
	var _arr_effect = list_effectsBuffer[| i];
	for(j=0; j<ds_list_size(list_activeEffects); j++){
		var _arr_activeEffect = list_activeEffects[| j];
		if(_arr_effect[0] == _arr_activeEffect[0]
		and _arr_effect[1] == _arr_activeEffect[1]){
			ds_list_delete(list_activeEffects, j);
		}
	}
	ds_list_add(list_activeEffects, _arr_effect);
}

// Clear the buffer
ds_list_clear(list_effectsBuffer);