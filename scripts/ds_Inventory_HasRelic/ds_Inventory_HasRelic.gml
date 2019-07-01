/// @function ds_Inventory_HasRelic(ds_Inventory_inv, id_relic) Asserts whether the relic is in the inventory.
/// @param {ds_Inventory} ds_Inventory_inv The inventory to check in.
/// @param {id} id_relic The id of the relic to check for.
/// @returns {boolean} Whether the relic is in the inventory.
var _ds_Inventory_inv = argument[0];
var _id_relic = argument[1];


if (!ds_Inventory_InstanceOf(_ds_Inventory_inv)) {
	ErrorHandler_FatalError("Attempted to check if relic existed in non-ds_Inventory data structure");
}

var _list_id_relics = _ds_Inventory_inv[? DS_INVENTORY_RELICS];
return ds_list_find_index(_list_id_relics, _id_relic) != -1;
