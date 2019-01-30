//Skip step event entirely if we are not active.
if (bool_isActive){
	
	if _num_shakeCounter < 0
	{
		Shake_RESET(self);
	}
	else {
		Shake_UPDATE(self);
	}
	
	//Only if we are the most powerful shake.
	if (bool_isApplying){
		with (oCamera){
			//Apply our strength
			x += random_range(-num_power, num_power);
			y += random_range(-num_power, num_power);
		}
	}
}

