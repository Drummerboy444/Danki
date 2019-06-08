/// @function ds_DepthGrid_Sort(ds_DepthGrid_grid) Sorts the given DepthGrid so that when looped through, the
///		instances inside it will be drawn in the correct order.
/// @param {ds_DepthGrid} ds_DepthGrid_grid The depth grid to sort.
var _ds_DepthGrid_grid = argument[0];


if (!ds_DepthGrid_InstanceOf(_ds_DepthGrid_grid)) {
	ErrorHandler_FatalError("Attempted to sort non-DepthGrid data structure");
}

ds_grid_sort(_ds_DepthGrid_grid, DS_DEPTH_GRID_Y_POSITION, true);
