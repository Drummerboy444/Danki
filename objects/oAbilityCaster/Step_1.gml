// Reset frame stats to stats
ds_map_copy(map_frameStats, map_stats);

// Tick down effects, remove if expired
AbilityCaster_TICK_EFFECTS();

// Add effects from buffer
AbilityCaster_ADD_BUFFER_EFFECTS();

// Apply effects to stats
AbilityCaster_APPLY_EFFECTS();

// Use last frame's agenda to plan next agenda
ds_Agenda_Copy(ds_Agenda_previousAgenda, ds_Agenda_agenda);
ds_Agenda_Clear(ds_Agenda_agenda);
ds_Agenda_agenda = script_execute(scr_plan, ds_Agenda_previousAgenda, ds_Agenda_agenda);
