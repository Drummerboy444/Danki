/// @function ds_DashEffectData_New(num_steps, id_caster, num_dashMultiplier, num_slowMultiplier, num_slowSteps)
///	Creates a new dash effect data.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {number} num_dashMultiplier The multiplicative effect of the dash on the targets speed.
/// @param {number} num_slowMultiplier The multiplicative effect of the subsequent slow on the targets speed.
/// @param {number} num_slowSteps The number of steps for the subsequent slow.
/// @returns {ds_DashEffectData} The new dash effect data.
var _num_steps = argument[0];
var _id_caster = argument[1];
var _num_dashMultiplier = argument[2];
var _num_slowMultiplier = argument[3];
var _num_slowSteps = argument[4];


var _ds_DashEffectData_new = ds_EffectData_NEW(Enum_Effects.DASH, _num_steps, _id_caster);
ds_map_add(_ds_DashEffectData_new, DS_DASHEFFECTDATA_DASHMULTIPLIER, _num_dashMultiplier);
ds_map_add(_ds_DashEffectData_new, DS_DASHEFFECTDATA_DASHSLOWMULTIPLIER, _num_slowMultiplier);
ds_map_add(_ds_DashEffectData_new, DS_DASHEFFECTDATA_SLOWSTEPS, _num_slowSteps);

return _ds_DashEffectData_new;
