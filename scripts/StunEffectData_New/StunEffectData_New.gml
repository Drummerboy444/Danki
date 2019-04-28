/// @function StunEffectData_New(num_steps, id_caster) Creates a new stun effect data.
/// @param {number} num_steps The number of steps.
/// @param {id} id_caster The instance id of the caster.
/// @returns {StunEffectData} The new stun effect data.
var _num_steps = argument[0];
var _id_caster = argument[1];


return EffectData_NEW(Enum_Effects.STUN, [], _num_steps, _id_caster);
