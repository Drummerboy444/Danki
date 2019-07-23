/// @function Item_Instantiate(obj_item, ?ds_Stats_patch) Instantiates the given item.
/// @param {object} obj_item The item to instantiate
/// @param {ds_Stats} ?ds_Stats_patch The stats patch to apply to the item. If not given, the
///		stats will be randomised according to the item's relevant properties.
/// @return id The instance id of the newly created item.
var _obj_item = argument[0];
var _ds_Stats_patch = argument_count > 1 ? argument[1] : undefined;


if (!object_is_ancestor(_obj_item, oItem)) {
	ErrorHandler_FatalError("Attempted to instantiate object that doesn't inherit from oItem, object was: " + object_get_name(_obj_item));
}

var _id_item = Utility_InstantiateAtOrigin(_obj_item);

with (_id_item) {
	if (_ds_Stats_patch) {
		Item_PATCH_STATS(_ds_Stats_patch);
	} else {
		Item_RANDOMISE();
	}
}

return _id_item;
