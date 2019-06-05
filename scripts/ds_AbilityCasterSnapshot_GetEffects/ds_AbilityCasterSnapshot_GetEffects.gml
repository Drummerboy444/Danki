/// @function ds_AbilityCasterSnapshot_GetEffects(ds_AbilityCasterSnapshot_snapshot) Gets the casting effects 
///		from the snapshot.
/// @param {ds_AbilityCasterSnapshot} ds_AbilityCasterSnapshot_snapshot The snapshot.
/// @returns {list_ds_EffectData} The effects from the snapshot.
var _ds_AbilityCasterSnapshot_snapshot = argument[0];


if (!ds_AbilityCasterSnapshot_InstanceOf(_ds_AbilityCasterSnapshot_snapshot)) {
	ErrorHandler_FatalError("Tried to get effects from non-AbilityCasterSnapshot data structure");
}

return _ds_AbilityCasterSnapshot_snapshot[? DS_ABILITY_CASTER_SNAPSHOT_EFFECTS];
