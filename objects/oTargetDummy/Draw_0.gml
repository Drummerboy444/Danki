event_inherited();

draw_set_alpha(0.4);
mp_grid_draw(MovementGridManager_GetGridForInstance(id));
draw_set_alpha(1);

if(bool_hasPath){
	draw_path(path_currentPath, x, y, true);
}