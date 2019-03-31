/// @function ds_OneShot_GetCastScript(ds_OneShot_oneShot) Gets the cast script a oneShot.
/// @param {OneShot} ds_OneShot_oneShot The oneShot
/// @returns {script} The cast script.
var _ds_OneShot_oneShot = argument[0];

if(!ds_OneShot_InstanceOf(_ds_OneShot_oneShot)){
	ErrorHandler_FatalError("Tried to get cast script from non OneShot structure.");
}

return _ds_OneShot_oneShot[? DS_ONE_SHOT_CAST_SCRIPT];