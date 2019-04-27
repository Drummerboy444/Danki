/// @function MovementManager_MOVE_FROM_BUFFER(MovementData_data) Moves the InstanceToMove towards Terminus.
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];

//if(MovementData_CheckMovementIsLinear(_MovementData_data)){
	MovementManager_MOVE_LINEARLY(_MovementData_data)
//}

// Else we handle movement according to the path.
