/// @function ds_EffectData_Destroy(ds_EffectData_effectdata) Destroy a ds_EffectData.
/// @param {ds_EffectData} ds_EffectData_effectdata The ds_EffectData_effectdata to destroy.
/// @returns {bool} Asserts input was EffectData was therefore destoyed.
var _ds_EffectData_effectdata = argument[0];

if(!ds_EffectData_InstanceOf(_ds_EffectData_effectdata)){
	ErrorHandler_FatalError("Expected EffectData input. Received type: " + typeof(_ds_EffectData_effectdata));
	return false;	
}

ds_Stats_Destroy(_ds_EffectData_effectdata[? DS_EFFECT_DATA_CASTING_STATS]);

var _list_ds_EffectData_activeEffects = _ds_EffectData_effectdata[? DS_EFFECT_DATA_CASTING_EFFECTS];
for (var i = 0; i < ds_list_size(_list_ds_EffectData_activeEffects); i++) {
	ds_EffectData_Destroy(_list_ds_EffectData_activeEffects[| i]);
}

ds_map_destroy(_ds_EffectData_effectdata);
return true;