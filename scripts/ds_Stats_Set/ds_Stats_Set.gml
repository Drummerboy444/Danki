/// @function ds_Stats_Set(ds_Stats_stats, enum_stat, num_value) Sets the value of the given stat on the given
///		ds_Stats instance.
/// @param {ds_Stats} ds_Stats_stats The stats the set the value on.
/// @param {enum} enum_stat The stat to set.
/// @param {number} num_value The value to set the stat true.
/// @returns {boolean} True if the stat was successfully set.
var _ds_Stats_stats = argument[0];
var _enum_stat = argument[1];
var _num_value = argument[2];


if (!ds_Stats_InstanceOf(_ds_Stats_stats)) {
	ErrorHandler_Error("Tried to set stat on non Stats structure.");
	return false;
}

_ds_Stats_stats[? _enum_stat] = _num_value;
return true;
