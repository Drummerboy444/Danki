/// @function ds_Stats_Get(ds_Stats_stats, enum_stat) Gets the given stat from the given ds_Stat.
/// @param {ds_Stats} ds_Stats_stats The stats to get the stat from.
/// @param {enum} enum_stat The stat to look up.
/// @returns {number} The value of the stat
var _ds_Stats_stats = argument[0];
var _enum_stat = argument[1];


if (!ds_Stats_InstanceOf(_ds_Stats_stats)) {
	ErrorHandler_Error("Tried to get stat from non Stats structure.");
}

return _ds_Stats_stats[? _enum_stat];
