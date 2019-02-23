#region Doc
/// @function StatsManager_GenerateEmptyStats() Generates a map from stats to values, with each value set
///		to 0. It does this by looping through the array, so when adding a new stat, we don't need to update
///		this script.
/// @returns {map} The map from stats to values
#endregion


var _map_stats = ds_map_create();
for (var i = 0; i < Enum_Stats.length; i++) {
	_map_stats[? i] = 0; // Enums are just integers, so setting the key to i will give us an entry we can access
	                     // with the stats enum
}
return _map_stats;
