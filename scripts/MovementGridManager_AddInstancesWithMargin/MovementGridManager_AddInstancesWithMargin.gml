/// @function MovementGridManager_AddInstancesWithMargin(mp_grid_grid, obj_collider, num_margin) Adds instances
/// of the given object to grid, adding the given margin to their size.
/// @param {mp_grid} mp_grid_grid The grid to add to.
/// @param {obj} obj_collider The object to populate the grid with.
/// @param {num} num_margin The margin.
var _mp_grid_grid = argument[0];
var _obj_collider = argument[1];
var _num_margin = argument[2];

with(_obj_collider){
	var _num_left = x - floor(sprite_width/2) - _num_margin;
	var _num_top = y - floor(sprite_height/2) - _num_margin;
	var _num_right = x + ceil(sprite_width/2) + _num_margin;
	var _num_bottom = y + ceil(sprite_height/2) + _num_margin;
	mp_grid_add_rectangle(
		_mp_grid_grid,
		_num_left,
		_num_top,
		_num_right,
		_num_bottom);
}
