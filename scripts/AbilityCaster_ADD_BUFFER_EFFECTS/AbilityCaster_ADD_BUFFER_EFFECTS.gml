/// @function AbilityCaster_ADD_BUFFER_EFFECTS() Adds the buffer effects to the active effect list and clears the buffer.

// Add each effect from the buffer to the active effect list
for(var i=0; i<ds_list_size(list_effectsBuffer); i++){
	var _arr_effectData = list_effectsBuffer[| i];
	
	var _enum_effect = AbilityCaster_GET_EFFECT(_arr_effectData);
	var _id_caster = AbilityCaster_GET_CASTER_ID(_arr_effectData);
	
	// delete any active effects if the effect is the same and the caster is the same
	for (var j = ds_list_size(list_activeEffects) - 1; j >= 0; j--) {
		var _arr_activeEffectData = list_activeEffects[| j];
		var _enum_activeEffect = AbilityCaster_GET_EFFECT(_arr_activeEffectData);
		var _id_activeCaster = AbilityCaster_GET_CASTER_ID(_arr_activeEffectData);
		
		if (_enum_effect == _enum_activeEffect && _id_caster == _id_activeCaster) {
			ds_list_delete(list_activeEffects, j);
		}
	}

	ds_list_add(list_activeEffects, _arr_effectData);
}

// Clear the buffer
ds_list_clear(list_effectsBuffer);