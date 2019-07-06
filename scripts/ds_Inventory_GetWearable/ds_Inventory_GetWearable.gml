/// @function ds_Inventory_GetWearable(ds_Inventory_inv, enum_wearableSlot) Returns the wearable in the given
///		wearable slot.
/// @param {ds_Inventory} ds_Inventory_inv The inventory to get to wearable from.
/// @param {enum} enum_wearableSlot The wearable slot to get the wearable from.
/// @returns {id} The id of the wearble, this may be noone if no wearable is in that slot.
var _ds_Inventory_inv = argument[0];
var _enum_wearable = argument[1];


var _map_wearables = _ds_Inventory_inv[? DS_INVENTORY_WEARABLES];
return _map_wearables[? _enum_wearable];
