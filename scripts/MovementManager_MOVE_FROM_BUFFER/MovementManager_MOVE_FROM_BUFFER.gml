/// @function MovementManager_MOVE_FROM_BUFFER(MovementData_data) Moves the InstanceToMove towards Terminus.
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];

switch (MovementData_GetMovementType(_MovementData_data)) {
	case Enum_MovementType.LINEAR_SLIDING:
		MovementManager_MOVE_LINEAR_SLIDING(_MovementData_data);
		break;
	case Enum_MovementType.DYNAMIC:
		if(MovementManager_LINE_OF_SIGHT(_MovementData_data)){
			MovementManager_MOVE_LINEAR_SLIDING(_MovementData_data);
		} else {
			MovementManager_MOVE_PATHING(_MovementData_data);
		}
		break;
	case Enum_MovementType.PATHING:
		MovementManager_MOVE_PATHING(_MovementData_data);
		break;
}
