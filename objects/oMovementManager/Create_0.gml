event_inherited();
Pauseable_Setup();

list_MovementData_movementBuffer = ds_list_create();
grid_movementSequencer = ds_grid_create(2, 1);

enum Enum_MovementType {
	LINEAR_SLIDING,
	PATHING
}
