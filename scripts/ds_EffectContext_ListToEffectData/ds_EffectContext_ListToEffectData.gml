/// @function ds_EffectContext_ListToEffectData(list_ds_EffectContext_contexts) Takes a list of effect contexts and
///		retuns a new list containing the effect data on each context.
/// @param {list_ds_EffectContext} list_ds_EffectContext_contexts The contexts to get the effect data from.
/// @returns {list_ds_EffectData} The list of extracted effect data.
var _list_ds_EffectContext_contexts = argument[0];


var _list_ds_EffectData_data = ds_list_create();
for (var i = 0; i < ds_list_size(_list_ds_EffectContext_contexts); i++) {
	var _ds_EffectContext_context = _list_ds_EffectContext_contexts[| i];
	var _ds_EffectData_data = ds_EffectContext_GetEffectData(_ds_EffectContext_context);
	ds_list_add(_list_ds_EffectData_data, _ds_EffectData_data);
}

return _list_ds_EffectData_data;
