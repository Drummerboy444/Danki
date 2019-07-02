/// @function ds_Inventory_AddRelic(ds_Inventory_inv, id_relic) Adds the relic to the given inventory.
/// @param {ds_Inventory} ds_Inventory_inv The inventory to add the relic to.
/// @param {in} id_relic The instance id of the relic to add to the inventory.
var _ds_Inventory_inv = argument[0];
var id_relic = argument[1];


if (!ds_Inventory_InstanceOf(_ds_Inventory_inv)) {
	ErrorHandler_FatalError("Attempted to add relic to non-ds_Inventory data structure")
}

var _list_id_relics = _ds_Inventory_inv[? DS_INVENTORY_RELICS];
ds_list_add(_list_id_relics, id_relic);
