/// @function AbilityCaster_GetEffectsByType(id_abilityCaster, enum_effect) Returns the all instance of the given effect that are active on
/// the ability caster. Should always check has effect first. Don't forget to delete the list at some point.
/// @param {id} id_abilityCaster The ability caster to get the effects from.
/// @param {enum} enum_effect The effect type to get.
/// @returns {list_ds_EffectData} The effects.
var _id_abilityCaster = argument[0];
var _enum_effect = argument[1];

if(!Utility_ObjectIsAncestorOfInstance(oAbilityCaster, _id_abilityCaster)){
	ErrorHandler_Error("Tried to check effects on non ability caster.");
}

var _list_ds_EffectContext_effects = _id_abilityCaster.list_ds_EffectContext_activeEffects;

var _list_ds_EffectContext_effectsToReturn = ds_list_create();

for(var i = 0; i < ds_list_size(_list_ds_EffectContext_effects); i++){
	var _ds_EffectContext_context = _list_ds_EffectContext_effects[| i];
	var _ds_EffectData_data = ds_EffectContext_GetEffectData(_ds_EffectContext_context);
	if(ds_EffectData_GetEffect(_ds_EffectData_data) == _enum_effect) {
		ds_list_add(_list_ds_EffectContext_effectsToReturn, _ds_EffectData_data);
	}
}

return _list_ds_EffectContext_effectsToReturn;

ErrorHandler_FatalError("Effect " + string(_enum_effect) + " not found on " + object_get_name(_id_abilityCaster.object_index));