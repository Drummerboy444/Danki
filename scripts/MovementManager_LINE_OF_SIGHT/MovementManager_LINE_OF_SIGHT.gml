/// @MovementManager_MOVE_PATHING(MovementData_data)
/// @param {MovementData} MovementData_data
/// @returns {boolean} True if target/terminus is in line of sight

var _MovementData_data = argument[0];

var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);
var _id_targetInstance = MovementData_GetTargetInstance(_MovementData_data);
	
var _list_id_collisions = ds_list_create();

with (_id_instanceToMove) {
	collision_line_list(
		x,
		y,
		MovementData_GetTerminusX(_MovementData_data),
		MovementData_GetTerminusY(_MovementData_data),
		oCollidable,
		true,
		true,
		_list_id_collisions,
		false,
	);
}
	
for(var i = 0; i < ds_list_size(_list_id_collisions); i++) {
	if(_list_id_collisions[| i] != _id_targetInstance) {
		return false;
	}
}
	
return true;