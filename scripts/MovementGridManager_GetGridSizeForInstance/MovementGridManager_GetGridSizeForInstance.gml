/// @function MovementGridManager_GetGridSizeForInstance(id_instance) Returns the appropriate max size for the instance by rounding
///		its sprite size up.
/// @param {id} id_instance The instance to get the max size for.
/// @returns {num} The grid size.
var _id_instance = argument[0];

var _num_size = min(_id_instance.sprite_width, _id_instance.sprite_height);

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