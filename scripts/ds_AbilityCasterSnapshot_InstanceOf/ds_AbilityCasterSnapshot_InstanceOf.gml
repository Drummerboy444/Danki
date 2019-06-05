/// @function ds_AbilityCasterSnapshot_InstanceOf(any_data) Returns true if the given data is an instance of ability caster snapshot.
/// @param {any} any_data The data to check.
/// @returns {boolean} True if the data is an instance of AbilityCasterSnapshot.
var _any_data = argument[0];


return
	ds_exists(_any_data, ds_type_map)
	&& ds_map_size(_any_data) == 2
	&& ds_map_exists(_any_data, DS_ABILITY_CASTER_SNAPSHOT_STATS)
	&& ds_Stats_InstanceOf(_any_data[? DS_ABILITY_CASTER_SNAPSHOT_STATS])
	&& ds_map_exists(_any_data, DS_ABILITY_CASTER_SNAPSHOT_EFFECTS)
	&& Utility_DsListInstancesOf(
		_any_data[? DS_ABILITY_CASTER_SNAPSHOT_EFFECTS],
		ds_EffectData_InstanceOf
	);
