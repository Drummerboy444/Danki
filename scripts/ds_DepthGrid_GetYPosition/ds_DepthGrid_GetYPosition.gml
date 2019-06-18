/// @function ds_DepthGrid_GetYPosition(ds_DepthGrid_grid, num_row) Returns the y position of the given row.
/// @param {ds_DepthGrid} ds_DepthGrid_grid The DepthGrid to look up from.
/// @param {number} num_row The row of the Depth grid to get the y position from.
/// @returns {number} The y position of the given row.
var _ds_DepthGrid_grid = argument[0];
var _num_row = argument[1];


if (!ds_DepthGrid_InstanceOf(_ds_DepthGrid_grid)) {
	ErrorHandler_FatalError("Attempted to get y position of non-DepthGrid data structure");
}

return ds_grid_get(_ds_DepthGrid_grid, DS_DEPTH_GRID_Y_POSITION, _num_row);
