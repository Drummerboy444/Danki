/// @function Shake_MANAGE_SHAKES(arr_oShake) Applies pool management to the oShake array.
///		Deactivates shakes with no duration left. Flags the current strongest shake, so that shake can proceed to
///		apply itself to the camera.
/// @param {arr} arr_oShake Array of oShake object to pool manage.

var _arr_oShake = argument[0];
var _num_poolCount = array_length_1d(_arr_oShake) - 1;

var _id_strongestShake = noone;
var _num_currentMaxPower = 0;

for (var i = 0; i < _num_poolCount; i++){
	
	_arr_oShake[i].bool_isApplying = false;
	
	if _arr_oShake[i].bool_isActive
	{
		if _arr_oShake[i].num_power > _num_currentMaxPower
		{
			_id_strongestShake = _arr_oShake[i];
			_num_currentMaxPower = _arr_oShake[i].num_power;
		}
	}
}

if _id_strongestShake != noone{
	_id_strongestShake.bool_isApplying = true;
}
