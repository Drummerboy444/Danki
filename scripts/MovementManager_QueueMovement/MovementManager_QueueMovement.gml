/// @function MovementManager_QueueMovement(MovementData_data)  Adds the instanceToMove to the
/// movement manager buffer with the target location of terminusX, terminusY
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];


var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);
var _num_bufferSize = ds_list_size(oMovementManager.list_MovementData_movementBuffer);

for (var i = 0; i < _num_bufferSize; i++) {
	var _MovementData_movement = oMovementManager.list_MovementData_movementBuffer[| i];
	var _id_entry = MovementData_GetInstanceToMove(_MovementData_movement);
	if (_id_entry == _id_instanceToMove) {
		ds_list_delete(oMovementManager.list_MovementData_movementBuffer, i);
	}
}

ds_list_add(oMovementManager.list_MovementData_movementBuffer, _MovementData_data);
