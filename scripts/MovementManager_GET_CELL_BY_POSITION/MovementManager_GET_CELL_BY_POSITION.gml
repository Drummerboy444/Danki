/// @MovementManager_GET_CELL_BY_POSITION(MovementData_data)
/// @param {MovementData} MovementData_data
var _mp_grid_grid = argument[0];
var _num_xPosition = argument[1];
var _num_yPosition = argument[2];


var _num_currentGridX = floor(_num_xPosition / MOVEMENT_GRID_MANAGER_GRID_WIDTH);
var _num_currentGridY = floor(_num_yPosition / MOVEMENT_GRID_MANAGER_GRID_HEIGHT);

return mp_grid_get_cell(_mp_grid_grid, _num_currentGridX, _num_currentGridY) == 0;