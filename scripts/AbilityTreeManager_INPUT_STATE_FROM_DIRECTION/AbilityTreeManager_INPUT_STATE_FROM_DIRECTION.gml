/// @function AbilityTreeManager_INPUT_STATE_FROM_DIRECTION(enum_direction) Returns the corresponding input
///		state for a given direction.
/// @param {enum} enum_direction The direction.
/// @returns {enum} The input state.
var _enum_direction = argument[0];


switch (_enum_direction) {
	case Enum_Direction.LEFT:
		return Enum_InputState.LEFT;
	case Enum_Direction.RIGHT:
		return Enum_InputState.RIGHT;
	default:
		ErrorHandler_FatalError("Unable to get input state from direction. The direction was not recognised.");
}
