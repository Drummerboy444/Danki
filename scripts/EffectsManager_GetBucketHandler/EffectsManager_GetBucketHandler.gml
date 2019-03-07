/// @function EffectsManager_GetBucketHandler(enum_effect) Returns the script of the effects handler script.
/// @param {enum} enum_effect.
/// @returns {script} handler script.
var _enum_effect = argument[0];

var _scr_effectHandlerScript = oEffectsManager.map_effectToBucketHandler[? _enum_effect];

if( is_undefined(_scr_effectHandlerScript)) {
	ErrorHandler_Error("No bucket handler script for given effects enum.")
	return noone;
}

return _scr_effectHandlerScript;