/// @function MovementManager_MOVE_FROM_BUFFER(MovementData_data) Moves the InstanceToMove towards Terminus.
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];


var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);
SpriteManager_SetSprite(_id_instanceToMove, Enum_SpriteActions.MOVE);

switch (MovementData_GetMovementType(_MovementData_data)) {
	case Enum_MovementType.LINEAR_SLIDING:
		_id_instanceToMove.path_currentPath = undefined;
		_id_instanceToMove.bool_hasPath = false;
		MovementManager_MOVE_LINEAR_SLIDING(_MovementData_data);
		break;
	case Enum_MovementType.DYNAMIC:
		if(MovementManager_LINE_OF_SIGHT(_MovementData_data)) {
			_id_instanceToMove.path_currentPath = undefined;
			_id_instanceToMove.bool_hasPath = false;
			MovementManager_MOVE_LINEAR_SLIDING(_MovementData_data);
		} else if(!_id_instanceToMove.bool_hasPath) {
			MovementManager_HANDLE_NO_PATH(_MovementData_data);
		} else{
			MovementManager_MOVE_PATHING(_MovementData_data);
		}
		break;
	case Enum_MovementType.PATHING:
		MovementManager_MOVE_PATHING(_MovementData_data);
		break;
}
