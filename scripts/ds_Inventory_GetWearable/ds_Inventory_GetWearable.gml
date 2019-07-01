/// @function ds_Inventory_GetWearable(ds_Inventory_inv, enum_wearable) Returns the wearable in the given
///		inventory according to the enum.
/// @param {ds_Inventory} ds_Inventory_inv The inventory to get to wearable from.
/// @param {enum} enum_wearable The wearable to get from the inventory.
/// @returns {id} The id of the wearble, this may be noone if no wearable is in that slot.
var _ds_Inventory_inv = argument[0];
var _enum_wearable = argument[1];


var _map_wearables = _ds_Inventory_inv[? DS_INVENTORY_WEARABLES];
return _map_wearables[? _enum_wearable];
