event_inherited();

var _num_maxHealth = ds_Stats_Get(ds_Stats_frameStats, Enum_Stats.HEALTH);
var _num_currentHealthProportion = num_currentHealth/_num_maxHealth;

var _num_barWidth = sprite_get_width(sprite_index) - 11;
var _num_barHeight = 1;

var _num_topLeftX = x - sprite_get_width(sprite_index)/2 + 5;
var _num_topLeftY = y - sprite_get_height(sprite_index)/2 - 6;
	
draw_set_color(c_red);
draw_rectangle(
	_num_topLeftX,
	_num_topLeftY,
	_num_topLeftX + _num_barWidth,
	_num_topLeftY + _num_barHeight,
	false);

draw_set_color(c_lime);
draw_rectangle(
	_num_topLeftX,
	_num_topLeftY,
	_num_topLeftX +_num_currentHealthProportion * _num_barWidth,
	_num_topLeftY + _num_barHeight,
	false);