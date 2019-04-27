var _num_bufferSize = ds_list_size(list_movementBuffer);

// Update paths for all movers.
for (var i = 0; i < _num_bufferSize; i++) {
	var _MovementData_movement = list_movementBuffer[| i];
	MovementGridManager_UpdatePath(_MovementData_movement);
}

// Make and sort the movement sequencer grid.
ds_grid_resize(grid_movementSequencer, 2,_num_bufferSize);

for (var i = 0; i < _num_bufferSize; i++) {
	var _MovementData_movement = list_movementBuffer[| i];
	var _num_distanceFromPlayer = Utility_DistanceBetweenObjectCentres(
		MovementData_GetInstanceToMove(_MovementData_movement),
		oPlayer
	);
	
	ds_grid_add(grid_movementSequencer, 0, i, i);
	ds_grid_add(grid_movementSequencer, 1, i, _num_distanceFromPlayer);
}

ds_grid_sort(grid_movementSequencer, 1, true);

// Move according to sequencer.
for (var _num_row = 0; _num_row < _num_bufferSize; _num_row++) {
	var _num_index = grid_movementSequencer[# 0, _num_row];
	var _MovementData_movement = list_movementBuffer[| _num_index];
	MovementManager_MOVE_FROM_BUFFER(_MovementData_movement);
}

// Clean up
ds_list_clear(list_movementBuffer);
ds_grid_clear(grid_movementSequencer, 0);
