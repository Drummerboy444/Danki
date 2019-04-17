/// @function MovementManager_MOVE_FROM_BUFFER(MovementData_data) Moves the InstanceToMove towards Terminus.
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];

var _num_terminusX = MovementData_GetTerminusX(_MovementData_data);
var _num_terminusY = MovementData_GetTerminusY(_MovementData_data);
var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);

with(_id_instanceToMove) {
	var _num_xDistance = _num_terminusX - x;
	var _num_yDistance = _num_terminusY - y;
	var _num_distanceVector = point_distance(x, y, _num_terminusX, _num_terminusY);
	var _num_speed = ds_Stats_Get(_id_instanceToMove.ds_Stats_frameStats, Enum_Stats.SPEED);
	
	if(_num_distanceVector == 0) {
		return;
	} else {
		if(abs(_num_xDistance) <= abs((_num_xDistance/_num_distanceVector)*_num_speed)) {
			x = _num_terminusX;
		} else {
			x += (_num_xDistance/_num_distanceVector)*_num_speed;
		}
		if(abs(_num_yDistance) <= abs((_num_yDistance/_num_distanceVector)*_num_speed)) {
			y = _num_terminusY;
		} else {
			y += (_num_yDistance/_num_distanceVector)*_num_speed;
		}
	}
}
