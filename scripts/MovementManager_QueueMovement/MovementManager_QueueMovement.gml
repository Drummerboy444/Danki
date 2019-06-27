/// @function MovementManager_QueueMovement(MovementData_data)  Adds the instanceToMove to the
/// movement manager buffer with the target location of terminusX, terminusY
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];


var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);

// Handle Stun
if (AbilityCaster_CheckInstanceHasEffect(_id_instanceToMove, Enum_Effects.STUN)) {
	return;
}

// Delete any old entry for instanceToMove
var _num_bufferSize = ds_list_size(oMovementManager.list_MovementData_movementBuffer);
for (var i = 0; i < _num_bufferSize; i++) {
	var _MovementData_movement = oMovementManager.list_MovementData_movementBuffer[| i];
	var _id_entry = MovementData_GetInstanceToMove(_MovementData_movement);
	if (_id_entry == _id_instanceToMove) {
		ds_list_delete(oMovementManager.list_MovementData_movementBuffer, i);
	}
}

// Handle Dash
if (AbilityCaster_CheckInstanceHasEffect(_id_instanceToMove, Enum_Effects.DASH)) {
	var _ds_DashEffectData_data = AbilityCaster_GetEffectByType(_id_instanceToMove, Enum_Effects.DASH);
	if (!ds_DashEffectData_IsRecovering(_ds_DashEffectData_data)) {
		var _num_angle = ds_DashEffectData_GetAngle(_ds_DashEffectData_data);
		var _num_speed = ds_Stats_Get(_id_instanceToMove.ds_Stats_frameStats, Enum_Stats.SPEED);
		var _num_moveX = lengthdir_x(_num_speed, _num_angle);
		var _num_moveY = lengthdir_y(_num_speed, _num_angle);
		ds_list_add(
			oMovementManager.list_MovementData_movementBuffer,
			MovementData_New(
				x + _num_moveX,
				y + _num_moveY,
				_id_instanceToMove,
				Enum_MovementType.LINEAR_SLIDING
			)
		);
		return;
	}
}

// Add movement data from parameter
ds_list_add(oMovementManager.list_MovementData_movementBuffer, _MovementData_data);
