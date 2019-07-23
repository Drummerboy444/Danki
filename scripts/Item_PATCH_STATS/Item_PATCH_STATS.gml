/// @function Item_PATCH_STATS(id_item, ds_Stats_patch) Patches the given stats onto the existing stats of the item.
/// @param {id} id_item The item to patch the stats on to.
/// @param {ds_Stats} ds_Stats_patch The patch to apply.
var _id_item = argument[0];
var _ds_Stats_patch = argument[1];


ds_Stats_Add(
	_ds_Stats_patch,
	_id_item.ds_Stats_stats
);
