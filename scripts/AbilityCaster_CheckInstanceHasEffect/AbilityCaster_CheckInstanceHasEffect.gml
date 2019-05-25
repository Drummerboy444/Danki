/// @function AbilityCaster_CheckInstanceHasEffect(id_abilityCaster, enum_effect) Returns true if instance has given effect active.
/// @param {id} id_abilityCaster The ability caster to check the presence of the effect on.
/// @param {enum} enum_effect The effect to check for.
/// @returns {bool} true if the effect is active on the ability caster.
var _id_abilityCaster = argument[0];
var _enum_effect = argument[1];

if(!Utility_ObjectIsAncestorOfInstance(oAbilityCaster, _id_abilityCaster)){
	ErrorHandler_Error("Tried to check effects on non ability caster.");
}

var _list_ds_EffectContext_effects = _id_abilityCaster.list_ds_EffectContext_activeEffects;

for(var i=0; i<ds_list_size(_list_ds_EffectContext_effects); i++){
	var _ds_EffectContext_context = _list_ds_EffectContext_effects[| i];
	var _ds_EffectData_data = ds_EffectContext_GetEffectData(_ds_EffectContext_context);
	if(ds_EffectData_GetEffect(_ds_EffectData_data) == _enum_effect) return true;
}

return false;