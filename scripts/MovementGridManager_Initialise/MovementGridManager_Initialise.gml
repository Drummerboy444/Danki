/// @function MovementGridManager_Initialise() Destroys the old mp_grid on the movement grid manager and
///		generates a new one according to the size of the room.

with (oMovementGridManager) {
	if (!is_undefined(mp_grid_roomGrid)) {
		mp_grid_destroy(mp_grid_roomGrid);
	}
	
	var _num_hCells = ceil(room_width / MOVEMENT_GRID_MANAGER_GRID_WIDTH);
	var _num_vCells = ceil(room_height / MOVEMENT_GRID_MANAGER_GRID_HEIGHT);
	
	mp_grid_roomGrid = mp_grid_create(
		0,
		0,
		_num_hCells,
		_num_vCells,
		MOVEMENT_GRID_MANAGER_GRID_WIDTH,
		MOVEMENT_GRID_MANAGER_GRID_HEIGHT
	);
	
	mp_grid_add_instances(mp_grid_roomGrid, oCollidable, MOVEMENT_GRID_MANAGER_PRECISE);
}