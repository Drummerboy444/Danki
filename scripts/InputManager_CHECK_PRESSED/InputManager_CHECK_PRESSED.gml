#region Doc
/// @function InputManager_CHECK_PRESSED(num_inputCode)
/// @param {number} num_inputCode the keycode or mouse button code
/// @returns {boolean} true if key is pressed
#endregion
var num_inputCode = argument[0];

if (keyboard_check_pressed(num_inputCode)){
	return true;	
}

if (mouse_check_button_pressed(num_inputCode)){
	return true;	
}

return false;
