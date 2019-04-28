/// @function DashEffectData_New(num_steps, id_caster, num_dashMultiplier, num_slowMultiplier, num_slowSteps)
///		Creates a new dash effect data.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @param {number} num_dashMultiplier The multiplicative effect of the dash on the targets speed.
/// @param {number} num_slowMultiplier The multiplicative effect of the subsequent slow on the targets speed.
/// @param {number} num_slowSteps The number of steps for the subsequent slow.
/// @returns {DashEffectData} The new dash effect data.
var _num_steps = argument[0];
var _id_caster = argument[1];
var _num_dashMultiplier = argument[2];
var _num_slowMultiplier = argument[3];
var _num_slowSteps = argument[4];


return EffectData_NEW(
	Enum_Effects.DASH,
	[_num_dashMultiplier, _num_slowMultiplier, _num_slowSteps],
	_num_steps,
	_id_caster
);
