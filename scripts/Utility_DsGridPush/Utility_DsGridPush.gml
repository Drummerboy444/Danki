/// @function Utility_DsGridPush(grid_toPushTo, arr_any_row) Creates a new row at the end of the given grid and sets
///		the values to those given in the array (the row).
/// @param {grid} grid_toPushTo The grid to add the new row to.
/// @param {array} arr_any_row The values to set on the new grid row. NOTE: the size of this row must line up with
///		the width of the grid.
var _grid_toPushTo = argument[0];
var _arr_any_row = argument[1];


var _num_rowSize = array_length_1d(_arr_any_row);
var _num_gridWidth = ds_grid_width(_grid_toPushTo);
if (_num_rowSize != _num_gridWidth) {
	ErrorHandler_FatalError("Attempted to add row of size " + _num_rowSize + " to grid of width " + _num_gridWidth);
}

var _num_newGridHeight = ds_grid_height(_grid_toPushTo) + 1;
ds_grid_resize(_grid_toPushTo, _num_gridWidth, _num_newGridHeight);
for (var i = 0; i < _num_rowSize; i++) {
	var _any_entry = _arr_any_row[i];
	ds_grid_set(_grid_toPushTo, i, _num_newGridHeight - 1, _any_entry);
}
