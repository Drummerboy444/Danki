/// @function ds_EffectHookScripts_GetScript(ds_EffectHookScripts_data, enum_eventHook) Gets the script for a given hook on the effect.
///		Returns undefined if no such script exists.
/// @param {ds_EffectHookScripts} ds_EffectHookScripts_data The ds_EffectHookScripts to get the script for.
/// @param {enum} enum_eventHook The hook to get the script for.
/// @returns {scr} The script if one exists, undefined otherwise.
var _ds_EffectHookScripts_data = argument[0];
var _enum_eventHook = argument[1];


if (!ds_EffectHookScripts_InstanceOf(_ds_EffectHookScripts_data)) {
	ErrorHandler_Error(
		"Could not get script for input, as it was of type " + typeof(_ds_EffectHookScripts_data) + " and not of type ds_EffectHookScripts"
	);
	return undefined;
}

if(ds_map_exists(_ds_EffectHookScripts_data, _enum_eventHook)){
	return _ds_EffectHookScripts_data[? _enum_eventHook];
}

return undefined;
