/// @function ds_EffectHookScripts_SetScript(ds_EffectHookScripts_data, enum_eventHook, scr_script) Sets the script for a given hook on the effect.
/// @param {ds_EffectHookScripts} ds_EffectHookScripts_data The EffectHookScripts to set the script for.
/// @param {enum} enum_eventHook The hook to set the script for.
/// @param {scr} scr_script The script to set to.
/// @returns {bool} True if the script was set successfully.
var _ds_EffectHookScripts_data = argument[0];
var _enum_eventHook = argument[1];
var _scr_script = argument[2];


if (!ds_EffectHookScripts_InstanceOf(_ds_EffectHookScripts_data)) {
	ErrorHandler_Error(
		"Could not set script for input, as it was of type " + typeof(_ds_EffectHookScripts_data) + " and not of type ds_EffectHookScripts"
	);
	return false;
}

if(!script_exists(_scr_script)){
	ErrorHandler_Error(
		"Could not set script for input: the script was not recognised."
	);
	return false;
}

_ds_EffectHookScripts_data[? _enum_eventHook] = _scr_script

return true;
