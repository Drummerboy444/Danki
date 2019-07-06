/// @function Wearable_Instantiate(obj_wearableChild, str_name, enum_rarity, ds_Stats_stats, arr_enum_effects)
///		Instantiates the given wearable and initialises it with the given values.
/// @param {object} obj_wearableChild The object index of the wearable child to instantiate.
/// @param {string} str_name The name of the wearable.
/// @param {enum} enum_rarity The rarity of the wearable.
/// @param {ds_Stats} ds_Stats_stats The stats that the wearable gives. NOTE: This will be destroyed by the wearable.
/// @param {array} arr_enum_effects The array of effects that the wearable gives.
/// @returns {id} The id of the newly created wearable.
var _obj_wearableChild = argument[0];
var _str_name = argument[1];
var _enum_rarity = argument[2];
var _ds_Stats_stats = argument[3];
var _arr_enum_effects = argument[4];


if (!object_is_ancestor(_obj_wearableChild, oWearable)) {
	ErrorHandler_FatalError("Attempted to instantiate object that doesn't inherit from oWearable, object was " + object_get_name(_obj_wearableChild));
}

var _id_wearable = Item_INSTANTIATE(
	_obj_wearableChild,
	_str_name,
	_enum_rarity,
	_ds_Stats_stats,
	_arr_enum_effects
);

return _id_wearable;
