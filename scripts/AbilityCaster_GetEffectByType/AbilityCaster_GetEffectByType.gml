/// @function AbilityCaster_CheckInstanceHasEffect(id_abilityCaster, enum_effect) Returns the first instance of given effect. Should always check has effect first.
/// @param {id} id_abilityCaster The ability caster to get the effect from.
/// @param {enum} enum_effect The effect type to get.
/// @returns {ds_EffectData} The effect.
var _id_abilityCaster = argument[0];
var _enum_effect = argument[1];

if(!Utility_ObjectIsAncestorOfInstance(oAbilityCaster, _id_abilityCaster)){
	ErrorHandler_Error("Tried to check effects on non ability caster.");
}

var _list_ds_EffectContext_effects = _id_abilityCaster.list_ds_EffectContext_activeEffects;

for(var i=0; i<ds_list_size(_list_ds_EffectContext_effects); i++){
	var _ds_EffectContext_context = _list_ds_EffectContext_effects[| i];
	var _ds_EffectData_data = ds_EffectContext_GetEffectData(_ds_EffectContext_context);
	if(ds_EffectData_GetEffect(_ds_EffectData_data) == _enum_effect) return _ds_EffectData_data;
}

ErrorHandler_FatalError("Effect " + string(_enum_effect) + " not found on " + object_get_name(_id_abilityCaster.object_index));