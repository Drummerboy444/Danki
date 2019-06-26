/// @function MovementManager_QueueMovement(MovementData_data)  Adds the instanceToMove to the
/// movement manager buffer with the target location of terminusX, terminusY
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];


var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);

if (AbilityCaster_CheckInstanceHasEffect(_id_instanceToMove, Enum_Effects.STUN)) {
	return;
}

var _num_bufferSize = ds_list_size(oMovementManager.list_MovementData_movementBuffer);
for (var i = 0; i < _num_bufferSize; i++) {
	var _MovementData_movement = oMovementManager.list_MovementData_movementBuffer[| i];
	var _id_entry = MovementData_GetInstanceToMove(_MovementData_movement);
	if (_id_entry == _id_instanceToMove) {
		ds_list_delete(oMovementManager.list_MovementData_movementBuffer, i);
	}
}

if (AbilityCaster_CheckInstanceHasEffect(_id_instanceToMove, Enum_Effects.DASH)) {
	var _ds_DashEffectData_data = AbilityCaster_GetEffectByType(_id_instanceToMove, Enum_Effects.DASH);
	if (!ds_DashEffectData_IsRecovering(_ds_DashEffectData_data)) {
		ds_list_add(
			oMovementManager.list_MovementData_movementBuffer,
			MovementData_New(
				x, // Calculate from Dash effectdata
				y, // Calculate from Dash effectdata
				_id_instanceToMove,
				MovementData_GetMovementType(_MovementData_data)
			);
		);
		return;
	}
}

ds_list_add(oMovementManager.list_MovementData_movementBuffer, _MovementData_data);
