/// @function ds_EffectHookScripts_ScriptExists(ds_EffectHookScripts_data, enum_eventHook) Assert a script exists for the given hook
///		on the ds_EffectHookScripts.
/// @param {ds_EffectHookScripts} ds_EffectHookScripts_data The ds_EffectHookScripts to check on.
/// @param {enum} enum_eventHook The hook to check for.
/// @returns {bool} True if the script exists.
var _ds_EffectHookScripts_data = argument[0];
var _enum_eventHook = argument[1];


if (!ds_EffectHookScripts_InstanceOf(_ds_EffectHookScripts_data)) {
	ErrorHandler_Error(
		"Could not check for script existence, as input was of type " + typeof(_ds_EffectHookScripts_data) + " and not of type ds_EffectHookScripts"
	);
	return false;
}

return ds_map_exists(_ds_EffectHookScripts_data, _enum_eventHook);