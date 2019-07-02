/// @function MovementManager_ClearMovement(id_AbilityCaster) Clears any queued movement for instance.
/// @param {id} id_AbilityCaster
var _id_AbilityCaster = argument[0];


var _num_bufferSize = ds_list_size(oMovementManager.list_MovementData_movementBuffer);
for (var i = 0; i < _num_bufferSize; i++) {
	var _MovementData_movement = oMovementManager.list_MovementData_movementBuffer[| i];
	var _id_Mover = MovementData_GetInstanceToMove(_MovementData_movement);
	if (_id_Mover == _id_AbilityCaster) {
		ds_list_delete(oMovementManager.list_MovementData_movementBuffer, i);
	}
}
