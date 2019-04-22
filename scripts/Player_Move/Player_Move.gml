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
var _bool_isMovingVertically = _bool_up xor _bool_down;

var _num_horizontalMovement = _bool_right - _bool_left;
var _num_verticalMovement = _bool_down - _bool_up;

var _num_movementSpeed = ds_Stats_Get(oPlayer.ds_Stats_frameStats, Enum_Stats.SPEED);
if (_bool_isMovingHorizontally && _bool_isMovingVertically) {
	var _num_movementSpeed = _num_movementSpeed / sqrt(2);
}

with (oPlayer) {
	var _num_xOffset;
	var _num_yOffset;
	
	if(AbilityCaster_CheckInstanceHasEffect(id, Enum_Effects.DASH)){
		// Dashing in direction set at start of dash
		_num_xOffset = 100 * num_xDashMovement;
		_num_yOffset = 100 * num_yDashMovement;
	}
	else{
		// Walking in direction dictated by arrow keys
		_num_xOffset = 100 * _num_horizontalMovement;
		_num_yOffset = 100 * _num_verticalMovement;
	}
	
	if (_bool_dash and num_dashCooldownRemaining <= 0 and (_bool_isMovingHorizontally || _bool_isMovingVertically)) {
		//Initiate a dash
		num_dashCooldownRemaining = PLAYER_DASH_DURATION + PLAYER_DASH_SLOW_DURATION;
		num_xDashMovement = _num_horizontalMovement;
		num_yDashMovement = _num_verticalMovement;
		AbilityCaster_AddEffectDataToBuffer(
			id,
			EffectData_New(
				Enum_Effects.DASH,
				[PLAYER_DASH_SPEED, PLAYER_DASH_SLOW, PLAYER_DASH_SLOW_DURATION],
				PLAYER_DASH_DURATION,
				id
			)
		);
	}
	
	MovementManager_QueueMovement(
		MovementData_New(
			x + _num_xOffset,
			y + _num_yOffset,
			id,
			true
		)
	);
}