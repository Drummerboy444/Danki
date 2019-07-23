/// @function ds_Stats_Add(ds_Stats_source, ds_Stats_target) Adds the source stats to the target stats.
/// @param {ds_Stats} ds_Stats_source The stats to add from.
/// @param {ds_Stats} ds_Stats_target The stats to add to.
var _ds_Stats_source = argument[0];
var _ds_Stats_target = argument[1];


if (!ds_Stats_InstanceOf(_ds_Stats_source)) {
	ErrorHandler_Error("Tried to add stats with a non-ds_Stats source.");
}

if (!ds_Stats_InstanceOf(_ds_Stats_target)) {
	ErrorHandler_Error("Tried to add stats with a non-ds_Stats target.");
}


for (var _enum_stat = 0; _enum_stat < Enum_Stats.length; _enum_stat++) {
	var _num_newValue = ds_Stats_Get(_ds_Stats_source, _enum_stat) + ds_Stats_Get(_ds_Stats_target, _enum_stat);
	ds_Stats_Set(
		_ds_Stats_target,
		_enum_stat,
		_num_newValue
	);
}
