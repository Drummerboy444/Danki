/// @function ds_Stats_CreateAndCopy(ds_Stats_toCopy) Returns a copy of the given ds_Stats.
/// @param {ds_Stats} ds_Stats_toCopy The stats to copy.
/// @returns {ds_Stats} The newly created copy.
var _ds_Stats_toCopy = argument[0];


if (!ds_Stats_InstanceOf(_ds_Stats_toCopy)) {
	ErrorHandler_Error("Cannot create and copy stats, as the stats to copy was not of type ds_Stats");
}

var _map_newStats = ds_map_create();
ds_map_copy(_map_newStats, _ds_Stats_toCopy);
return _map_newStats;
