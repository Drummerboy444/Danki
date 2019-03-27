/// @function ds_ContextBag_CREATE_KEY(scr_script, str_variableName) Helper function for constructing the key
///		of a ds_ContextBag map. This is simply the concatenation of script index and variable name.
/// @param {script} scr_script The script index to use.
/// @param {string} str_variableName The variable name to use.
var _scr_script = argument[0];
var _str_variableName = argument[1];


var _str_scriptAsString = string(_scr_script);
return _str_scriptAsString + _str_variableName;
