/// function MovementGridManager_REGENERATE() This will regenerate all mp grids, that is to clear the
///		grids and repopulate them with the current position of oCollidables.
for(var _num_gridIndex = 0; _num_gridIndex < array_length_1d(arr_maxSizes); _num_gridIndex ++){
	var _num_gridMaxSize = arr_maxSizes[_num_gridIndex];
	
	if(map_regenerationQueued[? _num_gridMaxSize]){
		var _mp_grid_movementGrid = map_movementGrids[? _num_gridMaxSize];
	
		mp_grid_clear_all(_mp_grid_movementGrid);
	
		var _num_marginSize = floor(_num_gridMaxSize/2);
		MovementGridManager_AddInstancesWithMargin(_mp_grid_movementGrid, MOVEMENT_GRID_MANAGER_CIRCUMNAVIGABLE, _num_marginSize);
		
		map_regenerationQueued[? _num_gridMaxSize] = false;
	}
}
