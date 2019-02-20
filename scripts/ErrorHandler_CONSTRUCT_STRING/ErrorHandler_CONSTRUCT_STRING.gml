#region Doc
/// @function ErrorHandler_Error(str_objectName, str_objectID, str_message) Constructs an error message for use by the error handler.
/// @param {str_objectName} str_objectName of error thrower.
/// @param {str_instanceID} str_instanceID of error thrower.
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

return(
	"----------------------------- ERROR -----------------------------\n" +
	"\n" +
	"Object:     " + argument[0] + "\n" +
	"ID:            " + argument[1] + "\n" +
	"\n" +
	argument[2] + "\n" +
	"\n" +
	"-----------------------------  END  -----------------------------"
);