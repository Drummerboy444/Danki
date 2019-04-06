/// @function EffectsManager_GetBucketHandler(enum_effect) Returns the script of the effects handler script.
/// @param {enum} enum_effect.
/// @returns {script} handler script.
var _enum_effect = argument[0];

var _scr_effectHandlerScript = ds_EffectHookScripts_GetScript(
	oEffectsManager.map_effectToEventHookScripts[? _enum_effect],
	Enum_EventHooks.ON_CALCULATE_STATS
)

if( is_undefined(_scr_effectHandlerScript)) {
	ErrorHandler_Error("No bucket handler script for given effects enum.")
	return noone;
}

return _scr_effectHandlerScript;