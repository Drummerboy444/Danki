/// @function ds_DepthGrid_Reset(ds_DepthGrid_grid) Resets the given DepthGrid so that it is ready for instances
///		to be added to it again.
/// @param {ds_DepthGrid} ds_DepthGrid_grid The grid to reset.
var _ds_DepthGrid_grid = argument[0];


if (!ds_DepthGrid_InstanceOf(_ds_DepthGrid_grid)) {
	ErrorHandler_FatalError("Attempted to reset non-DepthGrid data structure");
}

ds_grid_resize(_ds_DepthGrid_grid, 2, 0);
