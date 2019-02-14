#region Doc
/// @function ErrorHandler_FatalError(str_message) Prints a formatted error message as a popup window, and then
///		ends the game. This also gives information about the stackframe when the error is thrown.
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

show_error(_str_errorMessage, true);
