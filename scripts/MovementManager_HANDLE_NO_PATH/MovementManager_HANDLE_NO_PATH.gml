/// @MovementManager_HANDLE_NO_PATH(MovementData_data)
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];

var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);

with (_id_instanceToMove) {
	var _mp_grid_grid =  MovementGridManager_GetGridForInstance(_id_instanceToMove);
	
	var _num_currentGridX = floor(x / MOVEMENT_GRID_MANAGER_GRID_WIDTH);
	var _num_currentGridY = floor(y / MOVEMENT_GRID_MANAGER_GRID_HEIGHT);

	var _num_empty = mp_grid_get_cell(_mp_grid_grid, _num_currentGridX, _num_currentGridY);
	
	if(_num_empty == 0) {
		MovementManager_MOVE_LINEAR_SLIDING(_MovementData_data);
		return false;
	}
	
	var _arr_adjacentCells = [
		[x + MOVEMENT_GRID_MANAGER_GRID_WIDTH, y],
		[x - MOVEMENT_GRID_MANAGER_GRID_WIDTH, y],
		[x, y + MOVEMENT_GRID_MANAGER_GRID_HEIGHT],
		[x, y - MOVEMENT_GRID_MANAGER_GRID_HEIGHT],
	];
	
	for(i=0; i<array_length_1d(_arr_adjacentCells); i++) {
		var _arr_location = _arr_adjacentCells[i];

		var _num_gridX = floor(_arr_location[0] / MOVEMENT_GRID_MANAGER_GRID_WIDTH);
		var _num_gridY = floor(_arr_location[1] / MOVEMENT_GRID_MANAGER_GRID_HEIGHT);

		var _num_empty = mp_grid_get_cell(_mp_grid_grid, _num_gridX, _num_gridY);
		
		if(_num_empty == 0) {
			MovementManager_MOVE_LINEAR_SLIDING(
				MovementData_New(_arr_location[0], _arr_location[1], _id_instanceToMove, Enum_MovementType.LINEAR_SLIDING)
			);
			return true;
		}
	}
	
	MovementManager_MOVE_LINEAR_SLIDING(_MovementData_data);
	return false;
}


