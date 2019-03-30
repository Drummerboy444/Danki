var _num_bufferSize = ds_list_size(list_movementBuffer);

if (_num_bufferSize > 0) {
	for (var i = 0; i < _num_bufferSize; i++) {
		var _MovementData_bufferLoop = list_movementBuffer[| i];
		MovementManager_MOVE_FROM_BUFFER(_MovementData_bufferLoop);
	}
	ds_list_clear(list_movementBuffer);
}
