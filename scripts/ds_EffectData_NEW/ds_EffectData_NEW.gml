/// @function ds_EffectData_NEW(enum_effect, num_steps, id_caster, ?_any_arguments) Creates a new ds_EffectData
/// @param {enum} enum_effect The effect type.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {?any} any_arguments All of the required arguments.
/// @returns {ds_EffectData} The new effect data.
var _enum_effect = argument[0];
var _num_steps = argument[1];
var _id_caster = argument[2];


var _ds_EffectData_newEffectData = ds_map_create();

_ds_EffectData_newEffectData[? DS_EFFECTDATA_EFFECT] = _enum_effect;
_ds_EffectData_newEffectData[? DS_EFFECTDATA_STEPS] = _num_steps;
_ds_EffectData_newEffectData[? DS_EFFECTDATA_CASTER] = _id_caster;

switch (_enum_effect) {
	case Enum_Effects.DASH:
		var _num_dashMultiplier = argument[3];
		var _num_slowMultiplier = argument[4];
		var _num_slowSteps = argument[5];
		
		_ds_EffectData_newEffectData[? DS_EFFECTDATA_DASHMULTIPLIER] = _num_dashMultiplier;
		_ds_EffectData_newEffectData[? DS_EFFECTDATA_DASHSLOWMULTIPLIER] = _num_slowMultiplier;
		_ds_EffectData_newEffectData[? DS_EFFECTDATA_SLOWSTEPS] = _num_slowSteps;
		break;
		
	case Enum_Effects.DOT:
		var _num_damagePerStep = argument[3];
		var _enum_damageType = argument[4];
		
		_ds_EffectData_newEffectData[? DS_EFFECTDATA_DAMAGEPERSTEP] = _num_damagePerStep;
		_ds_EffectData_newEffectData[? DS_EFFECTDATA_DAMAGETYPE] = _enum_damageType;
		break;
		
	case Enum_Effects.SLOW:
		var _num_slowMultiplier = argument[3];
		
		_ds_EffectData_newEffectData[? DS_EFFECTDATA_SLOWMULTIPLIER] = _num_slowMultiplier;
		break;
		
	case Enum_Effects.STUN:
		break;
}

return _ds_EffectData_newEffectData;
