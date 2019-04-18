event_inherited();

var _ds_Stats_baseStats = ds_Stats_New();
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.HEALTH, 10);
ds_Stats_Set(_ds_Stats_baseStats, Enum_Stats.SPEED, 2);
Enemy_Setup(true, true, _ds_Stats_baseStats, AbilityCaster_NO_OP_PLAN, 200);
