/// @function AbilityCaster_AddEffectDataToBuffer(id_target, ds_EffectData_data) Add a an effect data to the given AbilityCaster's effect buffer
///		via an already made EffectData object.
/// @param {id} id of the ability caster to add the effect to.
/// @param {ds_EffectData_data} ds_EffectData_data to add to the buffer.
var _id_target = argument[0];
var _ds_EffectData_data = argument[1];


if (ds_EffectData_InstanceOf(_ds_EffectData_data)){
	with (_id_target){
		ds_list_add(list_ds_EffectData_effectsBuffer, _ds_EffectData_data);
	}
} else {
	ErrorHandler_Error("Invalid EffectData was asked to be added to our buffer.");	
}
