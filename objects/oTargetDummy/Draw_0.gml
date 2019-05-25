event_inherited();

draw_self();

draw_set_alpha(0.5);

mp_grid_draw(MovementGridManager_GetGridForInstance(id));
draw_path(path_currentPath,x,y,true);

draw_set_alpha(1);