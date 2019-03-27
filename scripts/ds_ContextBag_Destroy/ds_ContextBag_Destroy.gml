/// @function ds_ContextBag_Destroy(ds_ContextBag_contextBag) Destroys the given context bag.
/// @param {ds_ContextBag} ds_ContextBag_contextBag The context bag to destroy.
/// @returns {boolean} True if the context bag was destroyed.
var _ds_ContextBag_contextBag = argument[0];


if (!ds_ContextBag_InstanceOf(_ds_ContextBag_contextBag)) {
	ErrorHandler_Error(
		"Variable was not destroyed as it was of type " + typeof(_ds_ContextBag_contextBag) + " and not of type ds_ContextBag"
	);
	return false;
}

ds_map_destroy(_ds_ContextBag_contextBag);
return true;
