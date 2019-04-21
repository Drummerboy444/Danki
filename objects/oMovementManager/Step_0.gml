var _num_bufferSize = ds_list_size(list_movementBuffer);

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

for (var i = 0; i < _num_bufferSize; i++) {
	var _num_index = grid_movementSequencer[# 0, i];
	var _MovementData_movement = list_movementBuffer[| _num_index];
	MovementGridManager_UpdatePath(_MovementData_movement);
	MovementManager_MOVE_FROM_BUFFER(_MovementData_movement);
}
ds_list_clear(list_movementBuffer);
ds_grid_clear(grid_movementSequencer, 0);
