/// @function MovementManager_MOVE_LINEARLY(MovementData_data) Moves as far as linearly possible (with respect to movement speed and collisions)
/// towards the mover's Terminus.
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];

var _num_terminusX = MovementData_GetTerminusX(_MovementData_data);
var _num_terminusY = MovementData_GetTerminusY(_MovementData_data);
var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);

with(_id_instanceToMove) {
	
	// Get the frame terminus.
	var _num_distance = point_distance(x, y, _num_terminusX, _num_terminusY);
	if(_num_distance == 0) return;
	
	var _num_speed = ds_Stats_Get(_id_instanceToMove.ds_Stats_frameStats, Enum_Stats.SPEED);
	
	var _num_xDistance = _num_terminusX - x;
	var _num_yDistance = _num_terminusY - y;
	
	var _num_frameTerminusX = _num_terminusX;
	var _num_frameTerminusY = _num_terminusY;
	
	if(_num_distance > _num_speed) {
		_num_frameTerminusX = x + _num_xDistance * (_num_speed / _num_distance);
		_num_frameTerminusY = y + _num_yDistance * (_num_speed / _num_distance);
	}
	
	var _num_frameDistance = point_distance(x, y, _num_frameTerminusX, _num_frameTerminusY);
	
	// Move to the terminus if possible.
	if(!place_meeting(_num_frameTerminusX, _num_frameTerminusY, oCollidable)){
		x = _num_frameTerminusX;
		y = _num_frameTerminusY;
		return;
	}
	
	// If you can't move at least half a pixel, don't move at all.
	if(place_meeting(
		x + 0.5 * _num_frameTerminusX/_num_frameDistance,
		y + 0.5 * _num_frameTerminusY/_num_frameDistance,
		oCollidable)
	){
		return;	
	}
	
	// Binary search for the farthest distance we can move without a collision, accuracy is half a pixel, always underestimates max distance.
	var _num_cycles = log2(_num_frameDistance) + 1;
	var _num_moveProportion = 0;
	var _bool_collides = false;
	
	var _num_newX = x;
	var _num_newY = y;
	
	for(var i=1; i<=_num_cycles; i++){
		if(_bool_collides){
			_num_moveProportion -= 1/power(2,i);
		} else{
			_num_moveProportion += 1/power(2,i);
		}
		
		var _num_tryX = x + _num_moveProportion * (_num_frameTerminusX - x);
		var _num_tryY = y + _num_moveProportion * (_num_frameTerminusY - y);
		
		_bool_collides = place_meeting(_num_tryX, _num_tryY, oCollidable);
		
		if(!_bool_collides){
			_num_newX = _num_tryX;
			_num_newY = _num_tryY;
		}
	}
	
	x = _num_newX;
	y = _num_newY;
}
