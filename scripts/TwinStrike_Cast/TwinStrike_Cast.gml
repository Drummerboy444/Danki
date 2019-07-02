#region Doc
/// @function Twinstrike_Cast(id_caster, num_targetX, num_targetY) creates an instance of twinstrike.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target of the ability.
/// @param   {number}  num_targetY       The y target of the ability.
#endregion
var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];


var _num_direction = point_direction(_id_caster.x, _id_caster.y, _num_targetX, _num_targetY);

var _num_castX = _id_caster.x + lengthdir_x(TWINSTRIKE_RANGE, _num_direction);
var _num_castY = _id_caster.y + lengthdir_y(TWINSTRIKE_RANGE, _num_direction);

var _id_TwinStrike = Ability_Create(
	_num_castX,
	_num_castY,
	oTwinStrike,
	ds_AbilityCasterSnapshot_FromId(_id_caster),
	_id_caster.obj_opponent
);

_id_TwinStrike.image_angle = _num_direction - 90;
_id_TwinStrike.id_source = _id_caster;

return _id_TwinStrike;