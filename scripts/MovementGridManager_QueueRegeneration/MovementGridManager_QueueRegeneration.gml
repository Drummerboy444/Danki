/// function MovementGridManager_QueueRegeneration() This will queue a regeneration of the current movement
///		gird. This will happen instantly if a grid hasn't been rengerated in a while, otherwise the request
///		to regenerate will be debounced accordingly.
///		NOTE: this will not create a new grid, so the size will not change, if moving rooms then the initialise
///		script must be called again.

with (oMovementGridManager) {
	if (num_debounceTimer <= 0) {
		MovementGridManager_REGENERATE();
		num_debounceTimer = MOVEMENT_GRID_MANAGER_DEBOUNCE_TIME;
	} else {
		bool_regenerationQueued = true;
	}
}
