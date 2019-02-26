// Tick down effects, remove if expired
AbilityCaster_TICK_EFFECTS();

// Add effects from buffer
AbilityCaster_ADD_BUFFER_EFFECTS();

// Reset current stats to base stats
ds_map_copy(map_currentStats, map_baseStats);

//Apply effects to stats (mostly todo)
AbilityCaster_APPLY_EFFECTS_TO_STATS();