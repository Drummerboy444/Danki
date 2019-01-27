#region Doc
/// @function InputManager_CHECK_DOWN(num_inputCode)
/// @param {number} num_inputCode the keycode or mouse button code
/// @returns {boolean} true if key is down
#endregion
var num_inputCode = argument[0];

if (keyboard_check(num_inputCode)){
	return true;	
}

if (mouse_check_button(num_inputCode)){
	return true;	
}

return false;
