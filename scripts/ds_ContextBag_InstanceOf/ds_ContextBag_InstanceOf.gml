/// @function ds_Agenda_InstanceOf(any_contextBag) Checks if the given variable is an instance of ds_ContextBag.
/// @param {any} any_contextBag The variable to check.
/// @returns {boolean} True if the variable is a ds_ContextBag.
var _any_contextBag = argument[0];


return ds_exists(_any_contextBag, ds_type_map);
