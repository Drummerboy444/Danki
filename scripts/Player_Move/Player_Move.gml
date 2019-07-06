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

with (oPlayer) {
	var _num_xOffset = 1000000 * _num_horizontalMovement;
	var _num_yOffset = 1000000 * _num_verticalMovement;
	
	if (
		_bool_dash
		&& (_bool_isMovingHorizontally or _bool_isMovingVertically)
		&& !AbilityCaster_CheckInstanceHasEffect(id, Enum_Effects.DASH)
	) {
		//Initiate a dash
		AbilityCaster_ApplyEffect(
			id,
			ds_EffectContext_New(
				ds_DashEffectData_New(
					PLAYER_DASH_STEPS + PLAYER_DASH_SLOW_STEPS,
					id,
					PLAYER_DASH_SPEED_MULTIPLIER,
					PLAYER_DASH_SLOW_MULTIPLIER,
					PLAYER_DASH_SLOW_STEPS,
					point_direction(x, y, x + _num_xOffset, y + _num_yOffset)
				),
				ds_AbilityCasterSnapshot_FromId(id)
			)
		);
	}
	
	MovementManager_QueueMovement(
		MovementData_New(
			x + _num_xOffset,
			y + _num_yOffset,
			id,
			Enum_MovementType.LINEAR_SLIDING
		)
	);
	
	if (_num_horizontalMovement > 0) {
		SpriteManager_SetSprite(id, Enum_SpriteActions.MOVE, false);
	} else if (_num_horizontalMovement < 0) {
		SpriteManager_SetSprite(id, Enum_SpriteActions.MOVE, true);
	} else if (bool_mirror) {
		SpriteManager_SetSprite(id, Enum_SpriteActions.IDLE, true);
	} else {
		SpriteManager_SetSprite(id, Enum_SpriteActions.IDLE, false);
	}
}