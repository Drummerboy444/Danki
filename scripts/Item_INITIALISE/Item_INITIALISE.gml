/// @function Item_INITIALISE(id_item, enum_type, str_name, enum_rarity, ds_Stats_stats, arr_enum_effects)
///		Initialises the given item with the given values.
/// @param {id} id_item The id of the item to initialise.
/// @param {enum} enum_type The type of the item.
/// @param {string} str_name The name of the item.
/// @param {enum} enum_rarity The rarity of the item.
/// @param {ds_Stats} ds_Stats_stats The stats that the item gives. NOTE: This will be destroyed by the item.
/// @param {array} arr_enum_effects The array of effects that the item gives.
var _id_item = argument[0];
var _enum_type = argument[1];
var _str_name = argument[2];
var _enum_rarity = argument[3];
var _ds_Stats_stats = argument[4];
var _arr_enum_effects = argument[5];


if (!Utility_ObjectIsAncestorOfInstance(oItem, _id_item)) {
	ErrorHandler_FatalError("Attempted to initialise values of object that was not an item, object was " + object_get_name(_id_item.object_index));
}

with (_id_item) {
	enum_type = _enum_type;
	str_name = _str_name;
	enum_rarity = _enum_rarity;
	ds_Stats_stats = _ds_Stats_stats;
	arr_enum_effects = _arr_enum_effects;
}
