//if (InputManager_CHECK_PRESSED(Enum_Actions.LEFT_ABILITY){
//	Player_LeftAbility();
//}
if (InputManager_CHECK_DOWN(Enum_Actions.RIGHT_ABILITY)){
	ChannelService_Channel(oPlayer.id_channelService, Enum_Abilities.ICE_BEAM, mouse_x, mouse_y);
}
