/// @function ds_Inventory_RemoveRelic(ds_Inventory_inv, id_relic) Removes the relic from the inventory. This
///		will error if the relic does not exist in the inventory, if unsure, check with ds_Inventory_HasRelic().
/// @param {ds_Inventory} ds_Inventory_inv The inventory to remove the relic from.
/// @param {id} id_relic The relic to remove from the inventory.
var _ds_Inventory_inv = argument[0];
var _id_relic = argument[1];


if (!ds_Inventory_InstanceOf(_ds_Inventory_inv)) {
	ErrorHandler_FatalError("Attempted to remove relic from non-ds_Inventory data structure");
}

var _list_id_relics = _ds_Inventory_inv[? DS_INVENTORY_RELICS];
var _num_relicIndex = ds_list_find_index(_list_id_relics, _id_relic);
if (_num_relicIndex == -1) {
	ErrorHandler_FatalError("Attempted to remove a relic that wasn't in the given inventory");
}

ds_list_delete(_list_id_relics, _num_relicIndex);
