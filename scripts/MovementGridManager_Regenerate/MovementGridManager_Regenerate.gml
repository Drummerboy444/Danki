/// function MovementGridManager_REGENERATE() This will regenerate all mp grids, that is to clear the
///		grids and repopulate them with the current position of oCollidables.

for(var _num_gridIndex = 0; _num_gridIndex < arr_maxSizes; _num_gridIndex ++){
	var _num_gridMaxSize = arr_maxSizes[_num_gridIndex];
	var _mp_grid_movementGrid = map_movementGrids[? _num_gridMaxSize];
	
	mp_grid_clear_all(_mp_grid_movementGrid);
	
	var _num_marginSize = floor(_num_gridMaxSize/2);
	MovementGridManager_AddInstancesWithMargin(_mp_grid_movementGrid, oCollidable, _num_marginSize);
}

num_debounceTimer = MOVEMENT_GRID_MANAGER_DEBOUNCE_TIME;
bool_regenerationQueued = false;
