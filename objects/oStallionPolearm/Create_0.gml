event_inherited();

var _ds_Stats_stats = ds_Stats_New();
ds_Stats_Set(_ds_Stats_stats, Enum_Stats.STRENGTH, 2);
ds_Stats_Set(_ds_Stats_stats, Enum_Stats.SPEED, 4);

var _arr_enum_Effects_effects = [];

var _arr_enum_Stats_randomisableStats = [
	Enum_Stats.HEALTH,
	Enum_Stats.HASTE
];

Wearable_Setup(
	"Stallion Polearm",
	Enum_ItemRarity.EPIC,
	_ds_Stats_stats,
	_arr_enum_Effects_effects,
	_arr_enum_Stats_randomisableStats,
	2
);
