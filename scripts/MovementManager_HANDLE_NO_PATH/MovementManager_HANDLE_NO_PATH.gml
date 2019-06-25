/// @MovementManager_HANDLE_NO_PATH(MovementData_data)
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];

var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);

with (_id_instanceToMove) {
	var _mp_grid_grid =  MovementGridManager_GetGridForInstance(_id_instanceToMove);
	var _MovementData_updatedData = _MovementData_data;
	
	var _bool_onEmptyCell = MovementManager_GetCellByPosition(_mp_grid_grid, x, y);
	
	// If we're on an occupied grid cell, we try to move to an adjacent empty cell
	if(!_bool_onEmptyCell) {	
		var _arr_adjacentCells = [
			[x + MOVEMENT_GRID_MANAGER_GRID_WIDTH, y],
			[x - MOVEMENT_GRID_MANAGER_GRID_WIDTH, y],
			[x, y + MOVEMENT_GRID_MANAGER_GRID_HEIGHT],
			[x, y - MOVEMENT_GRID_MANAGER_GRID_HEIGHT],
		];
	
		for(var i=0; i<array_length_1d(_arr_adjacentCells); i++) {
			var _arr_location = _arr_adjacentCells[i];

			var _bool_empty = MovementManager_GetCellByPosition(_mp_grid_grid, _arr_location[0], _arr_location[1]);
		
			if(_bool_empty) {
				var _MovementData_updatedData = MovementData_New(
					_arr_location[0],
					_arr_location[1],
					_id_instanceToMove,
					Enum_MovementType.LINEAR_SLIDING
				);
			}
		}
	}
	
	MovementManager_MOVE_LINEAR_SLIDING(_MovementData_updatedData);
}


