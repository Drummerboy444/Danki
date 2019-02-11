/// @function Camera_MANAGE_SHAKES() Applies pool management to the oShake array.
///		Deactivates shakes with no duration left. Flags the current strongest shake, so that shake can proceed to
///		apply itself to the camera.

var _id_strongestShake = noone;
var _num_currentMaxPower = 0;

//Set all oShakes to not isApplying, then find the strongest one.
for (var i = 0; i < num_numberOfShakes; i++){
	
	arr_oShake[i].bool_isApplying = false;
	
	if (arr_oShake[i].bool_isActive){
		
		if (arr_oShake[i].num_power > _num_currentMaxPower){
			
			_id_strongestShake = arr_oShake[i];
			_num_currentMaxPower = arr_oShake[i].num_power;
		}
	}
}

//Set the strongest oShake to isApplying
if (_id_strongestShake != noone){
	
	_id_strongestShake.bool_isApplying = true;
}
