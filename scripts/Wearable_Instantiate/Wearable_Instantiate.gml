/// @function Wearable_Instantiate(obj_wearable, str_name, enum_rarity, ds_Stats_stats, arr_enum_effects, enum_wearableType)
///		Instantiates the given wearable and initialises it with the given values.
/// @param {object} obj_wearable The object index of the wearable to instantiate.
/// @param {string} str_name The name of the wearable.
/// @param {enum} enum_rarity The rarity of the wearable.
/// @param {ds_Stats} ds_Stats_stats The stats that the wearable gives. NOTE: This will be destroyed by the wearable.
/// @param {array} arr_enum_effects The array of effects that the wearable gives.
/// @param {enum} enum_wearableType The type of the wearable.
/// @returns {id} The id of the newly created wearable.
var _obj_wearable = argument[0];
var _str_name = argument[1];
var _enum_rarity = argument[2];
var _ds_Stats_stats = argument[3];
var _arr_enum_effects = argument[4];
var _enum_wearable = argument[5];


if (!object_is_ancestor(_obj_wearable, oWearable)) {
	ErrorHandler_FatalError("Attempted to instantiate object that doesn't inherit from oWearable, object was " + object_get_name(_obj_wearable));
}

var _id_wearable = Item_INSTANTIATE(
	_obj_wearable,
	Enum_ItemType.WEARABLE,
	_str_name,
	_enum_rarity,
	_ds_Stats_stats,
	_arr_enum_effects
);

_id_wearable.enum_wearableType = _enum_wearable;

return _id_wearable;
