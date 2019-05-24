/// @function AbilityCaster_ADD_BUFFER_EFFECTS() Adds the buffer effects to the active effect list and clears the buffer.

// Add each effect from the buffer to the active effect list
for(var i=0; i<ds_list_size(list_ds_EffectData_effectsBuffer); i++){
	var _ds_EffectData_buffer = list_ds_EffectData_effectsBuffer[| i];
	
	var _enum_effect = ds_EffectData_GetEffect(_ds_EffectData_buffer);
	var _id_caster = ds_EffectData_GetCasterId(_ds_EffectData_buffer);
	
	// delete any active effects if the effect is the same and the caster is the same
	for (var j = ds_list_size(list_ds_EffectData_activeEffects) - 1; j >= 0; j--) {
		var _ds_EffectData_active = list_ds_EffectData_activeEffects[| j];
		var _enum_activeEffect = ds_EffectData_GetEffect(_ds_EffectData_active);
		var _id_activeCaster = ds_EffectData_GetCasterId(_ds_EffectData_active);
		
		if (_enum_effect == _enum_activeEffect && _id_caster == _id_activeCaster) {
			ds_list_delete(list_ds_EffectData_activeEffects, j);
			ds_EffectData_Destroy(_ds_EffectData_active);
		}
	}

	ds_list_add(list_ds_EffectData_activeEffects, _ds_EffectData_buffer);

}

// Clear the buffer
ds_list_clear(list_effectsBuffer);
