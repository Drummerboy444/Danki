var _num_bufferSize = ds_list_size(list_movementBuffer);

for (var i = 0; i < _num_bufferSize; i++) {
	var _MovementData_movement = list_movementBuffer[| i];
	MovementManager_MOVE_FROM_BUFFER(_MovementData_movement);
}
ds_list_clear(list_movementBuffer);
