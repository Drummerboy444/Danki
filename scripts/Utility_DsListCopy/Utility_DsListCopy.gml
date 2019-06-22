/// @function Utility_DsListCopy(list_target, list_source, enum_dsType) Copies the source list to the
///		target list.
/// @param {list}   list_target       The target list to copy to.
/// @param {list}   list_source       The source list to copy from.
/// @param {enum}   enum_dsType       The ds type that the list contains.
var _list_target = argument[0];
var _list_source = argument[1];
var _enum_dsType = argument[2];


ds_list_clear(_list_target);

for (var i = 0; i < ds_list_size(_list_source); i++) {
	var _ds_source = _list_source[| i];
	var _ds_target;

	switch (_enum_dsType) {
		case Enum_DsTypes.STACK:
			_ds_target = ds_stack_create();
			ds_stack_copy(_ds_target, _ds_source);
			break;
		case Enum_DsTypes.QUEUE:
			_ds_target = ds_queue_create();
			ds_queue_copy(_ds_target, _ds_source);
			break;
		case Enum_DsTypes.LIST:
			_ds_target = ds_list_create();
			ds_list_copy(_ds_target, _ds_source);
			break;
		case Enum_DsTypes.MAP:
			_ds_target = ds_map_create();
			ds_map_copy(_ds_target, _ds_source);
			break;
		case Enum_DsTypes.PRIORITY_QUEUE:
			_ds_target = ds_priority_create();
			ds_priority_copy(_ds_target, _ds_source);
			break;
		case Enum_DsTypes.GRID:
			_ds_target = ds_grid_create(0, 0);
			ds_grid_copy(_ds_target, _ds_source);
			break;
		default:
			ErrorHandler_FatalError("Cannot copy ds list, as uknown data structure was given");
	}

	_list_target[| i] = _ds_target;
}
