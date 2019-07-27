/// @function Item_PATCH_STATS(ds_Stats_patch) Patches the given stats onto the item.
/// @param {ds_Stats} ds_Stats_patch The patch to apply.
var _ds_Stats_patch = argument[0];


ds_Stats_Add(
	_ds_Stats_patch,
	ds_Stats_stats
);
