/// function MovementGridManager_RegenerateForInstance(id_instance) Regenerates the grid that corresponds to the giver instance.
/// @param {id} id_instance
var _id_instance = argument[0];

var _num_maxSize = MovementGridManager_GetGridForInstance(_id_instance);
var _mp_grid_movementGrid = MovementGridManager_GetGridForInstance(_id_instance);
mp_grid_clear_all(_mp_grid_movementGrid);
	
var _num_marginSize = floor(_num_maxSize/2);
MovementGridManager_AddInstancesWithMargin(_mp_grid_movementGrid, MOVEMENT_GRID_MANAGER_CIRCUMNAVIGABLE, _num_marginSize);