/// @function AbilityCaster_ADD_BUFFER_EFFECTS() Adds the buffer effects to the active effect list and clears the buffer.

// Add each effect from the buffer to the active effect list
for(var i=0; i<ds_list_size(list_effectsBuffer); i++){
	var _arr_effect = list_effectsBuffer[| i];
	
	for (var j = ds_list_size(list_activeEffects) - 1; j >= 0; j--) {
		var _arr_activeEffect = list_activeEffects[| j];
		if (_arr_effect[0] == _arr_activeEffect[0] && _arr_effect[3] == _arr_activeEffect[3]) {
			var _num_index = ds_list_find_index(list_activeEffects, _arr_activeEffect);
			ds_list_delete(list_activeEffects, _num_index);
		}
	}

	ds_list_add(list_activeEffects, _arr_effect);
}

// Clear the buffer
ds_list_clear(list_effectsBuffer);