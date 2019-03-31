if (instance_exists(oPlayer)) {
	var _num_remainingCooldownProportion = AbilityCaster_GetRemainingCooldownProportion(oPlayer.id);
	if (_num_remainingCooldownProportion > 0) {
		draw_set_color(c_red);
		draw_rectangle(
			0,
			0,
			num_cooldownBarMaxWidth - (_num_remainingCooldownProportion * num_cooldownBarMaxWidth),
			num_cooldownBarHeight,
			false
		);
	} else {
		draw_set_color(c_lime);
		draw_rectangle(
			0,
			0,
			num_cooldownBarMaxWidth,
			num_cooldownBarHeight,
			false
		);
	}
	draw_set_color(c_white);
	draw_rectangle(
		0,
		0,
		num_cooldownBarMaxWidth,
		num_cooldownBarHeight,
		true
	);
}