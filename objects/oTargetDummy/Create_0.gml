event_inherited();

var _map_baseStats = StatsManager_GenerateEmptyStats();

_map_baseStats[? Enum_Stats.HEALTH] = 10;

Enemy_Setup(true, true, _map_baseStats, AbilityCaster_NO_OP_PLAN, 200);