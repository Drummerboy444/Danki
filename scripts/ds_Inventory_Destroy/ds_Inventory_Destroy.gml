/// @function ds_Inventory_Destroy(ds_Inventory_toDestroy) Destroys the given ds_Inventory.
/// @param {ds_Inventory} ds_Inventory_toDestroy The inventory to destroy.
var _ds_Inventory_toDestroy = argument[0];


if (!ds_Inventory_InstanceOf(_ds_Inventory_toDestroy)) {
	ErrorHandler_FatalError("Attempted to destroy an object that wasn't an instance of ds_Inventory");
}

var _map_wearables = _ds_Inventory_toDestroy[? DS_INVENTORY_WEARABLES];
ds_map_destroy(_map_wearables);

var _list_relics = _ds_Inventory_toDestroy[? DS_INVENTORY_RELICS];
ds_list_destroy(_list_relics);

ds_map_destroy(_ds_Inventory_toDestroy);
