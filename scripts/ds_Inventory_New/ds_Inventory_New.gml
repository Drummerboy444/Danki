/// @function ds_Inventory_New() Creates a new ds inventory. All wearables are set to noone and the relics list is empty.
/// @returns {ds_Inventory} The new ds_Inventory.


var _map_wearables = ds_map_create();
for (var i = 0; i < Enum_WearableSlot.length; i++) {
	_map_wearables[? i] = noone;
}

var _list_id_relics = ds_list_create();

var _ds_Inventory_new = ds_map_create();
_ds_Inventory_new[? DS_INVENTORY_WEARABLES] = _map_wearables;
_ds_Inventory_new[? DS_INVENTORY_RELICS] = _list_id_relics;

return _ds_Inventory_new;
