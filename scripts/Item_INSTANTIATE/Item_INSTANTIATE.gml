/// @function Item_INSTANTIATE(obj_itemChild, str_name, enum_rarity, ds_Stats_stats, arr_enum_effects)
///		Instantiates the given item and initialises it with the given values.
/// @param {object} obj_itemChild The object index of the item child to instantiate.
/// @param {string} str_name The name of the item.
/// @param {enum} enum_rarity The rarity of the item.
/// @param {ds_Stats} ds_Stats_stats The stats that the item gives. NOTE: This will be destroyed by the item.
/// @param {array} arr_enum_effects The array of effects that the item gives.
/// @returns {id} The id of the newly created item.
var _obj_itemChild = argument[0];
var _str_name = argument[1];
var _enum_rarity = argument[2];
var _ds_Stats_stats = argument[3];
var _arr_enum_effects = argument[4];


if (!object_is_ancestor(_obj_itemChild, oItem)) {
	ErrorHandler_FatalError("Attempted to instantiate object that doesn't inherit from oItem, object was " + object_get_name(_obj_itemChild));
}

var _id_item = Utility_InstantiateAtOrigin(_obj_itemChild);

with (_id_item) {
	str_name = _str_name;
	enum_rarity = _enum_rarity;
	ds_Stats_stats = _ds_Stats_stats;
	arr_enum_effects = _arr_enum_effects;
}

return _id_item;
