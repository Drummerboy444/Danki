/// @function ds_EffectHookScripts_Destroy(ds_EffectHookScripts_data) Destroys the given ds_EffectHookScripts.
/// @param {ds_EffectHookScripts} ds_EffectHookScripts_data The ds_EffectHookScripts to destroy.
/// @returns {boolean} True if the EffectHookScripts was destroyed.
var _ds_EffectHookScripts_data = argument[0];


if (!ds_EffectHookScripts_InstanceOf(_ds_EffectHookScripts_data)) {
	ErrorHandler_Error(
		"Variable was not destroyed as it was of type " + typeof(_ds_EffectHookScripts_data) + " and not of type ds_EffectHookScripts"
	);
	return false;
}

ds_map_destroy(_ds_EffectHookScripts_data);
return true;
