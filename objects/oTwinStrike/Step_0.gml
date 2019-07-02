num_animationLength--;

if(num_animationLength <= 0) {
	instance_destroy();
}

x = oPlayer.x + num_xDisplacement;
y = oPlayer.y - num_yDisplacement;
