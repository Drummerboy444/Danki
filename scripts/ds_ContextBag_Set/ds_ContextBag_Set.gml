/// @function ds_ContextBag_Set(ds_ContextBag_contextBag, scr_script, str_variableName, any_value) Adds the
///		given value to the ds_ContextBag using the script and string as keys. If a value already exists at this
///		location in ds_ContextBag, then we override it.
/// @param {ds_ContextBag} ds_ContextBag_contextBag The context bag to add to.
/// @param {script} scr_script The script to use as the first key.
/// @param {string} str_variableName The variable name to use as the second key.
/// @param {any} any_value The value to be added to the context bag.
/// @returns {boolean} Whether the value was successfully set.
var _ds_ContextBag_contextBag = argument[0];
var _scr_script = argument[1];
var _str_variableName = argument[2];
var _any_value = argument[3];


if(!ds_ContextBag_InstanceOf(_ds_ContextBag_contextBag)){
	ErrorHandler_Error("Tried to set value in non ds_ContextBag structure.");
	return false;
}

if (!script_exists(_scr_script)) {
	ErrorHandler_Error("Cannot add to context bag as script " + string(_scr_script) + " does not exist");
	return false;
}

var _str_key = ds_ContextBag_CREATE_KEY(_scr_script, _str_variableName);
_ds_ContextBag_contextBag[? _str_key] = _any_value;
return true;
