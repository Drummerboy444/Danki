#region Doc
/// @function Whirlwind_ContinueChannel(id_caster, num_targetX, num_targetY, id_whirlwind) Blue beam continue channel script.
/// @param   {id}      id_caster		 The id of the abilityCaster.
/// @param   {number}  num_targetX       The x target of the beam.
/// @param   {number}  num_targetY       The y target of the beam.
/// @param	 {id}	   id_whirlwind		 The id of the blue beam object to be used by this script, generated in the StartChannel script.
#endregion

var _id_caster = argument[0];
var _num_targetX = argument[1];
var _num_targetY = argument[2];
var _id_whirlwind = argument[3];

_id_whirlwind.x = _id_caster.x;
_id_whirlwind.y = _id_caster.y;

var _list_id_collisions = ds_list_create(); 

AbilityCaster_ApplyEffect(
	_id_caster,
	ds_EffectContext_New(
		ds_SlowEffectData_New(1, _id_caster, WHIRLWIND_SPEED_MULTIPLIER),
		_id_caster.ds_Stats_frameStats,
		ds_EffectContext_ListToEffectData(_id_caster.list_ds_EffectContext_activeEffects)
	)
);

collision_circle_list(_id_caster.x,_id_caster.y,WHIRLWIND_DAMAGE_RADIUS,oEnemy,false,true,_list_id_collisions,false);

var _ds_contextBag_bag = _id_caster.id_channelService.ds_contextBag_bag;

var _num_damageCountDown = ds_ContextBag_Get(_ds_contextBag_bag, Whirlwind_ContinueChannel, "damageCountDown");

if(is_undefined(_num_damageCountDown) || _num_damageCountDown == 0) {
	_num_damageCountDown = WHIRLWIND_DAMAGE_INTERVAL;
	
	ds_ContextBag_Set(_ds_contextBag_bag, Whirlwind_ContinueChannel, "damageCountDown", _num_damageCountDown);

	for(i=0; i<ds_list_size(_list_id_collisions); i++) {
		DamageManager_ApplyDamage(
			_id_caster,
			_list_id_collisions[| i],
			DamageData_New(Enum_DamageTypes.SLASHING, WHIRLWIND_DAMAGE)
		)
	}
}

ds_ContextBag_Set(_ds_contextBag_bag, Whirlwind_ContinueChannel, "damageCountDown", _num_damageCountDown - 1);

ds_list_destroy(_list_id_collisions); 