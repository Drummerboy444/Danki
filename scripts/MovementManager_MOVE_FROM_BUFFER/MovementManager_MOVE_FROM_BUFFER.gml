/// @function MovementManager_MOVE_FROM_BUFFER(MovementData_data) Moves the ThingToMove towards Terminus.
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];

var _num_terminusX = MovementData_GetTerminusX(_MovementData_data);
var _num_terminusY = MovementData_GetTerminusY(_MovementData_data);
var _id_thingToMove = MovementData_GetThingToMoveId(_MovementData_data);

with(_id_thingToMove) {
	var _num_xDistance = _num_terminusX - x;
	var _num_yDistance = _num_terminusY - y;
	var _num_distanceVector = point_distance(x, y, _num_terminusX, _num_terminusY);
	var _num_speed = StatsManager_GetSpeed(_id_thingToMove);
	
	if(_num_distanceVector == 0) {
		x = _num_terminusX;
		y = _num_terminusY;
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
