/// @function AbilityCaster_APPLY_EFFECTS(enum_eventHook, ds_DamageData_data?) Applies active effects based on the event hook.
/// @param {enum} enum_eventHook The event hook to apply effects on.
/// @param {ds_DamageData} ds_DamageData_data The damage data to be processed by the handler. Optional.
/// @returns {ds_DamageData} The processed damage data if relevant.

var _enum_eventHook = argument[0];
var _ds_DamageData_data = argument_count<2 ? undefined : argument[1];

AbilityCaster_EMPTY_BUCKETS();

for (var i = 0; i < ds_list_size(list_ds_EffectContext_activeEffects); i++) {
	var _ds_EffectContext_active = list_ds_EffectContext_activeEffects[| i];
	var _ds_EffectData_active = ds_EffectContext_GetEffectData(_ds_EffectContext_active);
	var _enum_effect = ds_EffectData_GetEffect(_ds_EffectData_active);
	var _list_ds_EffectContext_bucket = map_effectToBucket[? _enum_effect];
	ds_list_add(_list_ds_EffectContext_bucket, _ds_EffectContext_active);
}


for (var _enum_effect = 0; _enum_effect < Enum_Effects.length; _enum_effect++) {
	var _list_ds_EffectContext_bucket = map_effectToBucket[? _enum_effect];
	
	if(!ds_EffectHookScripts_ScriptExists(oEffectsManager.map_effectToEventHookScripts[? _enum_effect], _enum_eventHook)
		or ds_list_empty(_list_ds_EffectContext_bucket))
	{
		continue;
	}
		
	var _scr_effectHandlerScript = ds_EffectHookScripts_GetScript(
		oEffectsManager.map_effectToEventHookScripts[? _enum_effect], _enum_eventHook);
			
	if(argument_count<2){
		script_execute(_scr_effectHandlerScript, id, _list_ds_EffectContext_bucket);
	}
	else{
		_ds_DamageData_data = script_execute(_scr_effectHandlerScript, id, _list_ds_EffectContext_bucket, _ds_DamageData_data);
	}
}
			
return argument_count<2 ? true : _ds_DamageData_data;
