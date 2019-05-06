/// @MovementManager_MOVE_PATHING(MovementData_data)
/// @param {MovementData} MovementData_data
var _MovementData_data = argument[0];


var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);
with (_id_instanceToMove) {
	var _num_speed = ds_Stats_Get(ds_Stats_frameStats, Enum_Stats.SPEED);
	var _num_pathLength = path_get_length(path_currentPath);
	var _num_movementProportion = _num_speed / _num_pathLength;

	var _num_targetPathPosition = _num_movementProportion + num_pathPosition;
	if (_num_targetPathPosition >= 1) {
		_num_movementProportion = 1 - num_pathPosition;
		_num_targetPathPosition = 1;
	}
	
	var _num_endX = path_get_x(path_currentPath, _num_targetPathPosition);
	var _num_endY = path_get_y(path_currentPath, _num_targetPathPosition);
	if (place_empty(_num_endX, _num_endY, oCollidable)) {
		x = _num_endX;
		y = _num_endY;
		num_pathPosition = _num_targetPathPosition;
		return;
	}
	
	var _num_cycles = log2(_num_speed) + 1;
	
	var _num_pathSegmentProportion = 0;
	var _bool_collides = false;
	var _num_newPathPosition = num_pathPosition;
	var _num_tryX;
	var _num_tryY;
	var _num_newX = x;
	var _num_newY = y;
	
	for(var i=1; i<=_num_cycles; i++){
		if(_bool_collides){
			_num_pathSegmentProportion -= 1/power(2,i);
		} else{
			_num_pathSegmentProportion += 1/power(2,i);
		}
		
		var _num_tryPathPosition = num_pathPosition + _num_movementProportion * _num_pathSegmentProportion;
		_num_tryX = path_get_x(path_currentPath, _num_tryPathPosition);
		_num_tryY = path_get_y(path_currentPath, _num_tryPathPosition);
		
		_bool_collides = place_meeting(_num_tryX, _num_tryY, oCollidable);
		
		if(!_bool_collides){
			_num_newPathPosition = _num_tryPathPosition;
			_num_newX = _num_tryX;
			_num_newY = _num_tryY;
		}
	}
	
	x = _num_newX;
	y = _num_newY;
}


