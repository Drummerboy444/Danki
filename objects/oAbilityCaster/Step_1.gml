// Tick down effects, remove if expired
AbilityCaster_TICK_EFFECTS();

// Add effects from buffer
AbilityCaster_ADD_BUFFER_EFFECTS();

// Reset frame stats to stats
ds_map_copy(map_frameStats, map_stats);

//Apply effects to stats (mostly todo)
AbilityCaster_APPLY_EFFECTS();