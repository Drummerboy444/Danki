/// @function ds_DepthGrid_GetHeight(ds_DepthGrid_grid) Returns the height of the given depth grid.
/// @param {ds_DepthGrid} ds_DepthGrid_grid The Depth grid to get the height of.
/// @returns {number} The height of the DepthGrid.
var _ds_DepthGrid_grid = argument[0];


if (!ds_DepthGrid_InstanceOf(_ds_DepthGrid_grid)) {
	ErrorHandler_FatalError("Attempted to get height of non-DepthGrid data structure");
}

return ds_grid_height(_ds_DepthGrid_grid);
