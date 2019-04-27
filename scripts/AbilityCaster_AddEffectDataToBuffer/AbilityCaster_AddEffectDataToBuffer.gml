/// @function AbilityCaster_AddEffectDataToBuffer(id_target, EffectData_data) Add a an effect data to the given AbilityCaster's effect buffer
///		via an already made EffectData object.
/// @param {id} id of the ability caster to add the effect to.
/// @param {EffectData_data} EffectData_data to add to the buffer.
var _id_target = argument[0];
var _EffectData_data = argument[1];


if (EffectData_InstanceOf(_EffectData_data)){
	with (_id_target){
		ds_list_add(list_effectsBuffer, _EffectData_data);
	}
} else {
	ErrorHandler_Error("Invalid EffectData was asked to be added to our buffer.");	
}
