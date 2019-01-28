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


// This region determines the direction of movement based on which direction keys are pressed
#region Movement setup
var _bool_isMovingHorizontally = _bool_left xor _bool_right;
var _bool_inMovingVertically = _bool_up xor _bool_down;

var _num_horizontalMovement = _bool_right - _bool_left;
var _num_verticalMovement = _bool_down - _bool_up;

var _num_movementSpeed = oPlayer.num_movementSpeed;
if (_bool_isMovingHorizontally && _bool_inMovingVertically) {
	var _num_movementSpeed = _num_movementSpeed / sqrt(2);
}
#endregion

// These regions control the actual movement (FREEMOVE), dashing (DASHING) and post dash slow (DASHED)
switch (str_moveModes) {
	#region Movement (FREEMOVE)
	case enum_moveModes.FREEMOVE:
	if (_bool_dash == true) {
		with (oPlayer) {
			num_xDashMovement = _num_horizontalMovement;	// These are variables used to control the dash
			num_yDashMovement = _num_verticalMovement;		// direction, which remains fixed until the dash ends
		}
		str_moveModes = enum_moveModes.DASHING;
	} else {
		with (oPlayer) {
			x += _num_horizontalMovement * _num_movementSpeed;
			y += _num_verticalMovement * _num_movementSpeed;
		}
	break;
	}
	#endregion
	#region Dashing (DASHING)
	case enum_moveModes.DASHING:
	with (oPlayer) {
		x += num_xDashMovement * _num_movementSpeed * num_dashSpeed;	// num_dashSpeed is found under oPlayer create and determines
		y += num_yDashMovement * _num_movementSpeed * num_dashSpeed;	// the movement factor that dashing induces
	}
	if (num_dashTimer >= 20) {		// This value controls the length of time a dash occurs for
		num_dashTimer = 0;
		str_moveModes = enum_moveModes.DASHED;
	} else {
		num_dashTimer ++;
		break;
	}
	#endregion
	#region Post dash slow (DASHED)
	case enum_moveModes.DASHED:
	with (oPlayer) {
		x += _num_horizontalMovement * _num_movementSpeed * num_dashedSlow;	// num_dashedSlow is found under oPlayer and
		y += _num_verticalMovement * _num_movementSpeed * num_dashedSlow;	// determines the magnitude of the slow effect
	}
	if (num_slowTimer >= 50) {		// This value determines the length of time the slow occurs for
		num_slowTimer = 0;
		str_moveModes = enum_moveModes.FREEMOVE;
	} else {
		num_slowTimer ++;
		break;
	}
	#endregion
	break;
}
