/// @function ds_Inventory_InstanceOf(any_data) Checks if the given data is an instance of ds_Inventory.
/// @param {any} any_data The data to check.
/// @returns {boolean} Whether the given data is an instance of ds_Inventory.
var _any_data = argument[0];


if (!ds_exists(_any_data, ds_type_map)) {
	return false;
}

if (!ds_map_exists(_any_data, DS_INVENTORY_WEARABLES)) {
	return false;
}

var _any_potentialWearables = _any_data[? DS_INVENTORY_WEARABLES];
if (!ds_exists(_any_potentialWearables, ds_type_map)) {
	return false;
}

if (ds_map_size(_any_potentialWearables) != Enum_WearableType.length) {
	return false;
}

if (!ds_map_exists(_any_data, DS_INVENTORY_RELICS)) {
	return false;
}

var _any_potentialRelics = _any_data[? DS_INVENTORY_RELICS];
if (!ds_exists(_any_potentialRelics, ds_type_list)) {
	return false;
}

return true;
