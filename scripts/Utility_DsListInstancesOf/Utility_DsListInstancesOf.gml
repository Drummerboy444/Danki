/// @function Utility_DsListInstancesOf(list_instances, scr_instanceOf) Checks if every item in the list
///		passes the given instance of script.
/// @param {list} list_instances The instances to check.
/// @param {script} scr_instanceOf The script to check with.
/// @returns {boolean} True if every instances in the list passes the instance of script.
var _list_instances = argument[0];
var _scr_instanceOf = argument[0];


for (var i = 0; i < ds_list_size(_list_instances); i++) {
	var _any_instance = _list_instances[| i];
	if (!script_execute(_scr_instanceOf, _any_instance)) {
		return false;
	}
}

return true;
