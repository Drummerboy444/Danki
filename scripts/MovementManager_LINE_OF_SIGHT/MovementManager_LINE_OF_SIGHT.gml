/// @MovementManager LINE_OF_SIGHT(MovementData_data)
/// @param {MovementData} MovementData_data
/// @returns {boolean} True if target/terminus is in line of sight

var _MovementData_data = argument[0];

var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);
var _id_targetInstance = MovementData_GetTargetInstance(_MovementData_data);
var _num_terminusX = MovementData_GetTerminusX(_MovementData_data),
var _num_terminusY = MovementData_GetTerminusY(_MovementData_data),
	
var _list_id_collisions = ds_list_create();

with (_id_instanceToMove) {
	var _w = sprite_width/2;
	var _h = sprite_height/2;
	
	var _arr_arr_coordinatePairs = [
		[x, y, _num_terminusX, _num_terminusY],
		[x + _w, y + _h, _num_terminusX + _w, _num_terminusY + _h],
		[x + _w, y - _h, _num_terminusX + _w, _num_terminusY - _h],
		[x - _w, y + _h, _num_terminusX - _w, _num_terminusY + _h],
		[x - _w, y - _h, _num_terminusX - _w, _num_terminusY - _h]
	];
	
	for(var i=0; i<array_length_1d(_arr_arr_coordinatePairs); i++) {
		var _arr_num_coordinatePair = _arr_arr_coordinatePairs[i];
		collision_line_list(
			_arr_num_coordinatePair[0],
			_arr_num_coordinatePair[1],
			_arr_num_coordinatePair[2],
			_arr_num_coordinatePair[3],
			oCollidable,
			true,
			true,
			_list_id_collisions,
			false,
		);
	
		for(var j = 0; j < ds_list_size(_list_id_collisions); j++) {
			if(_list_id_collisions[| j] != _id_targetInstance) {
				return false;
			}
		}
	}
}

return true;