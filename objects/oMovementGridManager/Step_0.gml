if (num_debounceTimer > 0) {
	num_debounceTimer--;
} else if (bool_regenerationQueued) {
	MovementGridManager_REGENERATE();
}
