/// @function ds_Stats_Copy(ds_Stats_stats) Copies the contents of a ds_Stats.
/// @param {ds_Stats} ds_Stats_stats The target ds_Stats to copy.
/// @returns {ds_Stats} A new copied ds_Stats.
var _ds_Stats_stats = argument[0];


if (!ds_Stats_InstanceOf(_ds_Stats_stats)) {
	ErrorHandler_Error("Cannot copy stats, as the target was not of type ds_Stats");
}

var _ds_Stats_new = ds_map_create();
ds_map_copy(_ds_Stats_new, _ds_Stats_stats);

return _ds_Stats_new;
