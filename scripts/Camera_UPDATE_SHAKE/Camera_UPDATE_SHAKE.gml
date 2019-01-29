/// @function Camera_UPDATE_SHAKE() Updates the oCamera's internal shake counter and also shakes the camera.

show_debug_message("Updating shake.");

x += random_range(-num_shakeIntensity, num_shakeIntensity);
y += random_range(-num_shakeIntensity, num_shakeIntensity);

num_shakeCounter++;

if num_shakeCounter > num_shakeCounterEnd {
	bool_isShaking = false;
	num_shakeCounter = 0;
	num_shakeCounterEnd = 0;
	num_shakeIntensity = 0;
}


