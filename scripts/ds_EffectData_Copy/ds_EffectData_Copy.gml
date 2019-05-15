/// @function ds_EffectData_Copy(ds_EffectData_target, ds_EffectData_source) Copies the contents of the source
///		effect data to the target effect data.
/// @param {ds_EffectData} ds_EffectData_target The target effect data to copy to.
/// @param {ds_EffectData} ds_EffectData_source The source effect data to copy from.
var _ds_EffectData_target = argument[0];
var _ds_EffectData_source = argument[1];


if (!ds_EffectData_InstanceOf(_ds_EffectData_target)) {
	ErrorHandler_Error("Cannot copy effect data, as the target was not of type ds_EffectData");
}

if (!ds_EffectData_InstanceOf(_ds_EffectData_source)) {
	ErrorHandler_Error("Cannot copy effect data, as the source was not of type ds_EffectData");
}

ds_map_copy(_ds_EffectData_target, _ds_EffectData_source);
