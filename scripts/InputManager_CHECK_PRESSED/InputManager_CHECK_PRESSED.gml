#region Doc
/// @function InputManager_CHECK_PRESSED(enum_action) Checks if the input for the given action is pressed
/// @param {enum} enum_action The action to check if the relevant input is pressed
/// @returns {boolean} true if input is pressed
#endregion
var _enum_action = argument[0];


var _num_keyBinding = InputManager_GET_KEY_BINDING(_enum_action);
var _enum_inputType = InputManager_GET_INPUT_TYPE(_enum_action);

switch (_enum_inputType) {
	case Enum_InputType.KEYBOARD:
		return keyboard_check_pressed(_num_keyBinding);
	case Enum_InputType.MOUSE:
		return mouse_check_button_pressed(_num_keyBinding);
	default:
		return false;
}
