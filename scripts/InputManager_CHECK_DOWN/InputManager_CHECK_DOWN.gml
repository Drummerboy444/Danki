#region Doc
/// @function InputManager_CHECK_DOWN(enum_action) Checks if the input for the given action is down
/// @param {enum} enum_action The action to check if the relevant input is down
/// @returns {boolean} true if input is down
#endregion
var _enum_action = argument[0];

var _InputKey_key = map_keyBindings[? _enum_action];

var _num_keyBinding = InputKey_GetKeycode(_InputKey_key);
var _enum_inputType = InputKey_GetInputDevice(_InputKey_key);

switch (_enum_inputType) {
	case Enum_InputType.KEYBOARD:
		return keyboard_check(_num_keyBinding);
	case Enum_InputType.MOUSE:
		return mouse_check_button(_num_keyBinding);
	default:
		return false;
}
