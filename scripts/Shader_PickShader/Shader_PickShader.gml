/// @function Shader_PickShader() Goes through the calling oAbilityCaster's active effects to pick
///		a shader to apply.

//Normal draw if we have no effects active.
if (ds_list_empty(list_ds_EffectContext_activeEffects)) {
	draw_self();
	return;
}

for (var i = 0; i < ds_list_size(list_ds_EffectContext_activeEffects); i++) {
	var _EffectContext_effCon = list_ds_EffectContext_activeEffects[| i];
	var _EffectData_effDat = ds_EffectContext_GetEffectData(_EffectContext_effCon);
	var _shd_shader = ds_EffectData_GetShader(_EffectData_effDat);
	
	if (_shd_shader != noone) {
		shader_set(_shd_shader);
	}
	
	draw_self();
	shader_reset();
}