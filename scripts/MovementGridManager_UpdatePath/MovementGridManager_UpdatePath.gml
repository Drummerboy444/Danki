/// @function MovementGridManager_UpdatePath(MovementData_data) This will calculate a new path for the instance
///		in the given movement data, if the distance between the end of the path and the terminus is sufficiently
///		large.
/// @param {MovementData} MovementData_data The data to check the terminus of.
var _MovementData_data = argument[0];


var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);
var _num_terminusX = MovementData_GetTerminusX(_MovementData_data);
var _num_terminusY = MovementData_GetTerminusY(_MovementData_data);

if (is_undefined(_id_instanceToMove.path_currentPath)) {
	_id_instanceToMove.path_currentPath = path_add();
} else {
	var _num_pathEndX = path_get_x(_id_instanceToMove.path_currentPath, 1);
	var _num_pathEndY = path_get_y(_id_instanceToMove.path_currentPath, 1);

	var _num_terminusToPathDistance = point_distance(_num_terminusX, _num_terminusY, _num_pathEndX, _num_pathEndY);
	if (_num_terminusToPathDistance < MOVEMENT_GRID_MANAGER_PATH_END_PRECISION) {
		return;
	}
}

var _mp_grid_instanceGrid = MovementGridManager_GetGridForInstance(_id_instanceToMove);

_id_instanceToMove.bool_hasPath = mp_grid_path(
	_mp_grid_instanceGrid,
	_id_instanceToMove.path_currentPath,
	_id_instanceToMove.x,
	_id_instanceToMove.y,
	_num_terminusX,
	_num_terminusY,
	MOVEMENT_GRID_MANAGER_ALLOW_DIAG
);
_id_instanceToMove.num_pathPosition = 0;
