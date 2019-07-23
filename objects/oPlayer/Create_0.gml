event_inherited();

var _ds_Stats_baseStats = ds_Stats_New();
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.SPEED, 3);
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.STRENGTH, 1);
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.HEALTH, 500);
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.HASTE, 5);

Mortal_Setup(
	true,
	true,
	_ds_Stats_baseStats,
	AbilityCaster_NO_OP_PLAN,
	Mortal_BASIC_DEATH_SCRIPT,
	0,
	oEnemy
);