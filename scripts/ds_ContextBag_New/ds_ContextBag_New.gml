/// @function ds_ContextBag_New() Creates a new empty ds_ContextBag. This is allows us to store data on scripts
///		between steps, without needing instance variables.
/// @returns {ds_ContextBag} The new ds_ContextBag.


return ds_map_create();
