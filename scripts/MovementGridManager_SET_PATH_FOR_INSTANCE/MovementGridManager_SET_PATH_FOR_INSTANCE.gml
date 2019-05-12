var _MovementData_data = argument[0];

var _id_instanceToMove = MovementData_GetInstanceToMove(_MovementData_data);
var _num_terminusX = MovementData_GetTerminusX(_MovementData_data);
var _num_terminusY = MovementData_GetTerminusY(_MovementData_data);

var _num_gridSize = MovementGridManager_GetGridSizeForInstance(_id_instanceToMove);
show_debug_message(_num_gridSize);
var _mp_grid_instanceGrid = oMovementGridManager.map_movementGrids[? _num_gridSize];

var _num_left = x - floor(sprite_width/2) - 400/2;
var _num_top = y - floor(sprite_height/2) - 400/2;
var _num_right = x + ceil(sprite_width/2) + 400/2;
var _num_bottom = x + ceil(sprite_height/2) + 400/2;

mp_grid_clear_rectangle(
	_mp_grid_instanceGrid,
	_num_left,
	_num_top,
	_num_right,
	_num_bottom);

mp_grid_path(
	_mp_grid_instanceGrid,
	_id_instanceToMove.path_currentPath,
	_id_instanceToMove.x,
	_id_instanceToMove.y,
	_num_terminusX,
	_num_terminusY,
	MOVEMENT_GRID_MANAGER_ALLOW_DIAG
);

mp_grid_add_rectangle(
	_mp_grid_instanceGrid,
	_num_left,
	_num_top,
	_num_right,
	_num_bottom);