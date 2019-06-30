/// @function ds_Inventory_SetWearable(ds_Inventory_inv, id_wearable, enum_wearable) Sets the given wearable
///		to the given wearable slot in the inventory.
/// @param {ds_Inventory} ds_Inventory_inv The inventory to set the wearable in.
/// @param {id} id_wearable The wearable to add to the inventory.
/// @param {enum} enum_wearable The slot to add the wearable in, the previous item will be overridden.
var _ds_Inventory_inv = argument[0];
var _id_wearable = argument[1];
var _enum_wearable = argument[2];


if (!ds_Inventory_InstanceOf(_ds_Inventory_inv)) {
	ErrorHandler_FatalError("Attempted to set wearable in non-ds_Inventory object");
}

_ds_Inventory_inv[? _enum_wearable] = _id_wearable;
