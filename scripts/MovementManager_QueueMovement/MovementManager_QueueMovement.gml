/// @function MovementManager_QueueMovement(MovementData_data)  Adds the thingToMove to the
/// movement manager buffer with the target location of terminusX, terminusY
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];


var _id_thingToMove = MovementData_GetThingToMoveId(_MovementData_data);
var _num_bufferSize = ds_list_size(oMovementManager.list_movementBuffer);

for (var i = 0; i < _num_bufferSize; i++) {
	var _id_entry = MovementData_GetThingToMoveId(list_movementBuffer[| i]);
	if (_id_entry == _id_thingToMove) {
		ds_list_delete(list_movementBuffer, i);
		break;
	}
}

ds_list_add(oMovementManager.list_movementBuffer, _MovementData_data);
