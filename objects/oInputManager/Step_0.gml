if (InputManager_CHECK_PRESSED(Enum_PlayerActions.LEFT_ABILITY)){
	OneShotService_Cast(oPlayer.id_oneShotService, Enum_Abilities.YELLOW_CIRCLE, mouse_x, mouse_y);
}
if (InputManager_CHECK_DOWN(Enum_PlayerActions.RIGHT_ABILITY)){
	ChannelService_Channel(oPlayer.id_channelService, Enum_Abilities.BLUE_BEAM, mouse_x, mouse_y);
}
