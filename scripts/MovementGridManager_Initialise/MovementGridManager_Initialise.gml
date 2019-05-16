/// @function MovementGridManager_Initialise() Destroys the old mp_grid on the movement grid manager and
///		generates a new one according to the size of the room.

with (oMovementGridManager) {
	for(var _num_gridIndex = 0; _num_gridIndex < array_length_1d(arr_maxSizes); _num_gridIndex ++){
		
		var _num_gridMaxSize = arr_maxSizes[_num_gridIndex];
		
		if (ds_map_exists(map_movementGrids, _num_gridMaxSize)) {
			mp_grid_destroy(map_movementGrids[? _num_gridMaxSize]);
		}
	
		var _num_hCells = ceil(room_width / MOVEMENT_GRID_MANAGER_GRID_WIDTH);
		var _num_vCells = ceil(room_height / MOVEMENT_GRID_MANAGER_GRID_HEIGHT);
		
		var _mp_grid_newGrid = mp_grid_create(
			0,
			0,
			_num_hCells,
			_num_vCells,
			MOVEMENT_GRID_MANAGER_GRID_WIDTH,
			MOVEMENT_GRID_MANAGER_GRID_HEIGHT
		);
		
		var _num_marginSize = floor(_num_gridMaxSize/2);
		MovementGridManager_AddInstancesWithMargin(_mp_grid_newGrid, MOVEMENT_GRID_MANAGER_CIRCUMNAVIGABLE, _num_marginSize);
		
		map_movementGrids[? _num_gridMaxSize] = _mp_grid_newGrid;
	}
}
