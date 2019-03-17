/// @function ds_Plan_SetIntention(ds_Plan_plan, enum_action, bool_intention) Sets whether the plan includes the given action
/// @param {ds_Plan} ds_Plan_plan The plan to update.
/// @param {enum} enum_action The action to set the intention of.
/// @param {boolean} bool_intention Whether the action should or shouldn't be done.
/// @returns {boolean} Whether the intention was successfully set.
var _ds_Plan_plan = argument[0];
var _enum_action = argument[1];
var _bool_intention = argument[2];


if (!ds_Plan_InstanceOf(_ds_Plan_plan)) {
	ErrorHandler_Error("Unable to update the plan intention for variable of type " + typeof(_ds_Plan_plan));
	return false;
}

_ds_Plan_plan[? _enum_action] = _bool_intention;
return true;
