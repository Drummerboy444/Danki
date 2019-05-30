/// @function MovementGridManager_UpdatePath(MovementData_data) This will calculate a new path for the instance
///		in the given movement data, if the distance between the end of the path and the terminus is sufficiently
///		large.
/// @param {MovementData} MovementData_data The data to check the terminus of.
var _MovementData_data = argument[0];


var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);
var _id_targetInstance = MovementData_GetTargetInstance(_MovementData_data);
var _num_terminusX = MovementData_GetTerminusX(_MovementData_data);
var _num_terminusY = MovementData_GetTerminusY(_MovementData_data);

with(_id_instanceToMove) {
	if (is_undefined(path_currentPath)) {
		path_currentPath = path_add();
	} else {
		var _num_pathEndX = path_get_x(path_currentPath, 1);
		var _num_pathEndY = path_get_y(path_currentPath, 1);

		var _num_terminusToPathDistance = point_distance(_num_terminusX, _num_terminusY, _num_pathEndX, _num_pathEndY);
		if (_num_terminusToPathDistance < MOVEMENT_GRID_MANAGER_PATH_END_PRECISION) {
			return;
		}
	}

	var _mp_grid_instanceGrid = MovementGridManager_GetGridForInstance(id);

	if(_id_targetInstance != noone) {
		var _num_left = _id_targetInstance.bbox_left;
		var _num_top = _id_targetInstance.bbox_top;
		var _num_right = _id_targetInstance.bbox_right;
		var _num_bottom = _id_targetInstance.bbox_bottom;
		mp_grid_clear_rectangle(
			_mp_grid_instanceGrid,
			_num_left,
			_num_top,
			_num_right,
			_num_bottom
		);
	}

	bool_hasPath = mp_grid_path(
		_mp_grid_instanceGrid,
		path_currentPath,
		x,
		y,
		_num_terminusX,
		_num_terminusY,
		MOVEMENT_GRID_MANAGER_ALLOW_DIAG
	);	

	num_pathPosition = 0;
}