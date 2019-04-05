/// @function AbilityCaster_APPLY_EFFECTS(enum_eventHook, DamageData_data?) Applies active effects based on the event hook.
/// @param {enum} enum_eventHook The event hook to apply effects on.
/// @param {DamageData} DamageData_data The damage data to be processed by the handler. Optional.
/// @returns {DamageData} The processed damage data if relevant.

var _enum_eventHook = argument[0];
var _DamageData_data = argument_count<2 ? undefined : argument[1];

AbilityCaster_EMPTY_BUCKETS();

for (var i = 0; i < ds_list_size(list_activeEffects); i++) {
	var _EffectData_active = list_activeEffects[| i];
	var _enum_effect = EffectData_GetEffect(_EffectData_active);
	var _list_bucket = map_effectToBucket[? _enum_effect];
	ds_list_add(_list_bucket, _EffectData_active);
}


for (var _enum_effect = 0; _enum_effect < Enum_Effects.length; _enum_effect++) {
	var _list_bucket = map_effectToBucket[? _enum_effect];
	
	if(!ds_EffectHookScripts_ScriptExists(oEffectsManager.map_effectToEventHookScripts[? _enum_effect], _enum_eventHook)
		or ds_list_empty(_list_bucket))
	{
		continue;
	}
		
	var _scr_effectHandlerScript = ds_EffectHookScripts_GetScript(
		oEffectsManager.map_effectToEventHookScripts[? _enum_effect], _enum_eventHook);
			
	if(argument_count<2){
		script_execute(_scr_effectHandlerScript, id, _list_bucket);
	}
	else{
		_DamageData_data = script_execute(_scr_effectHandlerScript, id, _list_bucket, _DamageData_data);
	}
}
			
return argument_count<2 ? true : _DamageData_data;
