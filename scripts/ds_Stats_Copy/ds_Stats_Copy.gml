/// @function ds_Stats_Copy(ds_Stats_copyTo, ds_Stats_copyFrom) Copies the contents of the ds_Stats_copyFrom
/// to the ds_Stats_copyTo.
/// @param {ds_Stats} ds_Stats_copyTo The target ds_Stats to recieve the copy.
/// @param {ds_Stats} ds_Stats_copyFrom The source ds_Stats to be copied.
var _ds_Stats_copyTo = argument[0];
var _ds_Stats_copyFrom = argument[1];


if (!ds_Stats_InstanceOf(_ds_Stats_copyFrom)) {
	ErrorHandler_Error("Cannot copy stats, as the copyFrom was not of type ds_Stats");
}
if (!ds_Stats_InstanceOf(_ds_Stats_copyTo)) {
	ErrorHandler_Error("Cannot copy stats, as the copyTo was not of type ds_Stats");
}

ds_map_clear(_ds_Stats_copyTo);
ds_map_copy(_ds_Stats_copyTo, _ds_Stats_copyFrom);
