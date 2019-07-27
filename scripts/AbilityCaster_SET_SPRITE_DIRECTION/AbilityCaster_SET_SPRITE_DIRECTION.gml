/// @function AbilityCaster_SET_SPRITE_DIRECTION(num_x1, num_y1, num_x2, num_y2) Sets the ability caster sprite direction according
/// to movement vector.
/// @param {num} num_x1 The 'from' x coordinate.
/// @param {num} num_y1 The 'from' y coordinate.
/// @param {num} num_x2 The 'from' x coordinate.
/// @param {num} num_y2 The 'from' y coordinate.

var _num_x1 = argument[0];
var _num_y1 = argument[1];
var _num_x2 = argument[2];
var _num_y2 = argument[3];

var _num_direction = point_direction(_num_x1, _num_y1, _num_x2, _num_y2);

// _num_directionIndex will be an integer from 0 (right) clockwise through 7 (down&right)
var _num_directionIndex = floor((_num_direction + 22.5) / 45) mod 8;

// Funnily enough this switch statment just sets spriteDirection as _num_direction. Worth the clarity though I think.
switch (_num_directionIndex) {
	case 0:
		spriteDirection = Enum_SpriteDirection.RIGHT;
	case 1:
		spriteDirection = Enum_SpriteDirection.UPRIGHT;
	case 2:
		spriteDirection = Enum_SpriteDirection.UP;
	case 3:
		spriteDirection = Enum_SpriteDirection.UPLEFT;
	case 4:
		spriteDirection = Enum_SpriteDirection.LEFT;
	case 5:
		spriteDirection = Enum_SpriteDirection.DOWNLEFT;
	case 6:
		spriteDirection = Enum_SpriteDirection.DOWN;
	case 7:
		spriteDirection = Enum_SpriteDirection.DOWNRIGHT;
}