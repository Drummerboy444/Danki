/// @function Relic_Instantiate(obj_relic, str_name, enum_rarity, ds_Stats_stats, arr_enum_effects)
///		Instantiates the given relic and initialises it with the given values.
/// @param {object} obj_relic The object index of the relic to instantiate.
/// @param {string} str_name The name of the relic.
/// @param {enum} enum_rarity The rarity of the relic.
/// @param {ds_Stats} ds_Stats_stats The stats that the relic gives. NOTE: This will be destroyed by the relic.
/// @param {array} arr_enum_effects The array of effects that the relic gives.
/// @returns {id} The id of the newly created relic.
var _obj_relic = argument[0];
var _str_name = argument[1];
var _enum_rarity = argument[2];
var _ds_Stats_stats = argument[3];
var _arr_enum_effects = argument[4];


if (!object_is_ancestor(_obj_relic, oRelic)) {
	ErrorHandler_FatalError("Attempted to instantiate object that wasn't a relic, object was " + object_get_name(_obj_relic));
}

var _id_relic = Item_INSTANTIATE(
	_obj_relic,
	Enum_ItemType.RELIC,
	_str_name,
	_enum_rarity,
	_ds_Stats_stats,
	_arr_enum_effects
);

return _id_relic;
