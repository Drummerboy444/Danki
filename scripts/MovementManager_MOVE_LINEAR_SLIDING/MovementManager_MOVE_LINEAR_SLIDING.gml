/// @function MovementManager_MOVE_LINEAR_SLIDING(MovementData_data) Moves as far as linearly possible (with respect to movement speed and collisions)
/// towards the mover's Terminus.
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];

var _num_terminusX = MovementData_GetTerminusX(_MovementData_data);
var _num_terminusY = MovementData_GetTerminusY(_MovementData_data);
var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);

with(_id_instanceToMove) {

	// We set the sprite according to the movement
	
	AbilityCaster_SET_SPRITE_DIRECTION(x, y, _num_terminusX, _num_terminusY);

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
	
	// Binary search for the farthest linear distance we can move without a collision.
	// Accuracy is half a pixel, always underestimates max distance.
	var _num_cycles = log2(_num_frameDistance) + 1;
	
	var _num_moveProportion = 0;
	var _bool_collides = false;
	var _num_newX = x;
	
	for(var i=1; i<=_num_cycles; i++){
		if(_bool_collides){
			_num_moveProportion -= 1/power(2,i);
		} else{
			_num_moveProportion += 1/power(2,i);
		}
		
		var _num_tryX = x + _num_moveProportion * (_num_frameTerminusX - x);
		
		_bool_collides = place_meeting(_num_tryX, y, oCollidable);
		
		if(!_bool_collides){
			_num_newX = _num_tryX;
		}
	}
	x = _num_newX;
	
	var _num_moveProportion = 0;
	var _bool_collides = false;
	var _num_newY = y;
	
	for(var i=1; i<=_num_cycles; i++){
		if(_bool_collides){
			_num_moveProportion -= 1/power(2,i);
		} else{
			_num_moveProportion += 1/power(2,i);
		}
		
		var _num_tryY = y + _num_moveProportion * (_num_frameTerminusY - y);
		
		_bool_collides = place_meeting(x, _num_tryY, oCollidable);
		
		if(!_bool_collides){
			_num_newY = _num_tryY;
		}
	}
	y = _num_newY;
}
