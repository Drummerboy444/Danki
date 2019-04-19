var _num_bufferSize = ds_list_size(list_movementBuffer);

var _grid_movementSequencer = ds_grid_create(2,_num_bufferSize);
for (var i = 0; i < _num_bufferSize; i++) {
	var _MovementData_movement = list_movementBuffer[| i];
	var _num_distanceFromPlayer = Utility_DistanceBetweenObjectCentres(
		MovementData_GetInstanceToMove(_MovementData_movement),
		oPlayer
	);
	
	ds_grid_add(_grid_movementSequencer, 0, i, _MovementData_movement);
	ds_grid_add(_grid_movementSequencer, 1, i, _num_distanceFromPlayer);
}

ds_grid_sort(_grid_movementSequencer, 1, true);

for (var i = 0; i < _num_bufferSize; i++) {
	var _MovementData_movement = _grid_movementSequencer[# 0, i];
	MovementManager_MOVE_FROM_BUFFER(_MovementData_movement);
}
ds_list_clear(list_movementBuffer);
