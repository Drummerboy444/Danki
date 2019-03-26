/// @function ds_ContextBag_Get(ds_ContextBag_contextBag, scr_script, str_variableName) Gets the value from
///		the given context bag according to the script index and variable name. Returns undefined if no value
///		is found.
/// @param {ds_ContextBag} ds_ContextBag_contextBag The context bag to look inside.
/// @param {script} scr_script The script to use as the first key.
/// @param {string} str_variableName The variable name to use as the second key.
/// @returns {any | undefined} The value found in that location of the map, undefined if no value exists.
var _ds_ContextBag_contextBag = argument[0];
var _scr_script = argument[1];
var _str_variableName = argument[2];

if(!ds_ContextBag_InstanceOf(_ds_ContextBag_contextBag)){
	ErrorHandler_Error("Tried to get value from non ds_ContextBag structure.");
	return undefined;
}

if (!script_exists(_scr_script)) {
	ErrorHandler_Error("Cannot get from context bag as script " + string(_scr_script) + " does not exist");
	return undefined;
}

var _str_key = ds_ContextBag_CREATE_KEY(_scr_script, _str_variableName);
return _ds_ContextBag_contextBag[? _str_key];
