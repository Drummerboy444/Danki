with (oAbilityCaster) {
	var _bool_hasBurn = AbilityCaster_CheckInstanceHasEffect(id, Enum_Effects.DOT);
	
	if (_bool_hasBurn) {
			shader_set(shd_AbilityCaster);
			shader_set_uniform_f_array(uni_v4_Multiply, oShaderManager.arr_burnMult);
			shader_set_uniform_f_array(uni_v4_Add, oShaderManager.arr_burnAdd);
			shader_reset();
	} else {
		shader_set(shd_AbilityCaster);
		shader_set_uniform_f_array(uni_v4_Multiply, oShaderManager.arr_one);
		shader_set_uniform_f_array(uni_v4_Add, oShaderManager.arr_zero);
		shader_reset();
	}
}
