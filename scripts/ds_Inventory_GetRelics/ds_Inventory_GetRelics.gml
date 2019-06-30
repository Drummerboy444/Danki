/// @function ds_Inventory_GetRelics(ds_Inventory_inv) Gets the relics list from the given inventory.
/// @param {ds_Inventory} ds_Inventory_inv The inventory to get the relics from.
/// @returns {list_id} The list of relics in the inventory.
var _ds_Inventory_inv = argument[0];


if (!ds_Inventory_InstanceOf(_ds_Inventory_inv)) {
	ErrorHandler_FatalError("Attempted to get relics from an object that wasn't an instance of ds_Inventory");
}

return _ds_Inventory_inv[? DS_INVENTORY_RELICS];
