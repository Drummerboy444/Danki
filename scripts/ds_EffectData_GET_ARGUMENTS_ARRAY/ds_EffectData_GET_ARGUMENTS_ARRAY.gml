/// @function ds_EffectData_GET_ARGUMENTS_ARRAY(ds_EffectData_data) Gets the arguments from an EffectData.
/// @param {ds_EffectData} ds_EffectData_data The effect data.
/// @returns {array} The effect arguments.
var _ds_EffectData_data = argument[0];

if(!ds_EffectData_InstanceOf(_ds_EffectData_data)){
	ErrorHandler_FatalError("Tried to get arguments from non EffectData structure.");
}

var _enum_effect = _ds_EffectData_data[? DS_EFFECTDATA_EFFECT];

switch (_enum_effect) {
	case Enum_Effects.DASH:
		var _arr_argumentsArray = [
		_ds_EffectData_data[? DS_EFFECTDATA_DASHMULTIPLIER],
		_ds_EffectData_data[? DS_EFFECTDATA_DASHSLOWMULTIPLIER],
		_ds_EffectData_data[? DS_EFFECTDATA_SLOWSTEPS]
		]
		break;
		
	case Enum_Effects.DOT:
		var _arr_argumentsArray = [
		_ds_EffectData_data[? DS_EFFECTDATA_DAMAGEPERSTEP],
		_ds_EffectData_data[? DS_EFFECTDATA_DAMAGETYPE]
		]
		break;
		
	case Enum_Effects.SLOW:
		var _arr_argumentsArray = [
		_ds_EffectData_data[? DS_EFFECTDATA_SLOWMULTIPLIER]
		]
		break;
		
	case Enum_Effects.STUN:
		break;
}

return _arr_argumentsArray;
