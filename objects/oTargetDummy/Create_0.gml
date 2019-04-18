event_inherited();

var _ds_Stats_baseStats = ds_Stats_New();
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.HEALTH, 200);
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.SPEED, 2);
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.STRENGTH, 1);
Enemy_Setup(true, true, _ds_Stats_baseStats, AbilityCaster_NO_OP_PLAN, Mortal_BASIC_DEATH_SCRIPT, 200);
