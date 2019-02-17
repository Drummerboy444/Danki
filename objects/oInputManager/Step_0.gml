#region Check left ability
if (InputManager_CHECK_DOWN(map_keyBindings[? Enum_Actions.LEFT_ABILITY])){
	with (oPlayer) {
		ChannelService_Channel(id_channelService, Enum_Abilities.CHANNEL_TEST, 0, 0, 120);
	}
}
#endregion
#region Check right ability
if (InputManager_CHECK_DOWN(map_keyBindings[? Enum_Actions.RIGHT_ABILITY])){
	show_debug_message("pressing right");
}
#endregion
