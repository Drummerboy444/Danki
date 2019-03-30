/// @function ds_Stats_Destroy(ds_Stats_stats) Destroys the given stats instance.
/// @param {ds_Stats} ds_Stats_stats The ds_Stats to destroy.
/// @returns {boolean} Whether the instance was successfully destroyed.
var _ds_Stats_stats = argument[0];


if (!ds_Stats_InstanceOf(_ds_Stats_stats)) {
	ErrorHandler_Error(
		"Variable was not destroyed as it was of type " + typeof(_ds_Stats_stats) + " and not of type ds_Stats"
	);
	return false;
}

ds_map_destroy(_ds_Stats_stats);
return true;
