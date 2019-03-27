/// @function ds_OneShot_GetOneShotScripts(ds_OneShot_oneShot) Gets the OneShotScripts data structure of an oneShot.
/// @param {OneShot} ds_OneShot_oneShot The oneShot
/// @returns {OneShotScripts} The oneShot scripts data structure.
var _ds_OneShot_oneShot = argument[0];

if(!ds_OneShot_InstanceOf(_ds_OneShot_oneShot)){
	ErrorHandler_FatalError("Tried to get OneShotScripts from non Ability structure.");
}

return _ds_OneShot_oneShot[? "castScript"];