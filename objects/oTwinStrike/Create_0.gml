event_inherited();

var num_animationFrames = sprite_get_number(sTwinStrike);
var num_animationFpsRatio = room_speed/sprite_get_speed(sTwinStrike);

num_baseAnimationLength = num_animationFrames * num_animationFpsRatio;
num_animationLength = num_baseAnimationLength;

var _num_castDirection = point_direction(oPlayer.x, oPlayer.y, x, y);

num_xDisplacement = dcos(_num_castDirection) * sprite_width;
num_yDisplacement = dsin(_num_castDirection) * sprite_height;
