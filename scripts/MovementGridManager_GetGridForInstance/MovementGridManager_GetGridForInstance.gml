/// @function MovementGridManager_GetGridForInstance(id_instance) Returns the appropriate grid for the instance from the
/// movement grid manager by rounding its sprite size up to the nearest "maxSize".
/// @param {id} id_instance The instance to get the grid for.
/// @returns {mp_grid} The grid.
var _id_instance = argument[0];

var _num_size = min(_id_instance.sprite_width, _id_instance.sprite_height);

with(oMovementGridManager) {
	var _num_bestMaxSize = 1000000;
	
	for(var _num_gridIndex = 0; _num_gridIndex < array_length_1d(arr_maxSizes) -1; _num_gridIndex ++){
		var _num_gridMaxSize = arr_maxSizes[_num_gridIndex];
		
		if(arr_maxSizes < _num_gridMaxSize && _num_gridMaxSize < _num_bestMaxSize){
			_num_bestMaxSize = _num_gridMaxSize;
		}
	}
	
	if(_num_bestMaxSize = 1000000) {
		ErrorHandler_FatalError("Instance of " + object_get_name(_id_instance.object_index) + " too large for all Movement Grids.");
	}
	
	return map_movementGrids[?_num_bestMaxSize];
}