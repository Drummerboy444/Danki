event_inherited();

var _num_rand = random(100);
var _num_width = 0;

if(_num_rand > 10) _num_width = 1;
if(_num_rand > 50) _num_width = 1.5;

draw_line_width_color(x, y, num_targetX, num_targetY, _num_width, c_blue, c_aqua);