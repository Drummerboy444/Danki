/// @function ds_AbilityCasterSnapshot_New(ds_Stats_stats, list_ds_EffectData_effects)
///		ds_AbilityCasterContext takes a stats object and a ds_EffectData object and stores copies
///		of these.
/// @param {ds_Stats}           ds_Stats_stats             The stats to copy.
/// @param {list_ds_EffectData} list_ds_EffectData_effects The effects to copy.
var _ds_Stats_stats = argument[0];
var _list_ds_EffectData_effects = argument[1];


if (!ds_Stats_InstanceOf(_ds_Stats_stats)) {
	ErrorHandler_FatalError("Tried to make ability caster snapshot, but stats was not an instance of ds_Stats");
}
if (!Utility_DsListInstancesOf(_list_ds_EffectData_effects, ds_EffectData_InstanceOf)) {
	ErrorHandler_FatalError("Tried to make ability caster snapshot, but effects was not an instance of list_ds_EffectData");
}

var _ds_Stats_copy = ds_Stats_CreateAndCopy(_ds_Stats_stats);
var _list_EffectData_copy = ds_list_create();
ds_EffectData_CopyList(_list_EffectData_copy, _list_ds_EffectData_effects);

var _ds_AbilityCasterContext_new = ds_map_create();
_ds_AbilityCasterContext_new[? DS_ABILITY_CASTER_SNAPSHOT_STATS] = _ds_Stats_copy;
_ds_AbilityCasterContext_new[? DS_ABILITY_CASTER_SNAPSHOT_EFFECTS] = _list_EffectData_copy;

return _ds_AbilityCasterContext_new;
