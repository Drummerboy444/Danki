/// @function AbilityCaster_ApplyEffect(id_target, ds_EffectContext_context) Add a an effect context to the
///		given AbilityCaster's effect buffer via an already made EffectData object.
/// @param {id} id of the ability caster to add the effect to.
/// @param {ds_EffectContext} ds_EffectContext_context to add to the buffer.
var _id_target = argument[0];
var _ds_EffectContext_context = argument[1];


if (ds_EffectContext_InstanceOf(_ds_EffectContext_context)){
	with (_id_target){
		ds_list_add(list_ds_EffectContext_effectsBuffer, _ds_EffectContext_context);
	}
} else {
	ErrorHandler_Error("Invalid EffectData was asked to be added to our buffer.");	
}
