/// function MovementGridManager_REGENERATE() This will regenerate the current mp grid, that is to clear the
///		grid and repopulate with the current position of oCollidables.

mp_grid_clear_all(mp_grid_roomGrid);
mp_grid_add_instances(mp_grid_roomGrid, oCollidable, MOVEMENT_GRID_MANAGER_PRECISE);

