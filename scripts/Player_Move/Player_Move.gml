#region Doc
/// @function Player_MoveUp(bool_up, bool_down, bool_left, bool_right, bool_dash) Moves the player depending
///		on the vector sum of the pressed keys or dashes if dash is pressed.
/// @param {boolean} bool_up If the player should move up
/// @param {boolean} bool_down If the player should move down
/// @param {boolean} bool_left If the player should move left
/// @param {boolean} bool_right If the player should move right
/// @param {boolean} bool_dash If the player should dash
#endregion
var _bool_up = argument[0];
var _bool_down = argument[1];
var _bool_left = argument[2];
var _bool_right = argument[3];
var _bool_dash = argument[4];


var _bool_isMovingHorizontally = _bool_left xor _bool_right;
var _bool_inMovingVertically = _bool_up xor _bool_down;

var _num_horizontalMovement = _bool_right - _bool_left;
var _num_verticalMovement = _bool_down - _bool_up;

var _num_movementSpeed = oPlayer.num_movementSpeed;
if (_bool_isMovingHorizontally && _bool_inMovingVertically) {
	var _num_movementSpeed = _num_movementSpeed / sqrt(2);
}

switch (moveModes) {
	case enum_moveModes.FREEMOVE:
	if (_bool_dash == true) {
		var _x_movement = _num_horizontalMovement;
		var _y_movement = _num_verticalMovement;
		var _dash_timer = 0;
		var _slow_timer = 0;
		moveModes = enum_moveModes.DASHING;
	} else {
		with (oPlayer) {
			x += _num_horizontalMovement * _num_movementSpeed;
			y += _num_verticalMovement * _num_movementSpeed;
			break;
		}
	break;
	}
	case enum_moveModes.DASHING:
	with (oPlayer) {
		x += _x_movement * _num_movementSpeed * dash_Speed;
		y += _y_movement * _num_movementSpeed * dash_Speed;
	}
	if (_dash_timer >= room_speed * 2) {
		_dash_timer = 0;
		moveModes = enum_moveModes.DASHED;
	} else {
		_dash_timer ++;
		break;
	}
	case enum_moveModes.DASHED:
	with (oPlayer) {
		x += _num_horizontalMovement * _num_movementSpeed * dashed_Slow;
		y += _num_verticalMovement * _num_movementSpeed * dashed_Slow;
	}
	if (_slow_timer >= room_speed * 2) {
		_slow_timer = 0;
		moveModes = enum_moveModes.FREEMOVE;
	} else {
		_slow_timer ++;
		break;
	}
	break;
}
