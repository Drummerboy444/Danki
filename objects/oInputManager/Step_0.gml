if (instance_exists(oPlayer)) {
	if (InputManager_CHECK_DOWN(Enum_PlayerActions.LEFT_ABILITY)){
		show_debug_message("pressed")
		//OneShotService_Cast(oPlayer.id_oneShotService, Enum_Abilities.YELLOW_CIRCLE, mouse_x, mouse_y);
		AbilityTreeManager_CastLeft(mouse_x, mouse_y);
	}
	if (InputManager_CHECK_DOWN(Enum_PlayerActions.RIGHT_ABILITY)){
		ChannelService_Channel(oPlayer.id_channelService, Enum_Abilities.BLUE_BEAM, mouse_x, mouse_y);
	}
}
