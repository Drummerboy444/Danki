/// @function ds_Plan_InstanceOf(any_plan) Checks if the given variable is an instance of ds_Plan.
/// @param {any} any_plan The variable to check.
/// @returns {boolean} True if the variable is a ds_Plan.
var _any_plan = argument[0];


if (!ds_exists(_any_plan, ds_type_map)) {
	return false;
}

if (ds_map_size(_any_plan) != Enum_Actions.length) {
	return false;
}

for (var i = 0; i < Enum_Actions.length; i++) {
	if (is_undefined(_any_plan[? i])) {
		return false;
	}
}

return true;
