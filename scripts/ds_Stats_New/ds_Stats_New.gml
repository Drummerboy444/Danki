/// @function ds_Stats_New() Creates a new instance of ds_Stats (a map from Enum_Stats to number values) with
///		all values set to 0.
/// @returns {ds_Stats} The new stats instance.


var _ds_Stats_new = ds_map_create();
for (var _enum_stat = 0; _enum_stat < Enum_Stats.length; _enum_stat++) {
	_ds_Stats_new[? _enum_stat] = 0;
}
return _ds_Stats_new;
