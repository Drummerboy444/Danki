#region Doc
/// @function IceBeam_channel(num_targetX, num_targetY)
/// @param   {number}  num_targetX       The x target of the channel.
/// @param   {number}  num_targetY       The y target of the channel.
#endregion

var _num_targetX = argument[0];
var _num_targetY = argument[1];

show_debug_message("Channel");

var _num_startX = id_owner.x;
var _num_startY = id_owner.y;

var _num_mouseDist = sqrt(sqr(_num_targetX-_num_startX)+sqr(_num_targetY-_num_startY));

var _num_endX = _num_startX +((_num_targetX-_num_startX)*1000/_num_mouseDist);
var _num_endY = _num_startY +((_num_targetY-_num_startY)*1000/_num_mouseDist);

id_channelObject.startX = _num_startX;
id_channelObject.startY = _num_startY;
id_channelObject.endX = _num_endX;
id_channelObject.endY = _num_endY;

if(collision_line(_num_startX, _num_startY,
					_num_endX, _num_endY,
					oEnemy, false, true)){
	DamageManager_ApplyDamage(oEnemy, ENUM_DamageTypes.ICE, 1);
	ds_list_add(oEnemy.list_effectsBuffer,[Enum_Effects.SLOWED,id,[0.5],100]);
	show_debug_message("COLLISION");
}
							
						