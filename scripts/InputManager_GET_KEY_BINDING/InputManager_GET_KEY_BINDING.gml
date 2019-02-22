#region Doc
/// @function InputManager_GET_KEY_BINDING(enum_action) Returns the current key binding of the given action
/// @param {enum} enum_action the action to get the key binding of
/// @returns {number} the identifyer for the key binding, whether that be a unicode value of a character,
///                   the built in constant of a mouse button etc.
#endregion
var _enum_action = argument[0];


var _arr_keyBindingData = oInputManager.map_keyBindings[? _enum_action];
return _arr_keyBindingData[0];
