//Skip step event entirely if we are not active.
if (bool_isActive){
	
	if num_duration < 0
	{
		Shake_RESET();
	}
	else {
		Shake_UPDATE();
	}
	
	//Only if we are the most powerful shake.
	if (bool_isApplying){
		
		//Apply our strength
		oCamera.x += random_range(-num_power, num_power);
		oCamera.y += random_range(-num_power, num_power);
	}
}