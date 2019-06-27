/// @description Insert description here
// You can write your code in this editor

// Inherit the parent event
event_inherited();

draw_set_alpha(0.4);
mp_grid_draw(MovementGridManager_GetGridForInstance(id));
draw_set_alpha(1);

