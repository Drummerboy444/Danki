/// @function MovementGridManager_GetGridSizeForInstance(id_instance) Returns the grid 'Max size' for the instance from the
/// movement grid manager by rounding its sprite size.
/// @param {id} id_instance The instance to get the grid for.
/// @returns {mp_grid} The grid.
var _id_instance = argument[0];

with (_id_instance) {
	var _num_size = max(bbox_right + 1 - bbox_left, bbox_bottom + 1 - bbox_top);
}

with(oMovementGridManager) {
	var _num_bestMaxSize = 1000000;
	
	for(var _num_gridIndex = 0; _num_gridIndex < array_length_1d(arr_maxSizes); _num_gridIndex ++){
		var _num_gridMaxSize = arr_maxSizes[_num_gridIndex];
		
		if(_num_size <= _num_gridMaxSize && _num_gridMaxSize <= _num_bestMaxSize){
			_num_bestMaxSize = _num_gridMaxSize;
		}
	}
	
	if(_num_bestMaxSize == 1000000) {
		ErrorHandler_FatalError("Instance of " + object_get_name(_id_instance.object_index) + " too large for all Movement Grids.");
	}
	
	return _num_bestMaxSize;
}