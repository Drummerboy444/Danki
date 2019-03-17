/// @function ds_Plan_Includes(ds_Plan_plan, enum_action) Returns true if the given plan includes the given action
/// @param {ds_Plan} ds_Plan_plan The plan to check.
/// @param {enum} enum_action The action to check if the plan includes.
/// @returns {boolean} True if the plan includes the action.
var _ds_Plan_plan = argument[0];
var _enum_action = argument[1];


if (!ds_Plan_InstanceOf(_ds_Plan_plan)) {
	ErrorHandler_Error("Unable to check if plan includes action for variable of type " + typeof(_ds_Plan_plan));
	return false;
}

return _ds_Plan_plan[? _enum_action];
