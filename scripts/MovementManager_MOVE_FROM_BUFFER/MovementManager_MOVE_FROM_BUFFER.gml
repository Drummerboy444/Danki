/// @function MovementManager_MOVE_FROM_BUFFER(MovementData_data) Moves the ThingToMove towards Terminus.
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];

var _num_terminusX = MovementData_GetTerminusX(_MovementData_data);
var _num_terminusY = MovementData_GetTerminusY(_MovementData_data);
var _id_thingToMove = MovementData_GetThingToMoveId(_MovementData_data);

with(_id_thingToMove) {
	var _num_xDistance = _num_terminusX - x;
	var _num_yDistance = _num_terminusY - y;
	var _num_speed = map_baseStats[? Enum_Stats.SPEED];
	var _num_angleSpeed = _num_speed / sqrt(2);
	
	if( _num_xDistance == 0 or _num_yDistance == 0) {
		#region linear movement
		if(abs(_num_xDistance) <= _num_speed) {
			x = _num_terminusX;
		} else {
			x = x + sign(_num_xDistance)*_num_speed;
		}
		if(abs(_num_yDistance) <= _num_speed) {
			y = _num_terminusY;
		} else {
			y = y + sign(_num_yDistance)*_num_speed;
		}
		#endregion
	} else {
		#region angled movement
		if(abs(_num_xDistance) <= _num_angleSpeed) {
			x = _num_terminusX;
		} else {
			x = x + sign(_num_xDistance)*_num_angleSpeed;
		}
		if(abs(_num_yDistance) <= _num_angleSpeed) {
			y = _num_terminusY;
		} else {
			y = y + sign(_num_yDistance)*_num_angleSpeed;
		}
		#endregion
	}
}
