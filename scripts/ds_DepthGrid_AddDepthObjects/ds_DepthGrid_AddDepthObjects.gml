/// @function ds_DepthGrid_AddDepthObjects(ds_DepthGrid_grid) Adds all depth objects to the given depth grid.
/// @param {ds_DepthGrid} ds_DepthGrid_grid The depth grid to add to.
var _ds_DepthGrid_grid = argument[0];


if (!ds_DepthGrid_InstanceOf(_ds_DepthGrid_grid)) {
	ErrorHandler_FatalError("Cannot add depth objects to non-DepthGrid data structure");
}

var _num_depthObjects = instance_number(oDepth);
ds_grid_resize(_ds_DepthGrid_grid, 2, _num_depthObjects);

var i = 0;
with (oDepth) {
	ds_grid_set(_ds_DepthGrid_grid, DS_DEPTH_GRID_INSTANCE_ID, i, id);
	ds_grid_set(_ds_DepthGrid_grid, DS_DEPTH_GRID_Y_POSITION, i, id.y);
	i++;
}
