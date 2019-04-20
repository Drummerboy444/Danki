draw_self();

var _num_remainingHealthProportion = num_currentHealth/ds_Stats_Get(ds_Stats_stats, Enum_Stats.HEALTH);

var _num_barWidth = sprite_get_width(sprite_index) - 11;
var _num_barHeight = 1;

var num_topLeftX = x - sprite_get_width(sprite_index)/2 + 5;
var num_topLeftY = y - sprite_get_height(sprite_index)/2 - 6;
	
draw_set_color(c_red);
draw_rectangle(
	num_topLeftX,
	num_topLeftY,
	num_topLeftX + _num_barWidth,
	num_topLeftY + _num_barHeight,
	false);

draw_set_color(c_lime);
draw_rectangle(
	num_topLeftX,
	num_topLeftY,
	num_topLeftX +_num_remainingHealthProportion * _num_barWidth,
	num_topLeftY + _num_barHeight,
	false);