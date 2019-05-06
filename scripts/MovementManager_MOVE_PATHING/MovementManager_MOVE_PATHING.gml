/// @MovementManager_MOVE_PATHING(MovementData_data)
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];


var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);
with (_id_instanceToMove) {
	var _num_speed = ds_Stats_Get(ds_Stats_frameStats, Enum_Stats.SPEED);
	var _num_pathLength = path_get_length(path_currentPath);
	var _num_movementProportion = _num_speed / _num_pathLength;

	var _num_pathPositionTotal = _num_movementProportion + num_pathPosition;
	var _num_targetPathPosition = _num_pathPositionTotal >= 1 ? 1 : _num_pathPositionTotal;
	
	var _num_endX = path_get_x(path_currentPath, _num_targetPathPosition);
	var _num_endY = path_get_y(path_currentPath, _num_targetPathPosition);
	if (place_empty(_num_endX, _num_endY, oCollidable)) {
		x = _num_endX;
		y = _num_endY;
		num_pathPosition = _num_targetPathPosition;
		return;
	}
}


