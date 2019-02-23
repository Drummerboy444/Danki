/// @function AbilityCaster_ADD_BUFFER_EFFECTS() Adds the buffer effects to the active effect list and clears the buffer.

// Add each effect from the buffer to the active effect list
for(i=0; i<ds_list_size(list_effectsBuffer); i++){
	var _arr_effect = list_effectsBuffer[| i];
	ds_list_add(list_activeEffects, _arr_effect);
}

// Clear the buffer
ds_list_clear(list_effectsBuffer);