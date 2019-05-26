/// @function ds_AbilityCasterSnapshot_Destroy(ds_AbilityCasterSnapshot_snapshot) Destroys the given ability caster snapshot.
/// @param {ds_AbilityCasterSnapshot} ds_AbilityCasterSnapshot_snapshot The ability caster snapshot to destroy.
var _ds_AbilityCasterSnapshot_snapshot = argument[0];


if (!ds_AbilityCasterSnapshot_InstanceOf(_ds_AbilityCasterSnapshot_snapshot)) {
	ErrorHandler_FatalError("Attempting to destroy object that isn't an instance of AbilityCasterSnapshot");
}

var _ds_Stats_stats = _ds_AbilityCasterSnapshot_snapshot[? DS_ABILITY_CASTER_SNAPSHOT_STATS];
ds_Stats_Destroy(_ds_Stats_stats);

var _list_ds_EffectData_effects = _ds_AbilityCasterSnapshot_snapshot[? DS_ABILITY_CASTER_SNAPSHOT_EFFECTS];
for (var i = 0; i < ds_list_size(_list_ds_EffectData_effects); i++) {
	var _ds_EffectData_effect = _list_ds_EffectData_effects[| i];
	ds_EffectData_Destroy(_ds_EffectData_effect);
}
ds_list_destroy(_list_ds_EffectData_effects);

ds_map_destroy(_ds_AbilityCasterSnapshot_snapshot);
