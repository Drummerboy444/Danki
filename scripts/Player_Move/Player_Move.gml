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
var _num_horizontalMovementDistance = 0;
var _num_verticalMovementDistance = 0;
with (oPlayer) {
	switch (num_currentMoveMode) {
		#region Movement (FREEMOVE)
		case enum_PlayerMoveModes.FREEMOVE:
			_num_horizontalMovementDistance = _num_horizontalMovement * _num_movementSpeed;
			_num_verticalMovementDistance = _num_verticalMovement * _num_movementSpeed;
			if (_bool_dash) {
				num_dashTimer = 0;
				num_slowTimer = 0;
				num_xDashMovement = _num_horizontalMovement;
				num_yDashMovement = _num_verticalMovement;
				num_currentMoveMode = enum_PlayerMoveModes.DASHING;
			}
			break;
		#endregion
		#region Dashing (DASHING)
		case enum_PlayerMoveModes.DASHING:
			_num_horizontalMovementDistance = num_xDashMovement * _num_movementSpeed * num_dashSpeed;
			_num_verticalMovementDistance = num_yDashMovement * _num_movementSpeed * num_dashSpeed;
			if (num_dashTimer >= num_dashLength) {
				num_dashTimer = 0;
				num_currentMoveMode = enum_PlayerMoveModes.DASHED;
			} else {
				num_dashTimer++;
			}
			break;
		#endregion
		#region Post dash slow (DASHED)
		case enum_PlayerMoveModes.DASHED:
			_num_horizontalMovementDistance = _num_horizontalMovement * _num_movementSpeed * num_dashedSlow;
			_num_verticalMovementDistance = _num_verticalMovement * _num_movementSpeed * num_dashedSlow;
			if (num_slowTimer >= num_slowLength) {
				num_slowTimer = 0;
				num_currentMoveMode = enum_PlayerMoveModes.FREEMOVE;
			} else {
				num_slowTimer++;
			}
			break;	
		#endregion
	}
	x += _num_horizontalMovementDistance;
	y += _num_verticalMovementDistance;
}
