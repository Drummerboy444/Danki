/// @function OneShot_GetOneShotScripts(OneShot_oneShot) Gets the OneShotScripts data structure of an oneShot.
/// @param {OneShot} OneShot_oneShot The oneShot
/// @returns {OneShotScripts} The oneShot scripts data structure.
var _OneShot_oneShot = argument[0];

if(!OneShot_InstanceOf(_OneShot_oneShot)){
	ErrorHandler_FatalError("Tried to get OneShotScripts from non Ability structure.");
}

return _OneShot_oneShot[5];