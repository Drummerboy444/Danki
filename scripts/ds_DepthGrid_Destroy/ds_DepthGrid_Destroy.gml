/// @function ds_DepthGrid_Destroy(ds_DepthGrid_grid) Destroys the given depth grid.
/// @param {ds_DepthGrid} ds_DepthGrid_grid The depth grid to destroy.
var _ds_DepthGrid_grid = argument[0];


if (!ds_DepthGrid_InstanceOf(_ds_DepthGrid_grid)) {
	ErrorHandler_FatalError("Attempted to destroy data structure that was not an instance of a depth grid");
}

ds_grid_destroy(_ds_DepthGrid_grid);
