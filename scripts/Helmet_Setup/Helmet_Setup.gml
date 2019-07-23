/// @function Helmet_Setup(
///		str_name,
///		enum_rarity,
///		ds_Stats_stats,
///		arr_enum_effects,
///		?arr_enum_Stats_randomisableStats,
///		?num_totalRandomisablePoints
/// )
/// @param {string} str_name
/// @param {enum} enum_rarity
/// @param {ds_Stats} ds_Stats_stats NOTE: This will be destroyed by the item.
/// @param {array} arr_enum_effects
/// @param {array} ?arr_enum_Stats_randomisableStats Defaults to []
/// @param {number} ?num_totalRandomisablePoints Defaults to 0
var _str_name = argument[0];
var _enum_rarity = argument[1];
var _ds_Stats_stats = argument[2];
var _arr_enum_effects = argument[3];
var _arr_enum_Stats_randomisableStats = argument_count > 4 ? argument[4] : [];
var _num_totalRandomisablePoints = argument_count > 5 ? argument[5] : 0;


Wearable_Setup(
	_str_name,
	_enum_rarity,
	_ds_Stats_stats,
	_arr_enum_effects,
	_arr_enum_Stats_randomisableStats,
	_num_totalRandomisablePoints
);
