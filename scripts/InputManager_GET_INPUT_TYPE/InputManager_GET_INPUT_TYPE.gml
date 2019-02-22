#region Doc
/// @function InputManager_GET_INPUT_TYPE(enum_action) Returns the current input type of the given action
/// @param {enum} enum_action the action to get the input type of
/// @returns {enum} the input type
#endregion
var _enum_action = argument[0];


var _arr_keyBindingData = oInputManager.map_keyBindings[? _enum_action];
return _arr_keyBindingData[1];
