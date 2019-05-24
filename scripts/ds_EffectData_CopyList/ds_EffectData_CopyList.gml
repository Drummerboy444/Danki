/// @function ds_EffectData_CopyList(list_target, list_source) Copies the source list of effect data to the
///		target list.
/// @param {list} list_target The target list to copy to.
/// @param {list} list_source The source list, containing instances of EffectData, to copy from.
var _list_target = argument[0];
var _list_source = argument[1];


for (var i = 0; i < ds_list_size(_list_source); i++) {
	var _ds_EffectData_item = _list_source[| i];
	if (!ds_EffectData_InstanceOf(_ds_EffectData_item)) {
		ErrorHandler_FatalError("Could not copy ds_EffectData list as some itesm were not of type ds_EffectData");
	}
}

Utility_DsListCopy(_list_target, _list_source, Enum_DsTypes.MAP);
