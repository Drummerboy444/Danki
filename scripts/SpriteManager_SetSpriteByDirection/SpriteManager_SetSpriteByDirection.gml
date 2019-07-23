/// @function SpriteManager_SetSpriteByDirection(id_AbilityCaster, num_x1, num_y1, num_x2, num_y2) Sets the sprite according to the direction of travel.
/// @param {id} id_AbilityCaster
/// @param {num} num_x1
/// @param {num} num_y1
/// @param {num} num_x2
/// @param {num} num_y2
/// @returns Biddle.

var _id_AbilityCaster = argument[0];
var _num_x1 = argument[1];
var _num_y1 = argument[2];
var _num_x2 = argument[3];
var _num_y2 = argument[4];

var _num_direction = point_direction(_num_x1, _num_y1, _num_x2, _num_y2);

// _num_durectionIndex will be an integer from 0 (right) clockwise through 7 (down&right)
var _num_durectionIndex = floor((_num_direction + 22.5) / 45) mod 8;

var _enum_SpriteActions_action;
switch (_num_durectionIndex) {
	case 0:
		_enum_SpriteActions_action = Enum_SpriteActions.MOVE_SIDE;
	case 1:
		_enum_SpriteActions_action = Enum_SpriteActions.MOVE;
	case 2:
		_enum_SpriteActions_action = Enum_SpriteActions.MOVE_UP;
	case 3:
		_enum_SpriteActions_action = Enum_SpriteActions.MOVE;
	case 4:
		_enum_SpriteActions_action = Enum_SpriteActions.MOVE_SIDE;
	case 5:
		_enum_SpriteActions_action = Enum_SpriteActions.MOVE;
	case 6:
		_enum_SpriteActions_action = Enum_SpriteActions.MOVE_DOWN;
	case 7:
		_enum_SpriteActions_action = Enum_SpriteActions.MOVE;
}

var _bool_mirror = _num_durectionIndex > 2 && _num_durectionIndex < 6;

SpriteManager_SetSprite(_id_AbilityCaster, _enum_SpriteActions_action, _bool_mirror);