#region Doc
/// @function ErrorHandler_Error(str_message) Prints a formatted error message as a popup window, and then
///		ends the game.
/// @param {str_message} str_message to be displayed as part of the error.

//----------------------------- ERROR -----------------------------
//
//Object:     oCallingObject
//ID:         xxxxxxx
//
//Error message....
//
//-----------------------------  END  -----------------------------
#endregion

var _str_message = argument[0];
var _str_objectName = object_get_name(object_index);
var _str_instanceID = string(id);

var _str_errorMessage = ErrorHandler_CONSTRUCT_STRING(_str_objectName, _str_instanceID, _str_message);

show_debug_message(_str_errorMessage);
