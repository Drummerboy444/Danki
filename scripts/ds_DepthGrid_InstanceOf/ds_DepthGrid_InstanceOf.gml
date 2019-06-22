/// @function ds_DepthGrid_InstanceOf(any_data) Returns true if the given data is an instance of a DepthGrid.
/// @param {any} any_data The data to check.
/// @returns {boolean} True if the given data is an istance of DepthGrid.
var _any_data = argument[0];


return
	ds_exists(_any_data, ds_type_grid)
	&& ds_grid_width(_any_data) == 2
