/// @function ds_Plan_Destroy(ds_Plan_plan) Destroys the given ds_Plan.
/// @param {ds_Plan} ds_Plan_plan The plan to destroy.
/// @returns {boolean} True if the plan was destroyed.
var _ds_Plan_plan = argument[0];


if (!ds_Plan_InstanceOf(_ds_Plan_plan)) {
	ErrorHandler_Error(
		"Variable was not destroyed as it was of type " + typeof(_ds_Plan_plan) + " and not of type ds_Plan"
	);
	return false;
}

ds_map_destroy(_ds_Plan_plan);
return true;
