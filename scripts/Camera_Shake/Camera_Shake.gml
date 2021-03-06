/// @function Camera_Shake(num_intensity, num_duration) Causes the camera to shake randomly around the current
///		target's position for a given number of frames.
/// @param {num} num_intesity The strength of the shake.
/// @param {num} num_frameDuration The duration of the shake in frames.

var _num_intensity = argument[0];
var _num_duration = argument[1];

show_debug_message("Starting shake.");


	for (var i = 0; i < array_length_1d(oCamera.arr_oShake) - 1; i++){
		
		if (oCamera.arr_oShake[i].bool_isActive = false){
			
			oCamera.arr_oShake[i].num_duration = _num_duration;
			oCamera.arr_oShake[i].num_power = _num_intensity;
			oCamera.arr_oShake[i].bool_isActive = true;
			
			//Break so we only only set the 1st non active to shake.
			break;
		}
	}
