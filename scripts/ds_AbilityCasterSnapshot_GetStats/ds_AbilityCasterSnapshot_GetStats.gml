/// @function ds_AbilityCasterSnapshot_GetStats(ds_AbilityCasterSnapshot_snapshot) Gets the stats from the 
///		given ability caster snapshot.
/// @param {ds_AbilityCasterSnapshot} ds_AbilityCasterSnapshot_snapshot The ability caster snapshot.
/// @returns {ds_Stats} The stats from the snapshot.
var _ds_AbilityCasterSnapshot_snapshot = argument[0];


if (!ds_AbilityCasterSnapshot_InstanceOf(_ds_AbilityCasterSnapshot_snapshot)) {
	ErrorHandler_FatalError("Tried to get stats from non-AbilityCasterSnapshot data structure");
}

return _ds_AbilityCasterSnapshot_snapshot[? DS_ABILITY_CASTER_SNAPSHOT_STATS];
