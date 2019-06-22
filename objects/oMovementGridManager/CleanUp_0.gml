for(var _num_gridIndex = 0; _num_gridIndex < array_length_1d(arr_maxSizes); _num_gridIndex ++){
		
	var _num_gridMaxSize = arr_maxSizes[_num_gridIndex];
		
	if (ds_map_exists(map_movementGrids, _num_gridMaxSize)) {
		mp_grid_destroy(map_movementGrids[? _num_gridMaxSize]);
	}
}

ds_map_destroy(map_movementGrids);
ds_map_destroy(map_regenerationQueued);
