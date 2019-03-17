/// @function ds_Plan_New() Creates a new ds_Plan with all intentions set to false.
/// @returns {ds_Plan} The new ds_Plan.


var _ds_Plan_newPlan = ds_map_create();
for (var i = 0; i < Enum_Actions.length; i++) {
	_ds_Plan_newPlan[? i] = false;
}

return _ds_Plan_newPlan;
