var rand = random(100);
if(rand < 10) _num_width = 0;
else if(rand < 50) _num_width = 1;
else _num_width = 1.5;

draw_line_width_color(x, y, num_targetX, num_targetY, _num_width, c_blue, c_aqua);