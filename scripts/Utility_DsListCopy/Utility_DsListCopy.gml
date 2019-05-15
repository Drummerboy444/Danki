/// @function Utility_DsListCopy(list_target, list_source, scr_listItemCopy, scr_emptyListItem) Copies the source
///		list to the	target list. Each item of the list is copied using the given script.
/// @param {list}   list_target       The target list to copy to.
/// @param {list}   list_source       The source list to copy from.
/// @param {script} scr_listItemCopy  The script for copying an item in the list. This script must take 2
///                                   arguments, target and source, as every ds_Copy script does.
/// @param {script} scr_emptyListItem This script should create an new, empty instance of the data structure
///                                   that the list contains. eg ds_list_create, or ds_map_create. This should
///                                   take no arguments.
var _list_target = argument[0];
var _list_source = argument[1];
var _scr_listItemCopy = argument[2];
var _scr_emptyListItem = argument[3];


ds_list_clear(_list_target);
for (var i = 0; i < ds_list_size(_list_source); i++) {
	var _ds_target = script_execute(_scr_emptyListItem);
	var _ds_source = _list_source[| i];
	
	script_execute(_scr_listItemCopy, _ds_target, _ds_source);
	_list_target[| i] = _ds_target;
}
