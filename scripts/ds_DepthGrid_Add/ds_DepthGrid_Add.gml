/// @function ds_DepthGrid_Add(ds_DepthGrid_grid, id_depthInstance) Adds the given object to the given depth grid.
/// @param {ds_DepthGrid} ds_DepthGrid_grid The grid to add the object to.
/// @param {id} id_depthInstance The instance to add to the grid, must inherit from oDepth.
var _ds_DepthGrid_grid = argument[0];
var _id_depthInstance = argument[1];


if (!Utility_ObjectIsAncestorOfInstance(oDepth, _id_depthInstance)) {
	ErrorHandler_FatalError(
		"Cannot add instance to depth grid that doesn't inherit from oDepth. Received "
		+ object_get_name(_id_depthInstance.object_index)
	);
}

if (!ds_DepthGrid_InstanceOf(_ds_DepthGrid_grid)) {
	ErrorHandler_FatalError("Received non-DepthGrid data structure when trying to add instance to depth grid");
}

Utility_DsGridPush(_ds_DepthGrid_grid, [_id_depthInstance, _id_depthInstance.y]);
