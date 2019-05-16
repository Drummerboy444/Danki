/// @function AbilityCaster_CheckInstanceHasEffect(id_abilityCaster, enum_effect) Returns true if instance has given effect active.
/// @param {id} id_abilityCaster The ability caster to check the presence of the effect on.
/// @param {enum} enum_effect The effect to check for.
/// @returns {bool} true if the effect is active on the ability caster.
var _id_abilityCaster = argument[0];
var _enum_effect = argument[1];

if(!Utility_ObjectIsAncestorOfInstance(oAbilityCaster, _id_abilityCaster)){
	ErrorHandler_Error("Tried to check effects on non ability caster.");
}

var _list_effects = _id_abilityCaster.list_ds_EffectData_activeEffects;

for(var i=0; i<ds_list_size(_list_effects); i++){
	if(ds_EffectData_GetEffect(_list_effects[| i]) == _enum_effect) return true;
}

return false;